package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1761:int = 0;
      
      public static const const_1383:int = 1;
      
      public static const const_1484:int = 2;
      
      public static const const_1752:int = 3;
      
      public static const const_1720:int = 4;
      
      public static const const_1812:int = 5;
      
      public static const const_1415:int = 10;
      
      public static const const_1665:int = 11;
      
      public static const const_1726:int = 12;
      
      public static const const_1811:int = 13;
      
      public static const const_1618:int = 16;
      
      public static const const_1605:int = 17;
      
      public static const const_1768:int = 18;
      
      public static const const_1609:int = 19;
      
      public static const const_1748:int = 20;
      
      public static const const_1767:int = 22;
      
      public static const const_1642:int = 23;
      
      public static const const_1756:int = 24;
      
      public static const const_1775:int = 25;
      
      public static const const_1622:int = 26;
      
      public static const const_1766:int = 27;
      
      public static const const_1593:int = 28;
      
      public static const const_1645:int = 29;
      
      public static const const_1747:int = 100;
      
      public static const const_1623:int = 101;
      
      public static const const_1612:int = 102;
      
      public static const const_1643:int = 103;
      
      public static const const_1713:int = 104;
      
      public static const const_1610:int = 105;
      
      public static const const_1762:int = 106;
      
      public static const const_1652:int = 107;
      
      public static const const_1731:int = 108;
      
      public static const const_1755:int = 109;
      
      public static const const_1718:int = 110;
      
      public static const const_1800:int = 111;
      
      public static const const_1698:int = 112;
      
      public static const const_1804:int = 113;
      
      public static const const_1745:int = 114;
      
      public static const const_1620:int = 115;
      
      public static const const_1786:int = 116;
      
      public static const const_1783:int = 117;
      
      public static const const_1694:int = 118;
      
      public static const const_1636:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1383:
            case const_1415:
               return "banned";
            case const_1484:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
