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
# package org.allbinary.game.collision.layer

defmodule CollidableInterfaceLayerProcessor do
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
        LayerProcessor.jinit(this, CollidableInterfaceLayerManager.jnew())
        CollidableInterfaceLayerProcessor.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
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
        JR.lset(f, :collidableInterfaceCompositeInterface, JR.lget(f, :layerInterface))
        if JR.call(JR.call(JR.lget(f, :collidableInterfaceCompositeInterface), :jm_getCollidableInferface, []), :jm_isCollidable, [JR.lget(f, :collidableInterfaceCompositeInterface)]) do
            JR.call(AllBinaryCollisionManager.jm_getInstance(), :jm_process, [JR.call(this, :jm_getLayerManager, []), JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :index)])
        end
    end)
  end


  def jm_isProcessorLayer(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        if JR.call(JR.lget(f, :layerInterface), :jm_implmentsCollidableInterface, []) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end
end


