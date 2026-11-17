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

defmodule CurrentlyPressedTouchButtonSingleton do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CurrentlyPressedTouchButtonSingleton.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CurrentlyPressedTouchButtonSingleton.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_size(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_size, [])})
    end)
  end


  def jm_removeAt(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_removeAt, [JR.lget(f, :index)])})
    end)
  end


  def jm_remove(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :touchButtonInput)])})
    end)
  end


  def jm_get(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index))})
    end)
  end


  def jm_contains(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :touchButtonInput)])})
    end)
  end


  def jm_add(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :touchButtonInput)])
    end)
  end
end


