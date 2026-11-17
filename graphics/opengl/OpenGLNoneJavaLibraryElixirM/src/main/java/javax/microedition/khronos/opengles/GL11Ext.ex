# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

defmodule GL11Ext do
  def jsuper(), do: JObject
def jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES, fn -> 35742 end)
  def jstatic_set_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES, value)
def jstatic_GL_MATRIX_INDEX_ARRAY_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_INDEX_ARRAY_OES, fn -> 34884 end)
  def jstatic_set_GL_MATRIX_INDEX_ARRAY_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_INDEX_ARRAY_OES, value)
def jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_INDEX_ARRAY_POINTER_OES, fn -> 34889 end)
  def jstatic_set_GL_MATRIX_INDEX_ARRAY_POINTER_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_INDEX_ARRAY_POINTER_OES, value)
def jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_INDEX_ARRAY_SIZE_OES, fn -> 34886 end)
  def jstatic_set_GL_MATRIX_INDEX_ARRAY_SIZE_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_INDEX_ARRAY_SIZE_OES, value)
def jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_INDEX_ARRAY_STRIDE_OES, fn -> 34888 end)
  def jstatic_set_GL_MATRIX_INDEX_ARRAY_STRIDE_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_INDEX_ARRAY_STRIDE_OES, value)
def jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_INDEX_ARRAY_TYPE_OES, fn -> 34887 end)
  def jstatic_set_GL_MATRIX_INDEX_ARRAY_TYPE_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_INDEX_ARRAY_TYPE_OES, value)
def jstatic_GL_MATRIX_PALETTE_OES(), do: JR.static_get(__MODULE__, :GL_MATRIX_PALETTE_OES, fn -> 34880 end)
  def jstatic_set_GL_MATRIX_PALETTE_OES(value), do: JR.static_put(__MODULE__, :GL_MATRIX_PALETTE_OES, value)
def jstatic_GL_MAX_PALETTE_MATRICES_OES(), do: JR.static_get(__MODULE__, :GL_MAX_PALETTE_MATRICES_OES, fn -> 34882 end)
  def jstatic_set_GL_MAX_PALETTE_MATRICES_OES(value), do: JR.static_put(__MODULE__, :GL_MAX_PALETTE_MATRICES_OES, value)
def jstatic_GL_MAX_VERTEX_UNITS_OES(), do: JR.static_get(__MODULE__, :GL_MAX_VERTEX_UNITS_OES, fn -> 34468 end)
  def jstatic_set_GL_MAX_VERTEX_UNITS_OES(value), do: JR.static_put(__MODULE__, :GL_MAX_VERTEX_UNITS_OES, value)
def jstatic_GL_TEXTURE_CROP_RECT_OES(), do: JR.static_get(__MODULE__, :GL_TEXTURE_CROP_RECT_OES, fn -> 35741 end)
  def jstatic_set_GL_TEXTURE_CROP_RECT_OES(value), do: JR.static_put(__MODULE__, :GL_TEXTURE_CROP_RECT_OES, value)
def jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES(), do: JR.static_get(__MODULE__, :GL_WEIGHT_ARRAY_BUFFER_BINDING_OES, fn -> 34974 end)
  def jstatic_set_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES(value), do: JR.static_put(__MODULE__, :GL_WEIGHT_ARRAY_BUFFER_BINDING_OES, value)
def jstatic_GL_WEIGHT_ARRAY_OES(), do: JR.static_get(__MODULE__, :GL_WEIGHT_ARRAY_OES, fn -> 34477 end)
  def jstatic_set_GL_WEIGHT_ARRAY_OES(value), do: JR.static_put(__MODULE__, :GL_WEIGHT_ARRAY_OES, value)
def jstatic_GL_WEIGHT_ARRAY_POINTER_OES(), do: JR.static_get(__MODULE__, :GL_WEIGHT_ARRAY_POINTER_OES, fn -> 34476 end)
  def jstatic_set_GL_WEIGHT_ARRAY_POINTER_OES(value), do: JR.static_put(__MODULE__, :GL_WEIGHT_ARRAY_POINTER_OES, value)
