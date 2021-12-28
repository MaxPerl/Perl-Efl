

















Eina_Bool evas_object_visible_get(const Evas__Object *obj);


void evas_object_size_hint_max_set(Evas__Object *obj, Evas_Coord w, Evas_Coord h);


void evas_object_size_hint_max_get(const Evas__Object *obj, Evas_Coord *w, Evas_Coord *h);


void evas_object_size_hint_request_set(Evas__Object *obj, Evas_Coord w, Evas_Coord h);


void evas_object_size_hint_request_get(const Evas__Object *obj, Evas_Coord *w, Evas_Coord *h);


void evas_object_size_hint_min_set(Evas__Object *obj, Evas_Coord w, Evas_Coord h);


void evas_object_clip_unset(Evas__Object *obj);


void evas_object_size_hint_min_get(const Evas__Object *obj, Evas_Coord *w, Evas_Coord *h);


void evas_object_size_hint_padding_set(Evas__Object *obj, Evas_Coord l, Evas_Coord r, Evas_Coord t, Evas_Coord b);


void evas_object_size_hint_padding_get(const Evas__Object *obj, Evas_Coord *l, Evas_Coord *r, Evas_Coord *t, Evas_Coord *b);





void evas_object_size_hint_aspect_set(Evas__Object *obj, Evas_Aspect_Control aspect, Evas_Coord w, Evas_Coord h);


void evas_object_size_hint_aspect_get(const Evas__Object *obj, Evas_Aspect_Control *aspect, Evas_Coord *w, Evas_Coord *h);


typedef enum
{
  EFL_GFX_HINT_MODE_NONE = 0, 
  EFL_GFX_HINT_MODE_COMPRESS = 1, 
  EFL_GFX_HINT_MODE_EXPAND = 2, 
  EFL_GFX_HINT_MODE_DONT_CHANGE = 3 
} Efl_Gfx_Hint_Mode;

typedef Efl_Gfx_Hint_Mode             Evas_Display_Mode;

#define EVAS_DISPLAY_MODE_NONE             EFL_GFX_HINT_MODE_NONE
#define EVAS_DISPLAY_MODE_COMPRESS         EFL_GFX_HINT_MODE_COMPRESS
#define EVAS_DISPLAY_MODE_EXPAND           EFL_GFX_HINT_MODE_EXPAND
#define EVAS_DISPLAY_MODE_DONT_CHANGE      EFL_GFX_HINT_MODE_DONT_CHANGE


void evas_object_size_hint_display_mode_set(Evas__Object *obj, Evas_Display_Mode dispmode);


Evas_Display_Mode evas_object_size_hint_display_mode_get(const Evas__Object *obj);


void evas_object_layer_set(Evas__Object *obj, short l);


short evas_object_layer_get(const Evas__Object *obj);


Evas__Object *evas_object_below_get(const Evas__Object *obj);


Evas__Object *evas_object_above_get(const Evas__Object *obj);


void evas_object_stack_below(Evas__Object *obj, Evas__Object *below);


void evas_object_raise(Evas__Object *obj);


void evas_object_stack_above(Evas__Object *obj, Evas__Object *above);


void evas_object_lower(Evas__Object *obj);





const Eina_List *evas_object_clipees_get(const Evas__Object *obj);


Eina_Bool evas_object_clipees_has(const Evas__Object *obj);


typedef enum
{
  EVAS_RENDER_BLEND = 0, 
  EVAS_RENDER_BLEND_REL = 1, 
  EVAS_RENDER_COPY = 2, 
  EVAS_RENDER_COPY_REL = 3, 
  EVAS_RENDER_ADD = 4, 
  EVAS_RENDER_ADD_REL = 5, 
  EVAS_RENDER_SUB = 6, 
  EVAS_RENDER_SUB_REL = 7, 
  EVAS_RENDER_TINT = 8, 
  EVAS_RENDER_TINT_REL = 9, 
  EVAS_RENDER_MASK = 10, 
  EVAS_RENDER_MUL = 11 
} Evas_Render_Op;


void evas_object_render_op_set(Evas__Object *obj, Evas_Render_Op render_op);


Evas_Render_Op evas_object_render_op_get(const Evas__Object *obj);


Eina_Bool evas_object_static_clip_get(const Evas__Object *obj);


void evas_object_scale_set(Evas__Object *obj, double scale);


double evas_object_scale_get(const Evas__Object *obj);


