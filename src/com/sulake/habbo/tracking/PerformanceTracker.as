package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var _configuration:IHabboConfigurationManager = null;
      
      private var var_514:int = 0;
      
      private var var_420:Number = 0;
      
      private var var_2644:Array;
      
      private var var_1213:String = "";
      
      private var var_1485:String = "";
      
      private var var_1964:String = "";
      
      private var var_1965:String = "";
      
      private var var_1468:Boolean = false;
      
      private var var_1484:GarbageMonitor = null;
      
      private var var_1215:int = 0;
      
      private var var_1993:Boolean;
      
      private var var_1483:int = 1000;
      
      private var var_1214:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1436:int = 0;
      
      private var var_1486:int = 10;
      
      private var var_1212:int = 0;
      
      private var var_1995:Number = 0.15;
      
      private var var_1992:Boolean = true;
      
      private var var_1994:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2644 = [];
         super();
         this.var_1485 = Capabilities.version;
         this.var_1964 = Capabilities.os;
         this.var_1468 = Capabilities.isDebugger;
         this.var_1213 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1213 == null)
         {
            this.var_1213 = "unknown";
         }
         this.var_1484 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1436 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1485;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_420;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1483 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1486 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this._configuration = param1;
         this._reportInterval = int(this._configuration.getKey("performancetest.interval","60"));
         this.var_1483 = int(this._configuration.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1486 = int(this._configuration.getKey("performancetest.reportlimit","10"));
         this.var_1995 = Number(this._configuration.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_1992 = Boolean(int(this._configuration.getKey("performancetest.distribution.enabled","1")));
         this.var_1993 = Boolean(this._configuration.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1484.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1484.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_1993)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1215;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1483)
         {
            ++this.var_1214;
            _loc3_ = true;
         }
         else
         {
            ++this.var_514;
            if(this.var_514 <= 1)
            {
               this.var_420 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_514);
               this.var_420 = this.var_420 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1436 > this._reportInterval * 1000 && this.var_1212 < this.var_1486)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_420);
            _loc6_ = true;
            if(this.var_1992 && this.var_1212 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_1994,this.var_420);
               if(_loc7_ < this.var_1995)
               {
                  _loc6_ = false;
               }
            }
            this.var_1436 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_1994 = this.var_420;
               if(this.sendReport(param2))
               {
                  ++this.var_1212;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1213,this.var_1485,this.var_1964,this.var_1965,this.var_1468,_loc5_,_loc4_,this.var_1215,this.var_420,this.var_1214);
            this._connection.send(_loc2_);
            this.var_1215 = 0;
            this.var_420 = 0;
            this.var_514 = 0;
            this.var_1214 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
