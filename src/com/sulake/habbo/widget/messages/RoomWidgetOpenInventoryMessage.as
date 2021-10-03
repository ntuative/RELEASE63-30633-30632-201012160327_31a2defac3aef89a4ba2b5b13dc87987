package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_817:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1086:String = "inventory_effects";
      
      public static const const_1014:String = "inventory_badges";
      
      public static const const_1403:String = "inventory_clothes";
      
      public static const const_1441:String = "inventory_furniture";
       
      
      private var var_2222:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_817);
         this.var_2222 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2222;
      }
   }
}
