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

defmodule CurrentlyPressedTouchButtonSingletonDebug do
  def jsuper(), do: CurrentlyPressedTouchButtonSingleton
def jstatic_instanceC(), do: JR.static_get(__MODULE__, :instanceC, fn -> CurrentlyPressedTouchButtonSingletonDebug.jnew() end)
  def jstatic_set_instanceC(value), do: JR.static_put(__MODULE__, :instanceC, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :string, nil)
    JR.put(this, :listString, nil)
    JR.put(this, :appendText, nil)
    JR.put(this, :PRESSED_AND_FIRED, nil)
    JR.put(this, :PRESSED_AND_NOT_FIRED, nil)
    JR.put(this, :ASSOCIATED_RELEASED_AND_FIRED, nil)
    JR.put(this, :RELEASED_AND_FIRED, nil)
    JR.put(this, :RELEASED_AND_FIRED_2, nil)
    JR.put(this, :RELEASED_AND_NOT_FIRED, nil)
        JR.put(this, :string, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :listString, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :appendText, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :PRESSED_AND_FIRED, "pressed & fired")
        JR.put(this, :PRESSED_AND_NOT_FIRED, "pressed in button but not fired")
        JR.put(this, :ASSOCIATED_RELEASED_AND_FIRED, "assoc. rel & fired")
        JR.put(this, :RELEASED_AND_FIRED, "rel & fired 1")
        JR.put(this, :RELEASED_AND_FIRED_2, "rel & fired 2")
        JR.put(this, :RELEASED_AND_NOT_FIRED, "rel & not fired")
    nil
  end

  def jinit(this) do
    CurrentlyPressedTouchButtonSingleton.jinit(this)
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
        throw({:jreturn, CurrentlyPressedTouchButtonSingletonDebug.jstatic_instanceC()})
    end)
  end


  def jm_appendTouchButtonInput(this, p_append, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :append, p_append)
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :touchButtonInput), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :append)])
        JR.put(this, :appendText, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
        JR.put(this, :string, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :listString)]), :jm_append, [JR.get(this, :appendText)]), :jm_toString, []))
    end)
  end


  def jm_append(this, p_append) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :append, p_append)
        JR.put(this, :appendText, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :appendText)]), :jm_append, [JR.lget(f, :append)]), :jm_toString, []))
        JR.put(this, :string, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :listString)]), :jm_append, [JR.get(this, :appendText)]), :jm_toString, []))
    end)
  end


  def jm_clearLog(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.put(this, :appendText, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [GPoint.jm_toStringStatic(JR.lget(f, :x), JR.lget(f, :y), 0)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_toString, []))
        JR.put(this, :string, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :listString)]), :jm_append, [JR.get(this, :appendText)]), :jm_toString, []))
    end)
  end


  def jm_releaseAndNotFired(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_append, [JR.get(this, :RELEASED_AND_NOT_FIRED)])
    end)
  end


  def jm_releaseAndFired(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.call(this, :jm_appendTouchButtonInput, [JR.get(this, :RELEASED_AND_FIRED), JR.lget(f, :touchButtonInput)])
    end)
  end


  def jm_releaseAndFired2(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.call(this, :jm_appendTouchButtonInput, [JR.get(this, :RELEASED_AND_FIRED_2), JR.lget(f, :touchButtonInput)])
    end)
  end


  def jm_releaseAndFiredAssociated(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.call(this, :jm_appendTouchButtonInput, [JR.get(this, :ASSOCIATED_RELEASED_AND_FIRED), JR.lget(f, :touchButtonInput)])
    end)
  end


  def jm_pressedAndFired(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.call(this, :jm_appendTouchButtonInput, [JR.get(this, :PRESSED_AND_FIRED), JR.lget(f, :touchButtonInput)])
    end)
  end


  def jm_pressedAndNotFired(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.call(this, :jm_appendTouchButtonInput, [JR.get(this, :PRESSED_AND_NOT_FIRED), JR.lget(f, :touchButtonInput)])
    end)
  end


  def jm_removeAt(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.lset(f, :touchButtonInput, CurrentlyPressedTouchButtonSingleton.jm_removeAt(this, JR.lget(f, :index)))
        JR.put(this, :listString, JR.call(JR.get(this, :list), :jm_toString, []))
        JR.put(this, :string, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :listString)]), :jm_append, [JR.get(this, :appendText)]), :jm_toString, []))
        throw({:jreturn, JR.lget(f, :touchButtonInput)})
    end)
  end


  def jm_remove(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.lset(f, :isRemoved, CurrentlyPressedTouchButtonSingleton.jm_remove(this, JR.lget(f, :touchButtonInput)))
        JR.put(this, :listString, JR.call(JR.get(this, :list), :jm_toString, []))
        JR.put(this, :string, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :listString)]), :jm_append, [JR.get(this, :appendText)]), :jm_toString, []))
        throw({:jreturn, JR.lget(f, :isRemoved)})
    end)
  end


  def jm_add(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        CurrentlyPressedTouchButtonSingleton.jm_add(this, JR.lget(f, :touchButtonInput))
        JR.put(this, :listString, JR.call(JR.get(this, :list), :jm_toString, []))
        JR.put(this, :string, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :listString)]), :jm_append, [JR.get(this, :appendText)]), :jm_toString, []))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :string)})
    end)
  end
end


