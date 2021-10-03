package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1301:String = "WN_CRETAE";
      
      public static const const_1473:String = "WN_CREATED";
      
      public static const const_949:String = "WN_DESTROY";
      
      public static const const_981:String = "WN_DESTROYED";
      
      public static const const_1083:String = "WN_OPEN";
      
      public static const const_901:String = "WN_OPENED";
      
      public static const const_1069:String = "WN_CLOSE";
      
      public static const const_1100:String = "WN_CLOSED";
      
      public static const const_911:String = "WN_FOCUS";
      
      public static const const_1004:String = "WN_FOCUSED";
      
      public static const const_950:String = "WN_UNFOCUS";
      
      public static const const_972:String = "WN_UNFOCUSED";
      
      public static const const_895:String = "WN_ACTIVATE";
      
      public static const const_378:String = "WN_ACTVATED";
      
      public static const const_1065:String = "WN_DEACTIVATE";
      
      public static const const_971:String = "WN_DEACTIVATED";
      
      public static const const_433:String = "WN_SELECT";
      
      public static const const_321:String = "WN_SELECTED";
      
      public static const const_805:String = "WN_UNSELECT";
      
      public static const const_588:String = "WN_UNSELECTED";
      
      public static const const_995:String = "WN_LOCK";
      
      public static const const_1049:String = "WN_LOCKED";
      
      public static const const_993:String = "WN_UNLOCK";
      
      public static const const_1002:String = "WN_UNLOCKED";
      
      public static const const_1091:String = "WN_ENABLE";
      
      public static const const_648:String = "WN_ENABLED";
      
      public static const const_983:String = "WN_DISABLE";
      
      public static const const_762:String = "WN_DISABLED";
      
      public static const const_674:String = "WN_RESIZE";
      
      public static const const_167:String = "WN_RESIZED";
      
      public static const const_1094:String = "WN_RELOCATE";
      
      public static const const_505:String = "WN_RELOCATED";
      
      public static const const_912:String = "WN_MINIMIZE";
      
      public static const const_919:String = "WN_MINIMIZED";
      
      public static const const_1071:String = "WN_MAXIMIZE";
      
      public static const const_986:String = "WN_MAXIMIZED";
      
      public static const const_1015:String = "WN_RESTORE";
      
      public static const const_974:String = "WN_RESTORED";
      
      public static const const_1661:String = "WN_ARRANGE";
      
      public static const const_1732:String = "WN_ARRANGED";
      
      public static const const_1616:String = "WN_UPDATE";
      
      public static const const_1663:String = "WN_UPDATED";
      
      public static const const_355:String = "WN_CHILD_ADDED";
      
      public static const const_566:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_268:String = "WN_CHILD_RELOCATED";
      
      public static const const_250:String = "WN_CHILD_ACTIVATED";
      
      public static const const_541:String = "WN_PARENT_ADDED";
      
      public static const const_1039:String = "WN_PARENT_REMOVED";
      
      public static const const_395:String = "WN_PARENT_RESIZED";
      
      public static const const_1098:String = "WN_PARENT_RELOCATED";
      
      public static const const_709:String = "WN_PARENT_ACTIVATED";
      
      public static const const_487:String = "WN_STATE_UPDATED";
      
      public static const const_441:String = "WN_STYLE_UPDATED";
      
      public static const const_459:String = "WN_PARAM_UPDATED";
      
      public static const const_1629:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1881,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
