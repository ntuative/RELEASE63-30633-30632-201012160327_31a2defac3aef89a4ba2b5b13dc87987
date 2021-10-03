package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2029:int;
      
      private var var_1725:String;
      
      private var var_2109:String;
      
      private var var_2114:Boolean;
      
      private var var_2113:Boolean;
      
      private var var_2110:int;
      
      private var var_2112:String;
      
      private var var_2111:String;
      
      private var var_1724:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2029 = param1.readInteger();
         this.var_1725 = param1.readString();
         this.var_2109 = param1.readString();
         this.var_2114 = param1.readBoolean();
         this.var_2113 = param1.readBoolean();
         param1.readString();
         this.var_2110 = param1.readInteger();
         this.var_2112 = param1.readString();
         this.var_2111 = param1.readString();
         this.var_1724 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2029;
      }
      
      public function get avatarName() : String
      {
         return this.var_1725;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2109;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2114;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2113;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2110;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2112;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2111;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
   }
}
