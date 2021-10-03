package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var _toolbar:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_285:IHabboCommunicationManager;
      
      private var var_925:IHabboLocalizationManager;
      
      private var var_924:IHabboConfigurationManager;
      
      private var var_1147:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_61:HelpUI;
      
      private var var_169:TutorialUI;
      
      private var var_745:HotelMergeUI;
      
      private var var_923:RegistrationUI;
      
      private var var_1413:CallForHelpData;
      
      private var var_2585:UserRegistry;
      
      private var var_1931:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1413 = new CallForHelpData();
         this.var_2585 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1147 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_1931 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_1931;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1413;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2585;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_925;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_169;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_745;
      }
      
      override public function dispose() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.dispose();
            this.var_61 = null;
         }
         if(this.var_169 != null)
         {
            this.var_169.dispose();
            this.var_169 = null;
         }
         if(this.var_745)
         {
            this.var_745.dispose();
            this.var_745 = null;
         }
         if(this.var_923 != null)
         {
            this.var_923.dispose();
            this.var_923 = null;
         }
         if(this.var_1147 != null)
         {
            this.var_1147.dispose();
            this.var_1147 = null;
         }
         this._incomingMessages = null;
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this.var_925)
         {
            this.var_925.release(new IIDHabboLocalizationManager());
            this.var_925 = null;
         }
         if(this.var_285)
         {
            this.var_285.release(new IIDHabboCommunicationManager());
            this.var_285 = null;
         }
         if(this.var_924)
         {
            this.var_924.release(new IIDHabboConfigurationManager());
            this.var_924 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1147;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_285 != null && param1 != null)
         {
            this.var_285.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_924 == null)
         {
            return param1;
         }
         return this.var_924.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1413.reportedUserId = param1;
         this.var_1413.reportedUserName = param2;
         this.var_61.showUI(HabboHelpViewEnum.const_369);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_61 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_61.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_61 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_61 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_925,this._toolbar);
         }
         return this.var_61 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_169 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_169 = new TutorialUI(this);
         }
         return this.var_169 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_169 != null)
         {
            this.var_169.dispose();
            this.var_169 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_745)
         {
            this.var_745 = new HotelMergeUI(this);
         }
         this.var_745.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_923)
         {
            this.var_923 = new RegistrationUI(this);
         }
         this.var_923.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_169 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_169.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_285 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_285);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_925 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_924 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_85,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_89,this.onRoomSessionEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_68,this.onHabboToolbarEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_39,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_85:
               if(this.var_61 != null)
               {
                  this.var_61.setRoomSessionStatus(true);
               }
               if(this.var_169 != null)
               {
                  this.var_169.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_89:
               if(this.var_61 != null)
               {
                  this.var_61.setRoomSessionStatus(false);
               }
               if(this.var_169 != null)
               {
                  this.var_169.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this._toolbar != null)
         {
            this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_103,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_68)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_39)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
