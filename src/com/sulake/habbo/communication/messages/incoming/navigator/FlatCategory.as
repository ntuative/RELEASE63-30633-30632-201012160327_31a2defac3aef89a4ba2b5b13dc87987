package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1704:int;
      
      private var var_2303:String;
      
      private var var_350:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1704 = param1.readInteger();
         this.var_2303 = param1.readString();
         this.var_350 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1704;
      }
      
      public function get nodeName() : String
      {
         return this.var_2303;
      }
      
      public function get visible() : Boolean
      {
         return this.var_350;
      }
   }
}
