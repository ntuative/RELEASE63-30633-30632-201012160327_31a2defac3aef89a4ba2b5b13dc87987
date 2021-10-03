package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_711;
         param1["bitmap"] = const_660;
         param1["border"] = const_729;
         param1["border_notify"] = const_1367;
         param1["button"] = const_529;
         param1["button_thick"] = const_591;
         param1["button_icon"] = const_1394;
         param1["button_group_left"] = const_702;
         param1["button_group_center"] = const_575;
         param1["button_group_right"] = const_649;
         param1["canvas"] = const_804;
         param1["checkbox"] = const_784;
         param1["closebutton"] = const_1040;
         param1["container"] = const_381;
         param1["container_button"] = const_757;
         param1["display_object_wrapper"] = const_691;
         param1["dropmenu"] = const_450;
         param1["dropmenu_item"] = const_411;
         param1["frame"] = const_374;
         param1["frame_notify"] = const_1419;
         param1["header"] = const_580;
         param1["icon"] = const_1000;
         param1["itemgrid"] = const_1044;
         param1["itemgrid_horizontal"] = const_412;
         param1["itemgrid_vertical"] = const_704;
         param1["itemlist"] = const_906;
         param1["itemlist_horizontal"] = const_346;
         param1["itemlist_vertical"] = const_362;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1455;
         param1["menu_item"] = const_1508;
         param1["submenu"] = const_1107;
         param1["minimizebox"] = const_1466;
         param1["notify"] = const_1479;
         param1["PlaneMaterialCell"] = const_635;
         param1["password"] = const_773;
         param1["radiobutton"] = const_791;
         param1["region"] = const_670;
         param1["restorebox"] = const_1373;
         param1["scaler"] = const_571;
         param1["scaler_horizontal"] = const_1284;
         param1["scaler_vertical"] = const_1431;
         param1["scrollbar_horizontal"] = const_502;
         param1["scrollbar_vertical"] = const_564;
         param1["scrollbar_slider_button_up"] = const_1041;
         param1["scrollbar_slider_button_down"] = const_1070;
         param1["scrollbar_slider_button_left"] = const_899;
         param1["scrollbar_slider_button_right"] = const_936;
         param1["scrollbar_slider_bar_horizontal"] = const_920;
         param1["scrollbar_slider_bar_vertical"] = const_1020;
         param1["scrollbar_slider_track_horizontal"] = const_1075;
         param1["scrollbar_slider_track_vertical"] = const_904;
         param1["scrollable_itemlist"] = const_1272;
         param1["scrollable_itemlist_vertical"] = const_408;
         param1["scrollable_itemlist_horizontal"] = const_1087;
         param1["selector"] = const_576;
         param1["selector_list"] = const_714;
         param1["submenu"] = const_1107;
         param1["tab_button"] = const_694;
         param1["tab_container_button"] = const_929;
         param1["tab_context"] = const_363;
         param1["tab_content"] = const_890;
         param1["tab_selector"] = const_627;
         param1["text"] = const_795;
         param1["input"] = const_778;
         param1["toolbar"] = const_1318;
         param1["tooltip"] = const_371;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
