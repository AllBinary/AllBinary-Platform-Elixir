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
# package org.allbinary.game.collision

defmodule OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer do
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
        LayerProcessor.jinit(this, OptimizedAllBinaryCollisionLayerManager.jnew())
        OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_processAt(this, p_allBinaryLayerManager, p_layerInterface, p_startIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :startIndex, p_startIndex)
        JR.lset(f, :collidableInterfaceCompositeInterface, JR.lget(f, :layerInterface))
        JR.lset(f, :collidableBase, JR.call(JR.lget(f, :collidableInterfaceCompositeInterface), :jm_getCollidableInferface, []))
        if JR.call(JR.lget(f, :collidableBase), :jm_isCollidable, [JR.lget(f, :collidableInterfaceCompositeInterface)]) do
            JR.lset(f, :layerManager, JR.call(this, :jm_getLayerManager, []))
            JR.lset(f, :size, JR.call(JR.lget(f, :layerManager), :jm_getSize, []))
            JR.lset(f, :collidableInterfaceCompositeInterface2, nil)
            JR.lset(f, :collidableBase2, nil)
            JR.lset(f, :index, JR.int32(JR.lget(f, :startIndex) + 1))
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :collidableInterfaceCompositeInterface2, JR.call(JR.lget(f, :layerManager), :jm_getLayerAt, [JR.lget(f, :index)]))
                JR.lset(f, :collidableBase2, JR.call(JR.lget(f, :collidableInterfaceCompositeInterface2), :jm_getCollidableInferface, []))
                if (JR.call(JR.lget(f, :collidableBase2), :jm_isCollidable, [JR.lget(f, :collidableInterfaceCompositeInterface)]) && JR.call(JR.lget(f, :collidableBase), :jm_isCollision, [JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :collidableInterfaceCompositeInterface2)])) do
                    JR.call(JR.lget(f, :collidableBase), :jm_collide, [JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :collidableInterfaceCompositeInterface2)])
                    JR.call(JR.lget(f, :collidableBase2), :jm_collide, [JR.lget(f, :collidableInterfaceCompositeInterface2), JR.lget(f, :collidableInterfaceCompositeInterface)])
                end
            end)
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


