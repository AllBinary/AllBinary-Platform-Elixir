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

defmodule OnlyTouchButtonRecognizer do
  def jsuper(), do: MotionRecognizer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :touchButtonRecognizer, nil)
    JR.put(this, :touchButtonProcessing, false)
        
        JR.put(this, :touchButtonProcessing, false)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      MotionRecognizer.jinit(this)
      jinitfields(this)
        JR.put(this, :touchButtonRecognizer, TouchButtonRecognizer.jnew())
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
        if JR.call(JR.get(this, :touchButtonRecognizer), :jm_pressTouchButtonInput, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :deviceId)]) do
            JR.put(this, :touchButtonProcessing, true)
        end
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
        if JR.get(this, :touchButtonProcessing) do
            JR.put(this, :touchButtonProcessing, false)
        end
        if JR.call(JR.get(this, :touchButtonRecognizer), :jm_releaseTouchButtonInput, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :deviceId)]) do
            throw({:jreturn, nil})
        end
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
        if JR.get(this, :touchButtonProcessing) do
            JR.call(JR.get(this, :touchButtonRecognizer), :jm_pressTouchButtonInput, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :deviceId)])
        end
    end)
  end
end


