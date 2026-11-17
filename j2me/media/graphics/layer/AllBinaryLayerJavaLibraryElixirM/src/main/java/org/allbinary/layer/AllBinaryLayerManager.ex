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
# package org.allbinary.layer

defmodule AllBinaryLayerManager do
  def jsuper(), do: LayerManager

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :layerManagerEventHandler, nil)
    JR.put(this, :createLayerManagerEvent, nil)
    JR.put(this, :deleteLayerManagerEvent, nil)
    JR.put(this, :basicLayerProcessorArray, nil)
        JR.put(this, :layerManagerEventHandler, LayerManagerEventHandler.jm_getInstance())
        JR.put(this, :createLayerManagerEvent, LayerManagerEvent.jnew(this, JR.get(JR.get(this, :layerManagerEventHandler), :CREATE)))
        JR.put(this, :deleteLayerManagerEvent, LayerManagerEvent.jnew(this, JR.get(JR.get(this, :layerManagerEventHandler), :DELETE)))
        JR.put(this, :basicLayerProcessorArray, JR.anew(0, nil))
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        LayerManager.jinit(this, LayerManagerNoDebug.jm_getInstance())
        AllBinaryLayerManager.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getLayerProcessorArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicLayerProcessorArray)})
    end)
  end


  def jm_setLayerProcessorArray(this, p_layerProcessorArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerProcessorArray, p_layerProcessorArray)
        JR.put(this, :basicLayerProcessorArray, JR.lget(f, :layerProcessorArray))
    end)
  end


  def jm_log(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :size, JR.alength(JR.get(this, :basicLayerProcessorArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :layerProcessorInterface, JR.aget(JR.get(this, :basicLayerProcessorArray), JR.lget(f, :index)))
        end)
    end)
  end


  def jm_append(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        if !JR.call(this, :jm_contains, [JR.lget(f, :layerInterface)]) do
            JR.call(this, :jm_appendProcessors, [JR.lget(f, :layerInterface)])
            LayerManager.jm_append(this, JR.lget(f, :layerInterface))
        end
    end)
  end


  def jm_appendAt(this, p_layerInterface, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :index, p_index)
        if !JR.call(this, :jm_contains, [JR.lget(f, :layerInterface)]) do
            JR.call(this, :jm_appendProcessors, [JR.lget(f, :layerInterface)])
            LayerManager.jm_appendAt(this, JR.lget(f, :layerInterface), JR.lget(f, :index))
        end
    end)
  end


  def jm_appendProcessors(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.call(JR.get(this, :createLayerManagerEvent), :jm_setLayerInterface, [JR.lget(f, :layerInterface)])
        JR.call(JR.get(this, :layerManagerEventHandler), :jm_fireEvent, [JR.get(this, :createLayerManagerEvent)])
        JR.lset(f, :layerProcessorInterface, nil)
        JR.lset(f, :index, JR.alength(JR.get(this, :basicLayerProcessorArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :layerProcessorInterface, JR.aget(JR.get(this, :basicLayerProcessorArray), JR.lget(f, :index)))
            if JR.call(JR.lget(f, :layerProcessorInterface), :jm_isProcessorLayer, [JR.lget(f, :layerInterface)]) do
                JR.call(JR.call(JR.lget(f, :layerProcessorInterface), :jm_getLayerManager, []), :jm_append, [JR.lget(f, :layerInterface)])
            end
        end)
    end)
  end


  def jm_remove(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.call(JR.get(this, :deleteLayerManagerEvent), :jm_setLayerInterface, [JR.lget(f, :layerInterface)])
        JR.call(JR.get(this, :layerManagerEventHandler), :jm_fireDeleteEvent, [JR.get(this, :deleteLayerManagerEvent)])
        JR.lset(f, :layerProcessorInterface, nil)
        JR.lset(f, :index, JR.alength(JR.get(this, :basicLayerProcessorArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :layerProcessorInterface, JR.aget(JR.get(this, :basicLayerProcessorArray), JR.lget(f, :index)))
            JR.call(JR.call(JR.lget(f, :layerProcessorInterface), :jm_getLayerManager, []), :jm_remove, [JR.lget(f, :layerInterface)])
        end)
        LayerManager.jm_remove(this, JR.lget(f, :layerInterface))
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :layerProcessorInterface, nil)
        JR.lset(f, :size, JR.alength(JR.get(this, :basicLayerProcessorArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :layerProcessorInterface, JR.aget(JR.get(this, :basicLayerProcessorArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :layerProcessorInterface), :jm_process, [this])
        end)
    end)
  end


  def jm_cleanup(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :layerProcessorInterface, nil)
        JR.lset(f, :size, JR.alength(JR.get(this, :basicLayerProcessorArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :layerProcessorInterface, JR.aget(JR.get(this, :basicLayerProcessorArray), JR.lget(f, :index)))
            JR.call(JR.call(JR.lget(f, :layerProcessorInterface), :jm_getLayerManager, []), :jm_cleanup, [])
        end)
        LayerManager.jm_cleanup(this)
    end)
  end
end