def jstatic_GL_WEIGHT_ARRAY_SIZE_OES(), do: JR.static_get(__MODULE__, :GL_WEIGHT_ARRAY_SIZE_OES, fn -> 34475 end)
  def jstatic_set_GL_WEIGHT_ARRAY_SIZE_OES(value), do: JR.static_put(__MODULE__, :GL_WEIGHT_ARRAY_SIZE_OES, value)
def jstatic_GL_WEIGHT_ARRAY_STRIDE_OES(), do: JR.static_get(__MODULE__, :GL_WEIGHT_ARRAY_STRIDE_OES, fn -> 34474 end)
  def jstatic_set_GL_WEIGHT_ARRAY_STRIDE_OES(value), do: JR.static_put(__MODULE__, :GL_WEIGHT_ARRAY_STRIDE_OES, value)
def jstatic_GL_WEIGHT_ARRAY_TYPE_OES(), do: JR.static_get(__MODULE__, :GL_WEIGHT_ARRAY_TYPE_OES, fn -> 34473 end)
  def jstatic_set_GL_WEIGHT_ARRAY_TYPE_OES(value), do: JR.static_put(__MODULE__, :GL_WEIGHT_ARRAY_TYPE_OES, value)


  def jm_glTexParameterfv(this, p_target, p_pname, p_param, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glTexParameterfv")})
    end)
  end


  def jm_glCurrentPaletteMatrixOES(this, p_matrixpaletteindex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :matrixpaletteindex, p_matrixpaletteindex)
      throw({:jexception, JR.exception("AbstractMethodError", "glCurrentPaletteMatrixOES")})
    end)
  end


  def jm_glDrawTexfOES(this, p_x, p_y, p_z, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexfOES")})
    end)
  end


  def jm_glDrawTexfvOES(this, p_coords, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexfvOES")})
    end)
  end


  def jm_glDrawTexfvOES(this, p_coords) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexfvOES")})
    end)
  end


  def jm_glDrawTexiOES(this, p_x, p_y, p_z, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexiOES")})
    end)
  end


  def jm_glDrawTexivOES(this, p_coords, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexivOES")})
    end)
  end


  def jm_glDrawTexivOES(this, p_coords) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexivOES")})
    end)
  end


  def jm_glDrawTexsOES(this, p_x, p_y, p_z, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexsOES")})
    end)
  end


  def jm_glDrawTexsvOES(this, p_coords, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexsvOES")})
    end)
  end


  def jm_glDrawTexsvOES(this, p_coords) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexsvOES")})
    end)
  end


  def jm_glDrawTexxOES(this, p_x, p_y, p_z, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexxOES")})
    end)
  end


  def jm_glDrawTexxvOES(this, p_coords, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexxvOES")})
    end)
  end


  def jm_glDrawTexxvOES(this, p_coords) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :coords, p_coords)
      throw({:jexception, JR.exception("AbstractMethodError", "glDrawTexxvOES")})
    end)
  end


  def jm_glEnable(this, p_cap) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cap, p_cap)
      throw({:jexception, JR.exception("AbstractMethodError", "glEnable")})
    end)
  end


  def jm_glEnableClientState(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
      throw({:jexception, JR.exception("AbstractMethodError", "glEnableClientState")})
    end)
  end


  def jm_glLoadPaletteFromModelViewMatrixOES(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "glLoadPaletteFromModelViewMatrixOES")})
    end)
  end


  def jm_glMatrixIndexPointerOES(this, p_size, p_type, p_stride, p_pointer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :pointer, p_pointer)
      throw({:jexception, JR.exception("AbstractMethodError", "glMatrixIndexPointerOES")})
    end)
  end


  def jm_glMatrixIndexPointerOES(this, p_size, p_type, p_stride, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glMatrixIndexPointerOES")})
    end)
  end


  def jm_glWeightPointerOES(this, p_size, p_type, p_stride, p_pointer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :pointer, p_pointer)
      throw({:jexception, JR.exception("AbstractMethodError", "glWeightPointerOES")})
    end)
  end


  def jm_glWeightPointerOES(this, p_size, p_type, p_stride, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :offset, p_offset)
      throw({:jexception, JR.exception("AbstractMethodError", "glWeightPointerOES")})
    end)
  end
end


