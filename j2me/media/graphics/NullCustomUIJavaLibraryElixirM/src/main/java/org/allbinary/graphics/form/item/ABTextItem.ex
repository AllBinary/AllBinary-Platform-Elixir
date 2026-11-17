# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABTextItem do
  def jsuper(), do: CustomCustomItem

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_label, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :layout, p_layout)
      JR.lset(f, :altText, p_altText)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        CustomCustomItem.jinit(this, JR.lget(f, :label), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        ABTextItem.jinitfields(this)
    end)
  end

  def jnew(p_label, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_keyPressed(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
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


  def jm_getLabelStringComponent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, ABStringComponent.jstatic_NULL_STRING_COMPONENT()})
    end)
  end


  def jm_getMinimumWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, CustomCustomItem.jm_getMinimumWidth(this)})
    end)
  end


  def jm_getMinimumHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, CustomCustomItem.jm_getMinimumHeight(this)})
    end)
  end


  def jm_getLabel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, CustomCustomItem.jm_getLabel(this)})
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
        CustomCustomItem.jm_paintXY(this, JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y))
    end)
  end
end


