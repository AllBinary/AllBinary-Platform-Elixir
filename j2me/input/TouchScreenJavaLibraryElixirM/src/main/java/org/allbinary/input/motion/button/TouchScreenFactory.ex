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

defmodule TouchScreenFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> TouchScreenFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :touch, false)
    JR.put(this, :multiTouch, false)
    JR.put(this, :multiTouchDistinct, false)
    JR.put(this, :touchScreenType, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :touch, false)
        JR.put(this, :multiTouch, false)
        JR.put(this, :multiTouchDistinct, false)
        JR.put(this, :touchScreenType, JR.get(TouchScreenTypesFactory.jm_getInstance(), :NOTOUCH))
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        try do
            JR.call(this, :jm_setTouch, [true])
            JR.call(this, :jm_setMultiTouch, [false])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), TouchScreenFactory.jstatic_SINGLETON(), JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
        end
    end)
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
        throw({:jreturn, TouchScreenFactory.jstatic_SINGLETON()})
    end)
  end


  def jm_setMultiTouch(this, p_multiTouch) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :multiTouch, p_multiTouch)
        JR.put(this, :multiTouch, JR.lget(f, :multiTouch))
    end)
  end


  def jm_isMultiTouch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :multiTouch)})
    end)
  end


  def jm_setTouch(this, p_touch) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touch, p_touch)
        JR.put(this, :touch, JR.lget(f, :touch))
    end)
  end


  def jm_isTouch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :touch)})
    end)
  end


  def jm_setMultiTouchDistinct(this, p_multiTouchDistinct) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :multiTouchDistinct, p_multiTouchDistinct)
        JR.put(this, :multiTouchDistinct, JR.lget(f, :multiTouchDistinct))
    end)
  end


  def jm_isMultiTouchDistinct(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :multiTouchDistinct)})
    end)
  end


  def jm_setTouchScreenType(this, p_touchScreenType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchScreenType, p_touchScreenType)
        JR.put(this, :touchScreenType, JR.lget(f, :touchScreenType))
    end)
  end


  def jm_getTouchScreenType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :touchScreenType)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["TouchScreen: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isTouch, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" MultiTouch: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isMultiTouch, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Distinct MultiTouch: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isMultiTouchDistinct, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" TouchScreenType: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(this, :jm_getTouchScreenType, [])])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


