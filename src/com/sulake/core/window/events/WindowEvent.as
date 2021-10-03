package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1361:String = "WE_CREATE";
      
      public static const const_1308:String = "WE_CREATED";
      
      public static const const_1458:String = "WE_DESTROY";
      
      public static const const_284:String = "WE_DESTROYED";
      
      public static const const_1382:String = "WE_OPEN";
      
      public static const const_1507:String = "WE_OPENED";
      
      public static const const_1414:String = "WE_CLOSE";
      
      public static const const_1304:String = "WE_CLOSED";
      
      public static const const_1509:String = "WE_FOCUS";
      
      public static const const_164:String = "WE_FOCUSED";
      
      public static const const_1485:String = "WE_UNFOCUS";
      
      public static const const_1334:String = "WE_UNFOCUSED";
      
      public static const const_1421:String = "WE_ACTIVATE";
      
      public static const const_1404:String = "WE_ACTIVATED";
      
      public static const const_1474:String = "WE_DEACTIVATE";
      
      public static const const_917:String = "WE_DEACTIVATED";
      
      public static const const_417:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_794:String = "WE_UNSELECT";
      
      public static const const_650:String = "WE_UNSELECTED";
      
      public static const const_1597:String = "WE_ATTACH";
      
      public static const const_1776:String = "WE_ATTACHED";
      
      public static const const_1722:String = "WE_DETACH";
      
      public static const const_1753:String = "WE_DETACHED";
      
      public static const const_1467:String = "WE_LOCK";
      
      public static const const_1435:String = "WE_LOCKED";
      
      public static const const_1505:String = "WE_UNLOCK";
      
      public static const const_1287:String = "WE_UNLOCKED";
      
      public static const const_661:String = "WE_ENABLE";
      
      public static const const_297:String = "WE_ENABLED";
      
      public static const const_619:String = "WE_DISABLE";
      
      public static const const_252:String = "WE_DISABLED";
      
      public static const const_1354:String = "WE_RELOCATE";
      
      public static const const_373:String = "WE_RELOCATED";
      
      public static const const_1363:String = "WE_RESIZE";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1416:String = "WE_MINIMIZE";
      
      public static const const_1425:String = "WE_MINIMIZED";
      
      public static const const_1469:String = "WE_MAXIMIZE";
      
      public static const const_1453:String = "WE_MAXIMIZED";
      
      public static const const_1345:String = "WE_RESTORE";
      
      public static const const_1470:String = "WE_RESTORED";
      
      public static const const_1660:String = "WE_ARRANGE";
      
      public static const const_1771:String = "WE_ARRANGED";
      
      public static const const_95:String = "WE_UPDATE";
      
      public static const const_1588:String = "WE_UPDATED";
      
      public static const const_1759:String = "WE_CHILD_RELOCATE";
      
      public static const const_447:String = "WE_CHILD_RELOCATED";
      
      public static const const_1635:String = "WE_CHILD_RESIZE";
      
      public static const const_275:String = "WE_CHILD_RESIZED";
      
      public static const const_1631:String = "WE_CHILD_REMOVE";
      
      public static const const_413:String = "WE_CHILD_REMOVED";
      
      public static const const_1791:String = "WE_PARENT_RELOCATE";
      
      public static const const_1666:String = "WE_PARENT_RELOCATED";
      
      public static const const_1632:String = "WE_PARENT_RESIZE";
      
      public static const const_1319:String = "WE_PARENT_RESIZED";
      
      public static const const_186:String = "WE_OK";
      
      public static const const_742:String = "WE_CANCEL";
      
      public static const const_115:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_467:String = "WE_SCROLL";
      
      public static const const_153:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1881:IWindow;
      
      protected var var_1882:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1881 = param3;
         this.var_1882 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1881;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1882 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1882;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
