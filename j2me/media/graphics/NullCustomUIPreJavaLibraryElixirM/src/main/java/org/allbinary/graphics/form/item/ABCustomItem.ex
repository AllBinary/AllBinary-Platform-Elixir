# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABCustomItem do
  def jsuper(), do: JObject
def jstatic_NULL_CUSTOM_ITEM(), do: JR.static_get(__MODULE__, :NULL_CUSTOM_ITEM, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_CUSTOM_ITEM(value), do: JR.static_put(__MODULE__, :NULL_CUSTOM_ITEM, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (ABCustomItem.jstatic_NULL_CUSTOM_ITEM() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            ABCustomItem.jstatic_set_NULL_CUSTOM_ITEM(ABCustomItem.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        end
        throw({:jreturn, ABCustomItem.jstatic_NULL_CUSTOM_ITEM()})
    end)
  end


  def jinit(this, p_label, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_label, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_setOwner(this, p_owner) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :owner, p_owner)
        nil
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        nil
    end)
  end


  def jm_paintUnselected(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        nil
    end)
  end


  def jm_isFocusable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getLabel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_setLabel(this, p_label) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
        nil
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_setHeight(this, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :height, p_height)
        nil
    end)
  end


  def jm_getValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0.0})
    end)
  end


  def jm_setValue(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        nil
    end)
  end


  def jm_getMinimumWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getMinimumHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_preMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


