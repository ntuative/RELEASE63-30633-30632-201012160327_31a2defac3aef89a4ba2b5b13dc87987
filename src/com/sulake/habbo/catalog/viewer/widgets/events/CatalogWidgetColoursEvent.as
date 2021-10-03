package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1411:Array;
      
      private var var_2128:String;
      
      private var var_2129:String;
      
      private var var_2127:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1411 = param1;
         this.var_2128 = param2;
         this.var_2129 = param3;
         this.var_2127 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1411;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2128;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2129;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2127;
      }
   }
}
