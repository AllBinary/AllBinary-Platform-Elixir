#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule SelectableTextItem do
  def jsuper(), do: ABTextItem

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
        ABTextItem.jinit(this, JR.lget(f, :label), JR.lget(f, :layout), JR.lget(f, :altText), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        SelectableTextItem.jinitfields(this)
    end)
  end

  def jnew(p_label, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_isFocusable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
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
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :stringComponent, JR.call(this, :jm_getLabelStringComponent, []))
        if (JR.lget(f, :stringComponent) != nil) do
            JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.call(JR.lget(f, :stringComponent), :jm_getForegroundBasicColor, []), :jm_intValue, [])])
        end
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(this, :jm_getLabel, []), JR.int32(JR.lget(f, :x) + 2), JR.lget(f, :y), 0])
    end)
  end
end


