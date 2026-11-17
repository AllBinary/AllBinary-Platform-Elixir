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

defmodule BasicTouchInputFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :SPECIAL_BUTTON_SEVEN_TESTING_ONLY, nil)
    JR.put(this, :SPECIAL_BUTTON_EIGHT_TESTING_ONLY, nil)
    JR.put(this, :SPECIAL_BUTTON_SIX, nil)
    JR.put(this, :SPECIAL_BUTTON_FIVE, nil)
    JR.put(this, :SPECIAL_BUTTON_FOUR, nil)
    JR.put(this, :SPECIAL_BUTTON_THREE, nil)
    JR.put(this, :SPECIAL_BUTTON_TWO, nil)
    JR.put(this, :SPECIAL_BUTTON_ONE, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :initialized, false)
    JR.put(this, :list, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
        
        
        
        
        
        
        
        
        
        
        
        JR.put(this, :initialized, false)
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (BasicTouchInputFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            BasicTouchInputFactory.jstatic_set_instance(BasicTouchInputFactory.jnew())
        end
        throw({:jreturn, BasicTouchInputFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :MAX, JR.get(InputFactory.jm_getInstance(), :MAX))
        JR.put(this, :SPECIAL_BUTTON_SEVEN_TESTING_ONLY, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 41), "Button 7 - Testing Only May Cross Over Key Values"))
        JR.put(this, :SPECIAL_BUTTON_EIGHT_TESTING_ONLY, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 42), "Button 8 - Testing Only May Cross Over Key Values"))
        JR.put(this, :SPECIAL_BUTTON_SIX, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 30), "Button 6"))
        JR.put(this, :SPECIAL_BUTTON_FIVE, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 31), "Button 5"))
        JR.put(this, :SPECIAL_BUTTON_FOUR, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 32), "Button 4"))
        JR.put(this, :SPECIAL_BUTTON_THREE, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 33), "Button 3"))
        JR.put(this, :SPECIAL_BUTTON_TWO, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 34), "Button 2"))
        JR.put(this, :SPECIAL_BUTTON_ONE, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 35), "Button 1"))
        JR.put(this, :UP, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 36), "Up Button"))
        JR.put(this, :LEFT, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 37), "Left Button"))
        JR.put(this, :RIGHT, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 38), "Right Button"))
        JR.put(this, :DOWN, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 39), "Down Button"))
        JR.put(this, :NONE, TouchButtonInput.jnew(JR.int32(JR.lget(f, :MAX) - 40), "No Button"))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_init(this, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        if !JR.get(this, :initialized) do
            JR.put(this, :initialized, true)
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :UP)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :LEFT)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :RIGHT)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :DOWN)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_TWO)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_FOUR)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_THREE)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_ONE)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_FIVE)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_SIX)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_SIX)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_SEVEN_TESTING_ONLY)])
            JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :SPECIAL_BUTTON_EIGHT_TESTING_ONLY)])
            JR.call(this, :jm_updateAllFromList, [JR.get(this, :list), JR.lget(f, :inputToGameKeyMapping)])
        end
    end)
  end


  def jm_updateAll(this, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        JR.call(this, :jm_updateAllFromList, [JR.get(this, :list), JR.lget(f, :inputToGameKeyMapping)])
    end)
  end


  def jm_updateAllFromList(this, p_list, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_appendint, [JR.call(JR.lget(f, :list), :jm_size, [])]), :jm_toString, []), this, "updateAll"])
        JR.lset(f, :touchButtonInput, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :touchButtonInput, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :touchButtonInput), :jm_update, [JR.lget(f, :inputToGameKeyMapping)])
        end)
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :list)})
    end)
  end
end


