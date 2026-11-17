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

defmodule SingleLayerLayerProcessor do
  def jsuper(), do: LayerProcessor

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
        LayerProcessor.jinit(this, SingleLayerLayerManager.jnew())
        SingleLayerLayerProcessor.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_process(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :layerManager, JR.call(this, :jm_getLayerManager, []))
        JR.call(this, :jm_processAt, [JR.lget(f, :allBinaryLayerManager), JR.call(JR.lget(f, :layerManager), :jm_getLayerAt, [0]), 0])
    end)
  end
end