Eina_Bool evas_object_pointer_inside_by_device_get(const Evas__Object *obj, Efl_Input_Device * dev);


Eina_Bool evas_object_pointer_inside_get(const Evas__Object *obj);



Eina_Bool evas_object_pointer_coords_inside_get(const Evas__Object *eo_obj, int x, int y);

#include "canvas/efl_canvas_object_eo.legacy.h"


Evas *evas_object_evas_get(const Eo *obj);


 Eina_List *evas_objects_at_xy_get(Eo *eo_e, int x, int y, Eina_Bool include_pass_events_objects, Eina_Bool include_hidden_objects);



 Evas__Object* evas_object_top_at_xy_get(Eo *eo_e, Evas_Coord x, Evas_Coord y, Eina_Bool include_pass_events_objects, Eina_Bool include_hidden_objects);



Eina_List *evas_objects_in_rectangle_get(const Eo *obj, int x, int y, int w, int h, Eina_Bool include_pass_events_objects, Eina_Bool include_hidden_objects);


Evas__Object *evas_object_top_in_rectangle_get(const Eo *obj, int x, int y, int w, int h, Eina_Bool include_pass_events_objects, Eina_Bool include_hidden_objects);




void      evas_object_event_callback_add(Evas__Object *obj, Evas_Callback_Type type, Evas__Object_Event_Cb func, const void *data);


void      evas_object_event_callback_priority_add(Evas__Object *obj, Evas_Callback_Type type, Evas_Callback_Priority priority, Evas__Object_Event_Cb func, const void *data);


void     *evas_object_event_callback_del(Evas__Object *obj, Evas_Callback_Type type, Evas__Object_Event_Cb func);


void     *evas_object_event_callback_del_full(Evas__Object *obj, Evas_Callback_Type type, Evas__Object_Event_Cb func, const void *data);


Eina_Bool evas_object_key_grab(Evas__Object *obj, const char *keyname, Evas_Modifier_Mask modifiers, Evas_Modifier_Mask not_modifiers, Eina_Bool exclusive);


void evas_object_key_ungrab(Evas__Object *obj, const char *keyname, Evas_Modifier_Mask modifiers, Evas_Modifier_Mask not_modifiers);






void                     evas_object_data_set(Evas__Object *obj, const char *key, const void *data);


void                    *evas_object_data_get(const Evas__Object *obj, const char *key);


void                    *evas_object_data_del(Evas__Object *obj, const char *key);






Evas__Object *evas_object_top_at_pointer_get(const Evas *e);








typedef void (*Evas__Object_Intercept_Show_Cb)(void *data, Evas__Object *obj);


typedef void (*Evas__Object_Intercept_Hide_Cb)(void *data, Evas__Object *obj);


typedef void (*Evas__Object_Intercept_Move_Cb)(void *data, Evas__Object *obj, Evas_Coord x, Evas_Coord y);


typedef void (*Evas__Object_Intercept_Resize_Cb)(void *data, Evas__Object *obj, Evas_Coord w, Evas_Coord h);


typedef void (*Evas__Object_Intercept_Raise_Cb)(void *data, Evas__Object *obj);


typedef void (*Evas__Object_Intercept_Lower_Cb)(void *data, Evas__Object *obj);


typedef void (*Evas__Object_Intercept_Stack_Above_Cb)(void *data, Evas__Object *obj, Evas__Object *above);


typedef void (*Evas__Object_Intercept_Stack_Below_Cb)(void *data, Evas__Object *obj, Evas__Object *above);


typedef void (*Evas__Object_Intercept_Layer_Set_Cb)(void *data, Evas__Object *obj, int l);


typedef void (*Evas__Object_Intercept_Focus_Set_Cb)(void *data, Evas__Object *obj, Eina_Bool focus);


typedef void (*Evas__Object_Intercept_Device_Focus_Set_Cb)(void *data, Evas__Object *obj, Eina_Bool focus, Eo *seat);


typedef void (*Evas__Object_Intercept_Color_Set_Cb)(void *data, Evas__Object *obj, int r, int g, int b, int a);


typedef void (*Evas__Object_Intercept_Clip_Set_Cb)(void *data, Evas__Object *obj, Evas__Object *clip);


typedef void (*Evas__Object_Intercept_Clip_Unset_Cb)(void *data, Evas__Object *obj);


