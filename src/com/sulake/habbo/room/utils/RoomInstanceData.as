package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_698:TileHeightMap = null;
      
      private var var_1069:LegacyWallGeometry = null;
      
      private var var_1070:RoomCamera = null;
      
      private var var_696:SelectedRoomObjectData = null;
      
      private var var_697:SelectedRoomObjectData = null;
      
      private var var_2362:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1069 = new LegacyWallGeometry();
         this.var_1070 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_698;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_698 != null)
         {
            this.var_698.dispose();
         }
         this.var_698 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1069;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1070;
      }
      
      public function get worldType() : String
      {
         return this.var_2362;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2362 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_696;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_696 != null)
         {
            this.var_696.dispose();
         }
         this.var_696 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_697;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_697 != null)
         {
            this.var_697.dispose();
         }
         this.var_697 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_698 != null)
         {
            this.var_698.dispose();
            this.var_698 = null;
         }
         if(this.var_1069 != null)
         {
            this.var_1069.dispose();
            this.var_1069 = null;
         }
         if(this.var_1070 != null)
         {
            this.var_1070.dispose();
            this.var_1070 = null;
         }
         if(this.var_696 != null)
         {
            this.var_696.dispose();
            this.var_696 = null;
         }
         if(this.var_697 != null)
         {
            this.var_697.dispose();
            this.var_697 = null;
         }
      }
   }
}
