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

defmodule CompleteMotionGestureInputToGameMotionGestureInput do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CompleteMotionGestureInputToGameMotionGestureInput.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance()})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        try do
            PreLogUtil.jm_put("Compound Motion Gestures", this, JR.get(JR.lget(f, :commonStrings), :INIT))
            JR.lset(f, :motionGestureConfiguration, MotionGestureConfigurationFactory.jm_getInstance())
            JR.lset(f, :touchMotionGestureFactory, TouchMotionGestureFactory.jm_getInstance())
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_DOWN_LEFT)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), DiagonalDownLeftTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_DOWN_RIGHT)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_UP_LEFT)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_UP_RIGHT)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), DiagonalUpRightTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :LEFT)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), LeftTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :RIGHT)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), RightTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :DOWN)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), DownTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :UP)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), UpTouchInputToGameKeyEventAction.jm_getInstance()])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :touchMotionGestureFactory), :RELEASED)])
            JR.call(JR.lget(f, :motionGestureConfiguration), :jm_addMotionGestureAction, [JR.lget(f, :list), ReleaseTouchInputToGameKeyEventAction.jm_getInstance()])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :INIT), JR.lget(f, :e)])
        end
    end)
  end
end


