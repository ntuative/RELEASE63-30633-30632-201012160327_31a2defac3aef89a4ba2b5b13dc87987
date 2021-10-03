package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_663:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_645)
         {
            _structure = null;
            _assets = null;
            var_248 = null;
            var_254 = null;
            var_584 = null;
            var_506 = null;
            var_287 = null;
            if(!var_1172 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_752 = null;
            var_645 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_663[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_663[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_323:
               switch(_loc3_)
               {
                  case AvatarAction.const_612:
                  case AvatarAction.const_445:
                  case AvatarAction.const_339:
                  case AvatarAction.const_800:
                  case AvatarAction.const_328:
                  case AvatarAction.const_565:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_301:
            case AvatarAction.const_724:
            case AvatarAction.const_203:
            case AvatarAction.const_715:
            case AvatarAction.const_602:
            case AvatarAction.const_600:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