void  evas_object_intercept_show_callback_add(Evas__Object *obj, Evas__Object_Intercept_Show_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_show_callback_del(Evas__Object *obj, Evas__Object_Intercept_Show_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_hide_callback_add(Evas__Object *obj, Evas__Object_Intercept_Hide_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_hide_callback_del(Evas__Object *obj, Evas__Object_Intercept_Hide_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_move_callback_add(Evas__Object *obj, Evas__Object_Intercept_Move_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_move_callback_del(Evas__Object *obj, Evas__Object_Intercept_Move_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_resize_callback_add(Evas__Object *obj, Evas__Object_Intercept_Resize_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_resize_callback_del(Evas__Object *obj, Evas__Object_Intercept_Resize_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_raise_callback_add(Evas__Object *obj, Evas__Object_Intercept_Raise_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_raise_callback_del(Evas__Object *obj, Evas__Object_Intercept_Raise_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_lower_callback_add(Evas__Object *obj, Evas__Object_Intercept_Lower_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_lower_callback_del(Evas__Object *obj, Evas__Object_Intercept_Lower_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_stack_above_callback_add(Evas__Object *obj, Evas__Object_Intercept_Stack_Above_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_stack_above_callback_del(Evas__Object *obj, Evas__Object_Intercept_Stack_Above_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_stack_below_callback_add(Evas__Object *obj, Evas__Object_Intercept_Stack_Below_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_stack_below_callback_del(Evas__Object *obj, Evas__Object_Intercept_Stack_Below_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_layer_set_callback_add(Evas__Object *obj, Evas__Object_Intercept_Layer_Set_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_layer_set_callback_del(Evas__Object *obj, Evas__Object_Intercept_Layer_Set_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_color_set_callback_add(Evas__Object *obj, Evas__Object_Intercept_Color_Set_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_color_set_callback_del(Evas__Object *obj, Evas__Object_Intercept_Color_Set_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_clip_set_callback_add(Evas__Object *obj, Evas__Object_Intercept_Clip_Set_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_clip_set_callback_del(Evas__Object *obj, Evas__Object_Intercept_Clip_Set_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_clip_unset_callback_add(Evas__Object *obj, Evas__Object_Intercept_Clip_Unset_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_clip_unset_callback_del(Evas__Object *obj, Evas__Object_Intercept_Clip_Unset_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_focus_set_callback_add(Evas__Object *obj, Evas__Object_Intercept_Focus_Set_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_focus_set_callback_del(Evas__Object *obj, Evas__Object_Intercept_Focus_Set_Cb func) EINA_ARG_NONNULL(1, 2);


void  evas_object_intercept_device_focus_set_callback_add(Evas__Object *obj, Evas__Object_Intercept_Device_Focus_Set_Cb func, const void *data) EINA_ARG_NONNULL(1, 2);


void *evas_object_intercept_device_focus_set_callback_del(Evas__Object *obj, Evas__Object_Intercept_Device_Focus_Set_Cb func) EINA_ARG_NONNULL(1, 2);


#ifdef EFL_CANVAS_OBJECT_PROTECTED

enum _Evas__Object_Intercept_Cb_Type
{
   EVAS_OBJECT_INTERCEPT_CB_VISIBLE,
   EVAS_OBJECT_INTERCEPT_CB_MOVE,
   EVAS_OBJECT_INTERCEPT_CB_RESIZE,
   EVAS_OBJECT_INTERCEPT_CB_RAISE,
   EVAS_OBJECT_INTERCEPT_CB_LOWER,
   EVAS_OBJECT_INTERCEPT_CB_STACK_ABOVE,
   EVAS_OBJECT_INTERCEPT_CB_STACK_BELOW,
   EVAS_OBJECT_INTERCEPT_CB_LAYER_SET,
   EVAS_OBJECT_INTERCEPT_CB_FOCUS_SET,
   EVAS_OBJECT_INTERCEPT_CB_COLOR_SET,
   EVAS_OBJECT_INTERCEPT_CB_CLIP_SET,
   EVAS_OBJECT_INTERCEPT_CB_DEVICE_FOCUS_SET,
};
typedef enum _Evas__Object_Intercept_Cb_Type Evas__Object_Intercept_Cb_Type;

EWAPI Eina_Bool _evas_object_intercept_call(Evas__Object *obj, Evas__Object_Intercept_Cb_Type type, int internal, ...);

#endif
