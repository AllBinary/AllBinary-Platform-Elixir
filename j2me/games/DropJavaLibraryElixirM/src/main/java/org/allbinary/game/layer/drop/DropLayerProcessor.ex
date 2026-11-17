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
# package org.allbinary.game.layer.drop

defmodule DropLayerProcessor do
  def jsuper(), do: BasicLayerProcessor
def jstatic_LAYER_PROCESSOR(), do: JR.static_get(__MODULE__, :LAYER_PROCESSOR, fn -> DropLayerProcessor.jnew() end)
  def jstatic_set_LAYER_PROCESSOR(value), do: JR.static_put(__MODULE__, :LAYER_PROCESSOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      BasicLayerProcessor.jinit(this)
      jinitfields(this)
        nil
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
        throw({:jreturn, DropLayerProcessor.jstatic_LAYER_PROCESSOR()})
    end)
  end


  def jm_process(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :list, JR.call(this, :jm_getList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :layerInterface, nil)
        JR.lset(f, :dropLayerInterface, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :layerInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :dropLayerInterface, JR.lget(f, :layerInterface))
            JR.lset(f, :layerInterface, JR.call(JR.lget(f, :dropLayerInterface), :jm_getDroppedLayer, []))
            JR.call(JR.lget(f, :allBinaryLayerManager), :jm_append, [JR.lget(f, :layerInterface)])
        end)
        JR.call(JR.lget(f, :list), :jm_clear, [])
    end)
  end
end


