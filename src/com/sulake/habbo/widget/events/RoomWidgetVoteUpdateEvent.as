package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_125:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_137:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1019:String;
      
      private var var_1240:Array;
      
      private var var_1142:Array;
      
      private var var_1819:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1019 = param2;
         this.var_1240 = param3;
         this.var_1142 = param4;
         if(this.var_1142 == null)
         {
            this.var_1142 = [];
         }
         this.var_1819 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1019;
      }
      
      public function get choices() : Array
      {
         return this.var_1240.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1142.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1819;
      }
   }
}
