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
# package org.allbinary.input.motion.gesture.observer

defmodule ResolveCompleteMotionGestureListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, ["MotionGesture to CompleteMotionGesture Reciever", this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR)])
        JR.call(CompleteMotionGestureInputEventHandler.jm_getInstance(), :jm_addListener, [GameKeyFromMotionGestureEventListener.jnew()])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_onMotionGestureCompleted(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :configuration, MotionGestureConfigurationFactory.jm_getInstance())
        JR.lset(f, :commandActionsList, JR.call(JR.lget(f, :configuration), :jm_getAssociateCommandActionsList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :commandActionsList), :jm_size, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :association, JR.aget(JR.get(JR.lget(f, :commandActionsList), :objectArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :association), :jm_isMotionGestureArrayEquals, [JR.lget(f, :list)]) == true) do
                JR.lset(f, :completeMotionGestureInputEvent, JR.call(JR.lget(f, :association), :jm_getCommandAction, []))
                JR.call(CompleteMotionGestureInputEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :completeMotionGestureInputEvent)])
                throw(:jbreak)
            end
        end)
    end)
  end
end


