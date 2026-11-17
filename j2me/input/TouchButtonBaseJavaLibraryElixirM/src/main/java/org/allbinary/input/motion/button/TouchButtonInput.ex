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

defmodule TouchButtonInput do
  def jsuper(), do: Input

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :gameKeyEventFactory, nil)
    JR.put(this, :TOUCH_BUTTON_SOURCE_ID, 0)
    JR.put(this, :gameKeyEvent, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :gameKeyEventFactory, GameKeyEventFactory.jm_getInstance())
        JR.put(this, :TOUCH_BUTTON_SOURCE_ID, JR.get(JR.get(this, :gameKeyEventFactory), :TOUCH_BUTTON_SOURCE_ID))
        JR.put(this, :gameKeyEvent, GameKeyEvent.jstatic_NONE())
    nil
  end


  def jinit(this, p_id, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JR.lset(f, :name, p_name)
        Input.jinit(this, JR.lget(f, :id), JR.lget(f, :name))
        TouchButtonInput.jinitfields(this)
        JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
        JR.call(JR.lget(f, :inputFactory), :jm_add, [JR.call(this, :jm_getId, []), this])
    end)
  end

  def jnew(p_id, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_id, p_name)
    this
  end


  def jm_update(this, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        try do
            JR.lset(f, :gameKey, JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_getInstance, [JR.call(this, :jm_getId, [])]))
            JR.put(this, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [this, JR.lget(f, :gameKey)]))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :UPDATE), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :TOUCH_BUTTON_SOURCE_ID)})
    end)
  end


  def jm_getGameKeyEvent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameKeyEvent)})
    end)
  end
end


