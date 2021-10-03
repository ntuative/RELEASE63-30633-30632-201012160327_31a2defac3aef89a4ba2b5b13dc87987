package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1344:IID;
      
      private var var_1711:String;
      
      private var var_107:IUnknown;
      
      private var var_703:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1344 = param1;
         this.var_1711 = getQualifiedClassName(this.var_1344);
         this.var_107 = param2;
         this.var_703 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1344;
      }
      
      public function get iis() : String
      {
         return this.var_1711;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_107;
      }
      
      public function get references() : uint
      {
         return this.var_703;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_107 == null;
      }
      
      public function dispose() : void
      {
         this.var_1344 = null;
         this.var_1711 = null;
         this.var_107 = null;
         this.var_703 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_703;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_703) : uint(0);
      }
   }
}
