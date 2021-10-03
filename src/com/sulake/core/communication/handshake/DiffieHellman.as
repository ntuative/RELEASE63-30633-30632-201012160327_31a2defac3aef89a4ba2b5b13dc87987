package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_835:BigInteger;
      
      private var var_1935:BigInteger;
      
      private var var_1447:BigInteger;
      
      private var var_1934:BigInteger;
      
      private var var_1189:BigInteger;
      
      private var var_1446:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1189 = param1;
         this.var_1446 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1189.toString() + ",generator: " + this.var_1446.toString() + ",secret: " + param1);
         this.var_835 = new BigInteger();
         this.var_835.fromRadix(param1,param2);
         this.var_1935 = this.var_1446.modPow(this.var_835,this.var_1189);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1447 = new BigInteger();
         this.var_1447.fromRadix(param1,param2);
         this.var_1934 = this.var_1447.modPow(this.var_835,this.var_1189);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_1935.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_1934.toRadix(param1);
      }
   }
}
