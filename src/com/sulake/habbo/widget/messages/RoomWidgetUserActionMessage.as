package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_708:String = "RWUAM_WHISPER_USER";
      
      public static const const_719:String = "RWUAM_IGNORE_USER";
      
      public static const const_809:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_498:String = "RWUAM_KICK_USER";
      
      public static const const_643:String = "RWUAM_BAN_USER";
      
      public static const const_703:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_665:String = "RWUAM_RESPECT_USER";
      
      public static const const_786:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_647:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_657:String = "RWUAM_START_TRADING";
      
      public static const const_752:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_414:String = "RWUAM_KICK_BOT";
      
      public static const const_739:String = "RWUAM_REPORT";
      
      public static const const_537:String = "RWUAM_PICKUP_PET";
      
      public static const const_1260:String = "RWUAM_TRAIN_PET";
      
      public static const const_533:String = " RWUAM_RESPECT_PET";
      
      public static const const_350:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
