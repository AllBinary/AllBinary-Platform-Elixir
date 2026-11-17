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
# package org.allbinary.input.motion.button

defmodule TouchButtonsPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :foregroundBasicColor, nil)
    JR.put(this, :foregroundColor, 0)
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :touchButtonFactory, nil)
        
        
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        JR.put(this, :touchButtonFactory, TouchButtonFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :foregroundBasicColor, JR.lget(f, :basicColor))
        JR.put(this, :foregroundColor, JR.call(JR.lget(f, :basicColor), :jm_intValue, []))
    end)
  end

  def jnew(p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :list, JR.call(JR.get(this, :touchButtonFactory), :jm_getList, []))
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.get(this, :foregroundBasicColor), JR.get(this, :foregroundColor)])
        JR.lset(f, :touchButton, nil)
        JR.lset(f, :index, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :touchButton, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :touchButton), :jm_paint, [JR.lget(f, :graphics)])
        end)
        JR.lset(f, :index, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :touchButton, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :touchButton), :jm_paintHint, [JR.lget(f, :graphics)])
        end)
    end)
  end
end


