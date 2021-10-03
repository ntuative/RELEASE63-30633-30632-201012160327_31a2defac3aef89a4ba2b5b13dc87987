package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1962:int = 0;
      
      private var var_1213:String = "";
      
      private var var_1485:String = "";
      
      private var var_1964:String = "";
      
      private var var_1965:String = "";
      
      private var var_1468:int = 0;
      
      private var var_1963:int = 0;
      
      private var var_1966:int = 0;
      
      private var var_1215:int = 0;
      
      private var var_1961:int = 0;
      
      private var var_1214:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1962 = param1;
         this.var_1213 = param2;
         this.var_1485 = param3;
         this.var_1964 = param4;
         this.var_1965 = param5;
         if(param6)
         {
            this.var_1468 = 1;
         }
         else
         {
            this.var_1468 = 0;
         }
         this.var_1963 = param7;
         this.var_1966 = param8;
         this.var_1215 = param9;
         this.var_1961 = param10;
         this.var_1214 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1962,this.var_1213,this.var_1485,this.var_1964,this.var_1965,this.var_1468,this.var_1963,this.var_1966,this.var_1215,this.var_1961,this.var_1214];
      }
   }
}
