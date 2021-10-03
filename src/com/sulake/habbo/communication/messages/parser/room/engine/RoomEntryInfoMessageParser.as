package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1474:Boolean;
      
      private var var_1984:int;
      
      private var var_399:Boolean;
      
      private var var_965:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1474;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_1984;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_965;
      }
      
      public function get owner() : Boolean
      {
         return this.var_399;
      }
      
      public function flush() : Boolean
      {
         if(this.var_965 != null)
         {
            this.var_965.dispose();
            this.var_965 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1474 = param1.readBoolean();
         if(this.var_1474)
         {
            this.var_1984 = param1.readInteger();
            this.var_399 = param1.readBoolean();
         }
         else
         {
            this.var_965 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
