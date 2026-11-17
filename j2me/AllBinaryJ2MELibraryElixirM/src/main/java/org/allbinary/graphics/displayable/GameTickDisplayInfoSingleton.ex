# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.displayable

defmodule GameTickDisplayInfoSingleton do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameTickDisplayInfoSingleton.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :lastWidth, 0)
    JR.put(this, :lastHeight, 0)
    JR.put(this, :lastHalfWidth, 0)
    JR.put(this, :lastHalfHeight, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :lastWidth, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []))
        JR.put(this, :lastHeight, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHeight, []))
        JR.put(this, :lastHalfWidth, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, []))
        JR.put(this, :lastHalfHeight, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfHeight, []))
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
        throw({:jreturn, GameTickDisplayInfoSingleton.jstatic_instance()})
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :lastWidth, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []))
        JR.put(this, :lastHeight, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHeight, []))
        JR.put(this, :lastHalfWidth, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, []))
        JR.put(this, :lastHalfHeight, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfHeight, []))
    end)
  end


  def jm_getLastWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastWidth)})
    end)
  end


  def jm_getLastHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastHeight)})
    end)
  end


  def jm_getLastHalfWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastHalfWidth)})
    end)
  end


  def jm_getLastHalfHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastHalfHeight)})
    end)
  end
end


