package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_493:uint = 0;
      
      public static const const_1462:uint = 1;
      
      public static const const_1682:int = 0;
      
      public static const const_1641:int = 1;
      
      public static const const_1788:int = 2;
      
      public static const const_1715:int = 3;
      
      public static const const_1401:int = 4;
      
      public static const const_314:int = 5;
      
      public static var var_1419:IMouseCursor;
      
      public static var var_346:IEventQueue;
      
      private static var var_542:IEventProcessor;
      
      private static var var_1529:uint = const_493;
      
      private static var stage:Stage;
      
      private static var var_150:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2064:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_170:DisplayObjectContainer;
      
      protected var var_2683:Boolean = true;
      
      protected var var_1169:Error;
      
      protected var var_1886:int = -1;
      
      protected var var_1168:IInternalWindowServices;
      
      protected var var_1424:IWindowParser;
      
      protected var var_2625:IWindowFactory;
      
      protected var var_129:IDesktopWindow;
      
      protected var var_1423:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_504:Boolean = false;
      
      private var var_2065:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_150 = param2;
         this._localization = param4;
         this.var_170 = param5;
         this.var_1168 = new ServiceManager(this,param5);
         this.var_2625 = param3;
         this.var_1424 = new WindowParser(this);
         this.var_2064 = param7;
         if(!stage)
         {
            if(this.var_170 is Stage)
            {
               stage = this.var_170 as Stage;
            }
            else if(this.var_170.stage)
            {
               stage = this.var_170.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_129 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_170.addChild(this.var_129.getDisplayObject());
         this.var_170.doubleClickEnabled = true;
         this.var_170.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_150,this.var_129,this.var_129,null,this.var_2064);
         inputMode = const_493;
         this.var_1423 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1529;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_346)
         {
            if(var_346 is IDisposable)
            {
               IDisposable(var_346).dispose();
            }
         }
         if(var_542)
         {
            if(var_542 is IDisposable)
            {
               IDisposable(var_542).dispose();
            }
         }
         switch(value)
         {
            case const_493:
               var_346 = new MouseEventQueue(stage);
               var_542 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1462:
               var_346 = new TabletEventQueue(stage);
               var_542 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_493;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_170.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_170.removeChild(IGraphicContextHost(this.var_129).getGraphicContext(true) as DisplayObject);
            this.var_129.destroy();
            this.var_129 = null;
            this.var_1423.destroy();
            this.var_1423 = null;
            if(this.var_1168 is IDisposable)
            {
               IDisposable(this.var_1168).dispose();
            }
            this.var_1168 = null;
            this.var_1424.dispose();
            this.var_1424 = null;
            var_150 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1169;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1886;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1169 = param2;
         this.var_1886 = param1;
         if(this.var_2683)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1169 = null;
         this.var_1886 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1168;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1424;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2625;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_129;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1419 == null)
         {
            var_1419 = new MouseCursorControl(this.var_170);
         }
         return var_1419;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_129.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = Classes.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            this.handleError(WindowContext.const_1401,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1423;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_129,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_129)
         {
            this.var_129 = null;
         }
         if(param1.state != WindowState.const_515)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_150.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_504 = true;
         if(this.var_1169)
         {
            throw this.var_1169;
         }
         var_542.process(this._eventProcessorState,var_346);
         this.var_504 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2065 = true;
         var_150.update(param1);
         this.var_2065 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_129 != null && !this.var_129.disposed)
         {
            if(this.var_170 is Stage)
            {
               this.var_129.width = Stage(this.var_170).stageWidth;
               this.var_129.height = Stage(this.var_170).stageHeight;
            }
            else
            {
               this.var_129.width = this.var_170.width;
               this.var_129.height = this.var_170.height;
            }
         }
      }
   }
}
