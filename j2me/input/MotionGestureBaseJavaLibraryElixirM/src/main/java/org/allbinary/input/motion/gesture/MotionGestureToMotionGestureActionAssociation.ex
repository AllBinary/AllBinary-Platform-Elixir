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
# package org.allbinary.input.motion.gesture

defmodule MotionGestureToMotionGestureActionAssociation do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
    JR.put(this, :motionGestureAction, nil)
        
        
    nil
  end


  def jinit(this, p_list, p_commandAction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :commandAction, p_commandAction)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :list, JR.lget(f, :list))
        JR.put(this, :motionGestureAction, JR.lget(f, :commandAction))
    end)
  end

  def jnew(p_list, p_commandAction) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_list, p_commandAction)
    this
  end


  def jm_getMotionGesture(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :list)})
    end)
  end


  def jm_setMotionGestures(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.put(this, :list, JR.lget(f, :list))
    end)
  end


  def jm_getCommandAction(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :motionGestureAction)})
    end)
  end


  def jm_setMotionGestureAction(this, p_commandAction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :commandAction, p_commandAction)
        JR.put(this, :motionGestureAction, JR.lget(f, :commandAction))
    end)
  end


  def jm_isMotionGestureArrayEquals(this, p_aList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aList, p_aList)
        JR.lset(f, :size, JR.call(JR.lget(f, :aList), :jm_size, []))
        if (JR.call(JR.get(this, :list), :jm_size, []) != JR.lget(f, :size)) do
            throw({:jreturn, false})
        end
        JR.lset(f, :i, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :i) >= 0) end, fn -> JR.lpostinc(f, :i, -1) end, fn ->
            if (JR.aget(JR.get(JR.lget(f, :aList), :objectArray), JR.lget(f, :i)) != JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :i))) do
                throw({:jreturn, false})
            end
        end)
        throw({:jreturn, true})
    end)
  end
end


