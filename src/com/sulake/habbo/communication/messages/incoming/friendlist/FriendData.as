package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_867:int;
      
      private var var_707:Boolean;
      
      private var var_1648:Boolean;
      
      private var var_584:String;
      
      private var var_1377:int;
      
      private var var_1763:String;
      
      private var var_1723:String;
      
      private var var_1724:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_867 = param1.readInteger();
         this.var_707 = param1.readBoolean();
         this.var_1648 = param1.readBoolean();
         this.var_584 = param1.readString();
         this.var_1377 = param1.readInteger();
         this.var_1763 = param1.readString();
         this.var_1723 = param1.readString();
         this.var_1724 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_867;
      }
      
      public function get online() : Boolean
      {
         return this.var_707;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1648;
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function get categoryId() : int
      {
         return this.var_1377;
      }
      
      public function get motto() : String
      {
         return this.var_1763;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1723;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
   }
}
