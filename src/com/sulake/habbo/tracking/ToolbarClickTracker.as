package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1181:IHabboTracking;
      
      private var var_1499:Boolean = false;
      
      private var var_2053:int = 0;
      
      private var var_1520:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1181 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1181 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1499 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2053 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1499)
         {
            return;
         }
         ++this.var_1520;
         if(this.var_1520 <= this.var_2053)
         {
            this.var_1181.track("toolbar",param1);
         }
      }
   }
}
