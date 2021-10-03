package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_379:IFriendListTabsDeps;
      
      private var var_359:Array;
      
      private var var_1601:FriendListTab;
      
      private var var_1026:int = 200;
      
      private var var_2186:int = 200;
      
      private var var_1600:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         this.var_359 = new Array();
         super();
         this.var_379 = param1;
         this.var_359.push(new FriendListTab(this.var_379.getFriendList(),FriendListTab.const_88,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         this.var_359.push(new FriendListTab(this.var_379.getFriendList(),FriendListTab.const_87,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         this.var_359.push(new FriendListTab(this.var_379.getFriendList(),FriendListTab.const_325,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         this.toggleSelected(null);
      }
      
      public function getTabs() : Array
      {
         return this.var_359;
      }
      
      public function findTab(param1:int) : FriendListTab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_359)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_359)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function findSelectedTab() : FriendListTab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_359)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = this.findSelectedTab();
         if(_loc2_ == null)
         {
            this.var_1026 = this.var_2186;
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            this.var_2186 = this.var_1026;
            this.var_1026 = 0;
            this.clearSelections();
         }
         else
         {
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
      }
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = this.findSelectedTab();
         this.clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            this.var_1601 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(this.var_1601 != null)
         {
            return this.var_1601;
         }
         return this.var_359[0];
      }
      
      public function get tabContentHeight() : int
      {
         return this.var_1026;
      }
      
      public function get method_2() : int
      {
         return this.var_1600;
      }
      
      public function get tabContentWidth() : int
      {
         return this.var_1600 - 2;
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         this.var_1026 = param1;
      }
      
      public function set method_2(param1:int) : void
      {
         this.var_1600 = param1;
      }
   }
}
