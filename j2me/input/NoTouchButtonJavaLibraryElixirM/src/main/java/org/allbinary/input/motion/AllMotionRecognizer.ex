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

defmodule AllMotionRecognizer do
  def jsuper(), do: JObject
def jstatic_index(), do: JR.static_get(__MODULE__, :index, fn -> 0 end)
  def jstatic_set_index(value), do: JR.static_put(__MODULE__, :index, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :id, 0)
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :id, JR.postinc(AllMotionRecognizer, :index, 1))
    end)
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


  def jm_processMovedMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
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


  def jm_processScrolledMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
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


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end
end


