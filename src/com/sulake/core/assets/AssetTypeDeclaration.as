package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2502:String;
      
      private var var_2503:Class;
      
      private var var_2501:Class;
      
      private var var_1772:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2502 = param1;
         this.var_2503 = param2;
         this.var_2501 = param3;
         if(rest == null)
         {
            this.var_1772 = new Array();
         }
         else
         {
            this.var_1772 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2502;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2503;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2501;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1772;
      }
   }
}
