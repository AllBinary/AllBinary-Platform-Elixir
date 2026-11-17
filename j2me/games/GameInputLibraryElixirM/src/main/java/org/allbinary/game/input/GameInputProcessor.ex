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

defmodule GameInputProcessor do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameInputProcessor.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInputProcessor.jstatic_instance()})
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


  def jm_processEvent(this, p_allbinaryLayerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_processReleasedEvent(this, p_allbinaryLayerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_processAnalog(this, p_allbinaryLayerManager, p_gameKeyEvent, p_analogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      JR.lset(f, :analogValue, p_analogValue)
        nil
    end)
  end


  def jm_process(this, p_allbinaryLayerManager, p_keyAsInteger) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :keyAsInteger, p_keyAsInteger)
        nil
    end)
  end


  def jm_processReleased(this, p_allbinaryLayerManager, p_keyAsInteger) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :keyAsInteger, p_keyAsInteger)
        nil
    end)
  end
end


