package com.sulake.habbo.friendlist.domain
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.friendlist.HabboFriendList;
   import com.sulake.habbo.friendlist.ITabView;
   
   public class FriendListTab
   {
      
      public static const const_88:int = 1;
      
      public static const const_87:int = 2;
      
      public static const const_325:int = 3;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _footerName:String;
      
      private var var_2240:String;
      
      private var var_1632:ITabView;
      
      private var var_1292:Boolean;
      
      private var var_182:Boolean;
      
      private var _view:IWindowContainer;
      
      public function FriendListTab(param1:HabboFriendList, param2:int, param3:ITabView, param4:String, param5:String, param6:String)
      {
         super();
         this._id = param2;
         this._name = param4;
         this.var_1632 = param3;
         this._footerName = param5;
         this.var_2240 = param6;
         this.var_1632.init(param1);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_1292 = false;
         }
         this.var_182 = param1;
      }
      
      public function setNewMessageArrived(param1:Boolean) : void
      {
         if(this.selected)
         {
            this.var_1292 = false;
         }
         else
         {
            this.var_1292 = param1;
         }
      }
      
      public function get newMessageArrived() : Boolean
      {
         return this.var_1292;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get footerName() : String
      {
         return this._footerName;
      }
      
      public function get headerPicName() : String
      {
         return this.var_2240;
      }
      
      public function get selected() : Boolean
      {
         return this.var_182;
      }
      
      public function get tabView() : ITabView
      {
         return this.var_1632;
      }
      
      public function get view() : IWindowContainer
      {
         return this._view;
      }
      
      public function set view(param1:IWindowContainer) : void
      {
         this._view = param1;
      }
   }
}