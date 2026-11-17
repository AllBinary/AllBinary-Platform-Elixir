# Generated Code Do Not Modify
# package org.allbinary.graphics.form

defmodule PaintableForm do
  def jsuper(), do: ABCustomForm
def jstatic_NULL_PAINTABLE_FORM(), do: JR.static_get(__MODULE__, :NULL_PAINTABLE_FORM, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_PAINTABLE_FORM(value), do: JR.static_put(__MODULE__, :NULL_PAINTABLE_FORM, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :canvasStrings, nil)
    JR.put(this, :rectangle, nil)
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
    JR.put(this, :formType, nil)
        JR.put(this, :canvasStrings, CanvasStrings.jm_getInstance())
        JR.put(this, :rectangle, RectangleFactory.jstatic_SINGLETON())
        JR.put(this, :x, 0)
        JR.put(this, :y, 0)
        JR.put(this, :formType, JR.get(FormTypeFactory.jm_getInstance(), :NULL_FORM_TYPE))
    nil
  end


  def jm_getNullPaintableForm() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (PaintableForm.jstatic_NULL_PAINTABLE_FORM() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            PaintableForm.jstatic_set_NULL_PAINTABLE_FORM(PaintableForm.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.anew(0, nil), JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        end
        throw({:jreturn, PaintableForm.jstatic_NULL_PAINTABLE_FORM()})
    end)
  end


  def jinit(this, p_title, p_items, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ABCustomForm.jinit(this, JR.lget(f, :title), JR.lget(f, :items), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        PaintableForm.jinitfields(this)
        JR.call(this, :jm_setSelectedIndex, [0])
    end)
  end

  def jnew(p_title, p_items, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_items, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_init(this, p_rectangle, p_formType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :formType, p_formType)
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
        JR.lset(f, :point, JR.call(JR.get(this, :rectangle), :jm_getPoint, []))
        JR.put(this, :x, JR.call(JR.lget(f, :point), :jm_getX, []))
        JR.put(this, :y, JR.call(JR.lget(f, :point), :jm_getY, []))
        JR.put(this, :formType, JR.lget(f, :formType))
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :rectangle), :jm_getWidth, [])})
    end)
  end
end


