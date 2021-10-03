package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1047:int = 1;
      
      public static const const_811:int = 2;
      
      public static const const_796:int = 3;
      
      public static const const_1433:int = 4;
       
      
      private var _index:int;
      
      private var var_2489:String;
      
      private var var_2486:String;
      
      private var var_2488:Boolean;
      
      private var var_2490:String;
      
      private var var_852:String;
      
      private var var_2487:int;
      
      private var var_2197:int;
      
      private var _type:int;
      
      private var var_1951:String;
      
      private var var_900:GuestRoomData;
      
      private var var_901:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2489 = param1.readString();
         this.var_2486 = param1.readString();
         this.var_2488 = param1.readInteger() == 1;
         this.var_2490 = param1.readString();
         this.var_852 = param1.readString();
         this.var_2487 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1047)
         {
            this.var_1951 = param1.readString();
         }
         else if(this._type == const_796)
         {
            this.var_901 = new PublicRoomData(param1);
         }
         else if(this._type == const_811)
         {
            this.var_900 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_900 != null)
         {
            this.var_900.dispose();
            this.var_900 = null;
         }
         if(this.var_901 != null)
         {
            this.var_901.dispose();
            this.var_901 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2489;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2486;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2488;
      }
      
      public function get picText() : String
      {
         return this.var_2490;
      }
      
      public function get picRef() : String
      {
         return this.var_852;
      }
      
      public function get folderId() : int
      {
         return this.var_2487;
      }
      
      public function get tag() : String
      {
         return this.var_1951;
      }
      
      public function get userCount() : int
      {
         return this.var_2197;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_900;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_901;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1047)
         {
            return 0;
         }
         if(this.type == const_811)
         {
            return this.var_900.maxUserCount;
         }
         if(this.type == const_796)
         {
            return this.var_901.maxUsers;
         }
         return 0;
      }
   }
}
