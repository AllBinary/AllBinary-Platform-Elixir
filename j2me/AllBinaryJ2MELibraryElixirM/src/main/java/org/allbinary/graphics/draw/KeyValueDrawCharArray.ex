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
# package org.allbinary.graphics.draw

defmodule KeyValueDrawCharArray do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :LABEL, nil)
    JR.put(this, :labelX, 0)
    JR.put(this, :valueX, 0)
    JR.put(this, :value, nil)
    JR.put(this, :len, 0)
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        
        
        JR.put(this, :valueX, 0)
        JR.put(this, :value, JR.call(CharArrayFactory.jm_getInstance(), :jm_getZeroCharArray, []))
        JR.put(this, :len, 0)
    nil
  end


  def jinit(this, p_label, p_x) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :x, p_x)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :LABEL, JR.lget(f, :label))
        JR.put(this, :labelX, JR.lget(f, :x))
    end)
  end

  def jnew(p_label, p_x) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_x)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :labelWidth, (JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.get(this, :LABEL)]) - byte_size(JR.get(this, :LABEL))))
        JR.put(this, :valueX, JR.int32(JR.lget(f, :labelWidth) + JR.get(this, :labelX)))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_paint(this, p_graphics, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :LABEL), JR.get(this, :labelX), JR.lget(f, :y), 0])
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.get(this, :value), 0, JR.get(this, :len), JR.get(this, :valueX), JR.lget(f, :y), 0])
    end)
  end


  def jm_update(this, p_value, p_len) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :len, p_len)
        JR.put(this, :value, JR.lget(f, :value))
        JR.put(this, :len, JR.lget(f, :len))
    end)
  end
end


