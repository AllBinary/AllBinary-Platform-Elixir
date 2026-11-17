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

defmodule LayerProcessorInterface do
  def jsuper(), do: JObject


  def jm_getLayerManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getLayerManager")})
    end)
  end


  def jm_processAt(this, p_allBinaryLayerManager, p_layerInterface, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :index, p_index)
      throw({:jexception, JR.exception("AbstractMethodError", "processAt")})
    end)
  end


  def jm_isProcessorLayer(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "isProcessorLayer")})
    end)
  end
end


