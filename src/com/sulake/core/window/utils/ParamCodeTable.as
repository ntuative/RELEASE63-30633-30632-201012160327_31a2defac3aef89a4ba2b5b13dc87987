package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["PlaneMaterialCell"] = const_180;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_962;
         param1["embedded_controller"] = const_1057;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_700;
         param1["mouse_dragging_target"] = const_217;
         param1["mouse_dragging_trigger"] = const_370;
         param1["mouse_scaling_target"] = const_296;
         param1["mouse_scaling_trigger"] = const_520;
         param1["horizontal_mouse_scaling_trigger"] = const_249;
         param1["vertical_mouse_scaling_trigger"] = const_241;
         param1["observe_parent_input_events"] = const_894;
         param1["optimize_region_to_layout_size"] = const_477;
         param1["parent_window"] = const_937;
         param1["relative_horizontal_scale_center"] = const_185;
         param1["relative_horizontal_scale_fixed"] = const_136;
         param1["relative_horizontal_scale_move"] = const_361;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1085;
         param1["relative_scale_fixed"] = const_589;
         param1["relative_scale_move"] = const_889;
         param1["relative_scale_strech"] = const_903;
         param1["relative_vertical_scale_center"] = const_161;
         param1["relative_vertical_scale_fixed"] = const_135;
         param1["relative_vertical_scale_move"] = const_349;
         param1["relative_vertical_scale_strech"] = const_318;
         param1["on_resize_align_left"] = const_586;
         param1["on_resize_align_right"] = const_525;
         param1["on_resize_align_center"] = const_539;
         param1["on_resize_align_top"] = const_593;
         param1["on_resize_align_bottom"] = const_405;
         param1["on_resize_align_middle"] = const_409;
         param1["on_accommodate_align_left"] = const_1048;
         param1["on_accommodate_align_right"] = const_503;
         param1["on_accommodate_align_center"] = const_568;
         param1["on_accommodate_align_top"] = const_968;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_573;
         param1["route_input_events_to_parent"] = const_516;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_1106;
         param1["scalable_with_mouse"] = const_943;
         param1["reflect_horizontal_resize_to_parent"] = const_491;
         param1["reflect_vertical_resize_to_parent"] = const_512;
         param1["reflect_resize_to_parent"] = const_270;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
