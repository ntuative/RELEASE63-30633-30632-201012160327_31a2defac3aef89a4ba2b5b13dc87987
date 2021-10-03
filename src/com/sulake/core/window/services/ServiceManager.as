package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2655:uint;
      
      private var var_128:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_220:IWindowContext;
      
      private var var_1004:IMouseDraggingService;
      
      private var var_1001:IMouseScalingService;
      
      private var var_1005:IMouseListenerService;
      
      private var var_1000:IFocusManagerService;
      
      private var var_1002:IToolTipAgentService;
      
      private var var_1003:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2655 = 0;
         this.var_128 = param2;
         this.var_220 = param1;
         this.var_1004 = new WindowMouseDragger(param2);
         this.var_1001 = new WindowMouseScaler(param2);
         this.var_1005 = new WindowMouseListener(param2);
         this.var_1000 = new FocusManager(param2);
         this.var_1002 = new WindowToolTipAgent(param2);
         this.var_1003 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1004 != null)
         {
            this.var_1004.dispose();
            this.var_1004 = null;
         }
         if(this.var_1001 != null)
         {
            this.var_1001.dispose();
            this.var_1001 = null;
         }
         if(this.var_1005 != null)
         {
            this.var_1005.dispose();
            this.var_1005 = null;
         }
         if(this.var_1000 != null)
         {
            this.var_1000.dispose();
            this.var_1000 = null;
         }
         if(this.var_1002 != null)
         {
            this.var_1002.dispose();
            this.var_1002 = null;
         }
         if(this.var_1003 != null)
         {
            this.var_1003.dispose();
            this.var_1003 = null;
         }
         this.var_128 = null;
         this.var_220 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1004;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1001;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1005;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1000;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1002;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1003;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
