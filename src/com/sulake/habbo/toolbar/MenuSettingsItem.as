package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2079:String;
      
      private var var_2343:Array;
      
      private var var_2344:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2079 = param1;
         this.var_2343 = param2;
         this.var_2344 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2079;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2343;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2344;
      }
   }
}
