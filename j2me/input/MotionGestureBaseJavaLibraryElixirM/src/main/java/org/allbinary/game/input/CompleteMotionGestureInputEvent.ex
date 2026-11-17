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
# package org.allbinary.game.input

defmodule CompleteMotionGestureInputEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :name, nil)
    JR.put(this, :motionGestureInput, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :motionGestureInput, JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION))
    nil
  end


  def jinit(this, p_name, p_motionGestureInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :motionGestureInput, p_motionGestureInput)
        AllBinaryEventObject.jinit(this, JR.lget(f, :motionGestureInput))
        CompleteMotionGestureInputEvent.jinitfields(this)
        JR.call(this, :jm_setName, [JR.lget(f, :name)])
        try do
            JR.call(this, :jm_setMotionGestureInput, [JR.lget(f, :motionGestureInput)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "InputToGameKeyEventAction", JR.lget(f, :e)])
        end
    end)
  end

  def jnew(p_name, p_motionGestureInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_motionGestureInput)
    this
  end


  def jm_setName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_setMotionGestureInput(this, p_motionGestureInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureInput, p_motionGestureInput)
        JR.put(this, :motionGestureInput, JR.lget(f, :motionGestureInput))
    end)
  end


  def jm_getMotionGestureInput(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :motionGestureInput)})
    end)
  end
end


