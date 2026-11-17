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

defmodule BasicLayerProcessor do
  def jsuper(), do: JObject
def jstatic_NULL_LAYER_PROCESSOR(), do: JR.static_get(__MODULE__, :NULL_LAYER_PROCESSOR, fn -> BasicLayerProcessor.jnew() end)
  def jstatic_set_NULL_LAYER_PROCESSOR(value), do: JR.static_put(__MODULE__, :NULL_LAYER_PROCESSOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :list, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
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


  def jm_add(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        if !JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :layerInterface)]) do
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :layerInterface)])
        end
    end)
  end


  def jm_process(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        throw({:jexception, JR.exception("Exception", JR.get(CommonStrings.jm_getInstance(), :NOT_IMPLEMENTED))})
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


