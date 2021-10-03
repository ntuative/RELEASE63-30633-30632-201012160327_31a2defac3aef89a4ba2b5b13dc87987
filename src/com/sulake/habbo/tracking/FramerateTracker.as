package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1436:int;
      
      private var var_1915:int;
      
      private var var_943:int;
      
      private var var_420:Number;
      
      private var var_1914:Boolean;
      
      private var var_1916:int;
      
      private var var_1435:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1915 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_1916 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_1914 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_943;
         if(this.var_943 == 1)
         {
            this.var_420 = param1;
            this.var_1436 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_943);
            this.var_420 = this.var_420 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_1914 && param3 - this.var_1436 >= this.var_1915 && this.var_1435 < this.var_1916)
         {
            _loc5_ = 1000 / this.var_420;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1435;
            this.var_1436 = param3;
            this.var_943 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
