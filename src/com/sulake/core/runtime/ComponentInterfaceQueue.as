package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1636:IID;
      
      private var var_645:Boolean;
      
      private var var_1043:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1636 = param1;
         this.var_1043 = new Array();
         this.var_645 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1636;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_645;
      }
      
      public function get receivers() : Array
      {
         return this.var_1043;
      }
      
      public function dispose() : void
      {
         if(!this.var_645)
         {
            this.var_645 = true;
            this.var_1636 = null;
            while(this.var_1043.length > 0)
            {
               this.var_1043.pop();
            }
            this.var_1043 = null;
         }
      }
   }
}
