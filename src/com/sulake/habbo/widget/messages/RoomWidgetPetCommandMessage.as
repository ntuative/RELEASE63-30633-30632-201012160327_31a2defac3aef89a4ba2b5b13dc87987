package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_672:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_615:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1496:int = 0;
      
      private var var_162:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1496 = param2;
         this.var_162 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1496;
      }
      
      public function get value() : String
      {
         return this.var_162;
      }
   }
}
