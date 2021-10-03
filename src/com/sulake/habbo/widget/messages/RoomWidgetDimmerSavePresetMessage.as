package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_658:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2074:int;
      
      private var var_2073:int;
      
      private var _color:uint;
      
      private var var_1080:int;
      
      private var var_2511:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_658);
         this.var_2074 = param1;
         this.var_2073 = param2;
         this._color = param3;
         this.var_1080 = param4;
         this.var_2511 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2074;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2073;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1080;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2511;
      }
   }
}
