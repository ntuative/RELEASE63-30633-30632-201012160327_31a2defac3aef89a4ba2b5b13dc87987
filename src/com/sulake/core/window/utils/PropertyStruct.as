package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_169:String = "hex";
      
      public static const const_52:String = "int";
      
      public static const const_279:String = "uint";
      
      public static const const_236:String = "Number";
      
      public static const const_51:String = "Boolean";
      
      public static const const_93:String = "String";
      
      public static const const_207:String = "Point";
      
      public static const const_209:String = "Rectangle";
      
      public static const const_149:String = "Array";
      
      public static const const_244:String = "Map";
       
      
      private var var_581:String;
      
      private var var_162:Object;
      
      private var _type:String;
      
      private var var_2429:Boolean;
      
      private var var_2675:Boolean;
      
      private var var_2430:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_581 = param1;
         this.var_162 = param2;
         this._type = param3;
         this.var_2429 = param4;
         this.var_2675 = param3 == const_244 || param3 == const_149 || param3 == const_207 || param3 == const_209;
         this.var_2430 = param5;
      }
      
      public function get key() : String
      {
         return this.var_581;
      }
      
      public function get value() : Object
      {
         return this.var_162;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2429;
      }
      
      public function get range() : Array
      {
         return this.var_2430;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_169:
               return "0x" + uint(this.var_162).toString(16);
            case const_51:
               return Boolean(this.var_162) == true ? "true" : "false";
            case const_207:
               return "Point(" + Point(this.var_162).x + ", " + Point(this.var_162).y + ")";
            case const_209:
               return "Rectangle(" + Rectangle(this.var_162).x + ", " + Rectangle(this.var_162).y + ", " + Rectangle(this.var_162).width + ", " + Rectangle(this.var_162).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_244:
               _loc3_ = this.var_162 as Map;
               _loc1_ = "<var key=\"" + this.var_581 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_149:
               _loc4_ = this.var_162 as Array;
               _loc1_ = "<var key=\"" + this.var_581 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_207:
               _loc5_ = this.var_162 as Point;
               _loc1_ = "<var key=\"" + this.var_581 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_209:
               _loc6_ = this.var_162 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_581 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_52 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_169:
               _loc1_ = "<var key=\"" + this.var_581 + "\" value=\"" + "0x" + uint(this.var_162).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_581 + "\" value=\"" + this.var_162 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
