package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_329:int = 1;
      
      public static const const_218:int = 2;
      
      public static const const_291:int = 3;
      
      public static const const_326:int = 4;
      
      public static const const_251:int = 5;
      
      public static const const_347:int = 1;
      
      public static const const_748:int = 2;
      
      public static const const_789:int = 3;
      
      public static const const_738:int = 4;
      
      public static const const_205:int = 5;
      
      public static const const_618:int = 6;
      
      public static const const_636:int = 7;
      
      public static const const_211:int = 8;
      
      public static const const_336:int = 9;
      
      public static const const_1744:int = 10;
      
      public static const const_751:int = 11;
      
      public static const const_528:int = 12;
       
      
      private var var_359:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_359 = new Array();
         this.var_359.push(new Tab(this._navigator,const_329,const_528,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_494));
         this.var_359.push(new Tab(this._navigator,const_218,const_347,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_494));
         this.var_359.push(new Tab(this._navigator,const_326,const_751,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_898));
         this.var_359.push(new Tab(this._navigator,const_291,const_205,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_494));
         this.var_359.push(new Tab(this._navigator,const_251,const_211,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_655));
         this.setSelectedTab(const_329);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_326;
      }
      
      public function get tabs() : Array
      {
         return this.var_359;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
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
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_359)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
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
   }
}
