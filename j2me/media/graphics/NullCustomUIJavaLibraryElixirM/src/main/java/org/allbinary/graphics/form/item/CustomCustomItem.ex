# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule CustomCustomItem do
  def jsuper(), do: ABCustomItem

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    nil
  end


  def jinit(this, p_label, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ABCustomItem.jinit(this, JR.lget(f, :label), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        CustomCustomItem.jinitfields(this)
    end)
  end

  def jnew(p_label, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


