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
# package org.allbinary.input.motion

defmodule MotionRecognizer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_processStartMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        nil
    end)
  end


  def jm_processEndMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        nil
    end)
  end


  def jm_processDraggedMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        nil
    end)
  end
end


