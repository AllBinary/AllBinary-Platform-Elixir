# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABTextFieldItem do
  def jsuper(), do: ABTextItem

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :font, nil)
        
    nil
  end


  def jinit(this, p_canvas, p_visitor, p_label, p_value, p_maxSize, p_layout, p_altText, p_font, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :visitor, p_visitor)
      JR.lset(f, :label, p_label)
      JR.lset(f, :value, p_value)
      JR.lset(f, :maxSize, p_maxSize)
      JR.lset(f, :layout, p_layout)
      JR.lset(f, :altText, p_altText)
      JR.lset(f, :font, p_font)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ABTextItem.jinit(this, JR.lget(f, :label), JR.lget(f, :layout), JR.lget(f, :altText), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        ABTextFieldItem.jinitfields(this)
        JR.put(this, :font, JR.lget(f, :font))
    end)
  end

  def jnew(p_canvas, p_visitor, p_label, p_value, p_maxSize, p_layout, p_altText, p_font, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_canvas, p_visitor, p_label, p_value, p_maxSize, p_layout, p_altText, p_font, p_backgroundBasicColor, p_foregroundBasicColor)
    this
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


  def jm_getString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_setString(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        nil
    end)
  end


  def jm_setFocus(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        nil
    end)
  end


  def jm_getFontHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :font), :jm_getHeight, [])})
    end)
  end


  def jm_setBackgroundBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        nil
    end)
  end


  def jm_setForegroundBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        nil
    end)
  end
end


