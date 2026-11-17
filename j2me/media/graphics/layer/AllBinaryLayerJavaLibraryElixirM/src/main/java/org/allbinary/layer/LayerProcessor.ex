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

defmodule LayerProcessor do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :layerManager, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
    nil
  end


  def jinit(this, p_layerManager) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :layerManager, JR.lget(f, :layerManager))
    end)
  end

  def jnew(p_layerManager) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerManager)
    this
  end


  def jm_processAt(this, p_allBinaryLayerManager, p_layerInterface, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_isProcessorLayer(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_getLayerManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :layerManager)})
    end)
  end


  def jm_process(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :layerManager, JR.call(this, :jm_getLayerManager, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :layerManager), :jm_getSize, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(this, :jm_processAt, [JR.lget(f, :allBinaryLayerManager), JR.call(JR.lget(f, :layerManager), :jm_getLayerAt, [JR.lget(f, :index)]), JR.lget(f, :index)])
        end)
    end)
  end
end


