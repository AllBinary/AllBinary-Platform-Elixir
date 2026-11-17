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
# package org.allbinary.game.ag.ai

defmodule BoundBounceAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :currentRelativeAngle, 0)
    JR.put(this, :layerBounds, nil)
    JR.put(this, :boundsVisitorInterface, nil)
        JR.put(this, :currentRelativeAngle, 0)
        
        
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput, p_layerBounds, p_boundsVisitorInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
      JR.lset(f, :layerBounds, p_layerBounds)
      JR.lset(f, :boundsVisitorInterface, p_boundsVisitorInterface)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        BoundBounceAI.jinitfields(this)
        JR.put(this, :layerBounds, JR.lget(f, :layerBounds))
        JR.put(this, :boundsVisitorInterface, JR.lget(f, :boundsVisitorInterface))
    end)
  end

  def jnew(p_ownerLayerInterface, p_gameInput, p_layerBounds, p_boundsVisitorInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_gameInput, p_layerBounds, p_boundsVisitorInterface)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :rectange, JR.call(JR.get(this, :layerBounds), :jm_getRectangleP, []))
        JR.call(JR.lget(f, :graphics), :jm_drawRect, [JR.call(JR.call(JR.lget(f, :rectange), :jm_getPoint, []), :jm_getX, []), JR.call(JR.call(JR.lget(f, :rectange), :jm_getPoint, []), :jm_getY, []), JR.call(JR.lget(f, :rectange), :jm_getWidth, []), JR.call(JR.lget(f, :rectange), :jm_getHeight, [])])
    end)
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.call(JR.get(this, :layerBounds), :jm_visit, [JR.get(this, :boundsVisitorInterface)])
    end)
  end
end


