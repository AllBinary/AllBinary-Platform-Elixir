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

defmodule ReleaseHelper do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :touchButtonRecognizer, nil)
        
    nil
  end


  def jinit(this, p_touchButtonRecognizer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonRecognizer, p_touchButtonRecognizer)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :touchButtonRecognizer, JR.lget(f, :touchButtonRecognizer))
    end)
  end

  def jnew(p_touchButtonRecognizer) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_touchButtonRecognizer)
    this
  end


  def jm_release(this, p_touchButtonInput, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
      JR.lset(f, :deviceId, p_deviceId)
        JR.lset(f, :nextTouchButtonInput, nil)
        JR.lset(f, :gameKeyEvent, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.get(JR.get(this, :touchButtonRecognizer), :currentlyPressedTouchButtonSingleton), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :nextTouchButtonInput, JR.call(JR.get(JR.get(this, :touchButtonRecognizer), :currentlyPressedTouchButtonSingleton), :jm_get, [JR.lget(f, :index)]))
            JR.lset(f, :gameKeyEvent, JR.call(JR.lget(f, :nextTouchButtonInput), :jm_getGameKeyEvent, []))
            JR.call(JR.get(JR.get(this, :touchButtonRecognizer), :upGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            JR.call(JR.call(JR.get(JR.get(this, :touchButtonRecognizer), :upGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            JR.call(JR.get(JR.get(this, :touchButtonRecognizer), :currentlyPressedTouchButtonSingleton), :jm_removeAt, [JR.lget(f, :index)])
        end)
    end)
  end
end


