package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_846:String = "avatar";
      
      private static const const_545:Number = -0.01;
      
      private static const const_546:Number = -0.409;
      
      private static const const_844:int = 2;
      
      private static const const_1178:Array = [0,0,0];
      
      private static const const_1179:int = 3;
       
      
      private var var_549:AvatarVisualizationData = null;
      
      private var var_443:Map;
      
      private var var_439:Map;
      
      private var var_1016:int = 0;
      
      private var var_840:Boolean;
      
      private var var_584:String;
      
      private var var_867:String;
      
      private var var_1015:int = 0;
      
      private var var_548:BitmapDataAsset;
      
      private var var_793:BitmapDataAsset;
      
      private var var_1549:int = -1;
      
      private var var_1550:int = -1;
      
      private var var_1553:int = -1;
      
      private const const_845:int = 0;
      
      private const const_1558:int = 1;
      
      private const const_1555:int = 2;
      
      private const const_1556:int = 3;
      
      private const const_1177:int = 4;
      
      private var var_1467:int = -1;
      
      private var var_227:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1552:Boolean = false;
      
      private var var_1555:Boolean = false;
      
      private var var_1554:Boolean = false;
      
      private var var_1256:Boolean = false;
      
      private var var_790:Boolean = false;
      
      private var var_1257:int = 0;
      
      private var var_1254:int = 0;
      
      private var var_2131:int = 0;
      
      private var var_657:int = 0;
      
      private var var_655:int = 0;
      
      private var var_550:int = 0;
      
      private var var_1255:int = 0;
      
      private var var_1006:Boolean = false;
      
      private var var_1548:Boolean = false;
      
      private var var_1008:int = 0;
      
      private var var_656:int = 0;
      
      private var var_1551:Boolean = false;
      
      private var var_1007:int = 0;
      
      private var var_52:IAvatarImage = null;
      
      private var var_645:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_443 = new Map();
         this.var_439 = new Map();
         this.var_840 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_443 != null)
         {
            this.resetImages();
            this.var_443.dispose();
            this.var_439.dispose();
            this.var_443 = null;
         }
         this.var_549 = null;
         this.var_548 = null;
         this.var_793 = null;
         super.dispose();
         this.var_645 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_645;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_549 = param1 as AvatarVisualizationData;
         createSprites(this.const_1177);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_216)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_229) > 0 && param3);
            if(_loc5_ != this.var_1552)
            {
               this.var_1552 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_253) > 0;
            if(_loc5_ != this.var_1555)
            {
               this.var_1555 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_463) > 0;
            if(_loc5_ != this.var_1554)
            {
               this.var_1554 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_760) > 0 && param3);
            if(_loc5_ != this.var_1256)
            {
               this.var_1256 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_932) > 0;
            if(_loc5_ != this.var_790)
            {
               this.var_790 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_286);
            if(_loc6_ != this.var_1257)
            {
               this.var_1257 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_476);
            if(_loc7_ != this.var_227)
            {
               this.var_227 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_682);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1066);
            if(_loc6_ != this.var_1254)
            {
               this.var_1254 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_455);
            if(_loc6_ != this.var_657)
            {
               this.var_657 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_432);
            if(_loc6_ != this.var_655)
            {
               this.var_655 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_345);
            if(_loc6_ != this.var_550)
            {
               this.var_550 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_365);
            if(_loc6_ != this.var_1549)
            {
               this.var_1549 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_655 > 0 && param1.getNumber(RoomObjectVariableEnum.const_345) > 0)
            {
               if(this.var_550 != this.var_655)
               {
                  this.var_550 = this.var_655;
                  _loc4_ = true;
               }
            }
            else if(this.var_550 != 0)
            {
               this.var_550 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_678);
            if(_loc6_ != this.var_1008)
            {
               this.var_1008 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_961);
            if(_loc7_ != this.var_867)
            {
               this.var_867 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_159);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_216 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_584 != param1)
         {
            this.var_584 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_443)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_439)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_443.reset();
         this.var_439.reset();
         this.var_52 = null;
         _loc2_ = getSprite(this.const_845);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1256 = false;
         }
         if(this.var_227 == "sit" || this.var_227 == "lay")
         {
            this.var_1255 = param1 / 2;
         }
         else
         {
            this.var_1255 = 0;
         }
         this.var_1548 = false;
         this.var_1006 = false;
         if(this.var_227 == "lay")
         {
            this.var_1006 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1548 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_443.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_439.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_549.getAvatar(this.var_584,param1,this.var_867,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_443.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_439.length >= const_1179)
                  {
                     this.var_439.remove(this.var_439.getKeys().shift());
                  }
                  this.var_439.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_414 != param1.getUpdateID() || this.var_1467 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1549;
            if(this.var_227 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1550 || param4)
            {
               _loc5_ = true;
               this.var_1550 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_52.setDirectionAngle(AvatarSetType.const_32,_loc6_);
            }
            if(_loc7_ != this.var_1553 || param4)
            {
               _loc5_ = true;
               this.var_1553 = _loc7_;
               if(this.var_1553 != this.var_1550)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_52.setDirectionAngle(AvatarSetType.const_43,_loc7_);
               }
            }
            var_414 = param1.getUpdateID();
            this.var_1467 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1558);
         this.var_548 = null;
         if(this.var_227 == "mv" || this.var_227 == "std")
         {
            _loc2_.visible = true;
            if(this.var_548 == null || param1 != var_256)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_548 = this.var_52.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_548 = this.var_52.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_548 != null)
               {
                  _loc2_.asset = this.var_548.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_548 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_793 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1555);
         if(this.var_790)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_793 = this.var_549.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_793 = this.var_549.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_227 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_227 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_793 != null)
            {
               _loc2_.asset = this.var_793.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1556);
         if(this.var_1008 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_549.getAvatarRendererAsset("number_" + this.var_1008 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_549.getAvatarRendererAsset("number_" + this.var_1008 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_227 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_227 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_656 = 1;
               this.var_1551 = true;
               this.var_1007 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_656 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1556);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1551)
         {
            ++this.var_1007;
            if(this.var_1007 < 10)
            {
               return false;
            }
            if(this.var_656 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1007 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_656 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_656 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_656 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_656 = 0;
               this.var_1551 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_549 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_657;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_256 || this.var_52 == null)
         {
            if(_loc6_ != var_256)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_657)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_52 == null || _loc11_)
            {
               this.var_52 = this.getAvatarImage(_loc6_,this.var_657);
               if(this.var_52 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_845);
               if(_loc15_ && this.var_52 && this.var_52.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_52 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_52);
            var_256 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_840 || this.var_1015 > 0) && param3;
         if(_loc13_)
         {
            this.var_1015 = const_844;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1015;
            --this.var_1016;
            if(!(this.var_1016 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_52.updateAnimationByFrames(1);
            this.var_1016 = const_844;
            _loc17_ = this.var_52.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1178;
            }
            _loc16_ = getSprite(this.const_845);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_52.getImage(AvatarSetType.const_32,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1255;
               }
               if(this.var_1006)
               {
                  if(this.var_1548)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_546 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_545 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1555);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1006)
               {
                  _loc16_.relativeDepth = const_545 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_546 - 0.01 + _loc17_[2];
               }
            }
            this.var_840 = this.var_52.isAnimating();
            _loc18_ = this.const_1177;
            for each(_loc19_ in this.var_52.getSprites())
            {
               if(_loc19_.id == const_846)
               {
                  _loc16_ = getSprite(this.const_845);
                  _loc21_ = this.var_52.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_52.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_52.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_52.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_52.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_52.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_52.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_52.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_52.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_52.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1255;
                     if(this.var_1006)
                     {
                        _loc16_.relativeDepth = const_546 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_545 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_323,this.var_227,this._postureParameter);
         if(this.var_1257 > 0)
         {
            param1.appendAction(AvatarAction.const_298,AvatarAction.const_1376[this.var_1257]);
         }
         if(this.var_1254 > 0)
         {
            param1.appendAction(AvatarAction.const_724,this.var_1254);
         }
         if(this.var_2131 > 0)
         {
            param1.appendAction(AvatarAction.const_715,this.var_2131);
         }
         if(this.var_655 > 0)
         {
            param1.appendAction(AvatarAction.const_602,this.var_655);
         }
         if(this.var_550 > 0)
         {
            param1.appendAction(AvatarAction.const_600,this.var_550);
         }
         if(this.var_1552)
         {
            param1.appendAction(AvatarAction.const_295);
         }
         if(this.var_1554 || this.var_1256)
         {
            param1.appendAction(AvatarAction.const_396);
         }
         if(this.var_1555)
         {
            param1.appendAction(AvatarAction.const_203);
         }
         if(this.var_657 > 0)
         {
            param1.appendAction(AvatarAction.const_301,this.var_657);
         }
         param1.endActionAppends();
         this.var_840 = param1.isAnimating();
         var _loc2_:int = this.const_1177;
         for each(_loc3_ in this.var_52.getSprites())
         {
            if(_loc3_.id != const_846)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
