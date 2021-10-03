package com.sulake.habbo.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class PollSession implements IDisposable
   {
       
      
      private var _id:int = -1;
      
      private var _disposed:Boolean = false;
      
      private var var_1238:int = 0;
      
      private var var_1239:Array;
      
      private var var_944:PollWidget;
      
      private var var_219:IPollDialog;
      
      private var var_1517:String = "";
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         this._id = param1;
         this.var_944 = param2;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1238;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1238 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1239;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1239 = param1;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_219)
            {
               this.var_219.dispose();
               this.var_219 = null;
            }
            this.var_944 = null;
            this._disposed = true;
         }
      }
      
      public function showOffer(param1:String) : void
      {
         this.hideOffer();
         this.var_219 = new PollOfferDialog(this._id,param1,this.var_944);
      }
      
      public function hideOffer() : void
      {
         if(this.var_219 is PollOfferDialog)
         {
            if(!this.var_219.disposed)
            {
               this.var_219.dispose();
            }
            this.var_219 = null;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         this.hideOffer();
         this.hideContent();
         this.var_1517 = param2;
         this.var_219 = new PollContentDialog(this._id,param1,param3,this.var_944);
      }
      
      public function hideContent() : void
      {
         if(this.var_219 is PollContentDialog)
         {
            if(!this.var_219.disposed)
            {
               this.var_219.dispose();
            }
            this.var_219 = null;
         }
      }
      
      public function showThanks() : void
      {
         this.var_944.windowManager.alert("${poll_thanks_title}",this.var_1517,0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
   }
}
