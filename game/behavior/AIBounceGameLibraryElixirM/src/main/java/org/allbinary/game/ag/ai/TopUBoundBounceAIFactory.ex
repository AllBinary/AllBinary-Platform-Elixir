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

defmodule TopUBoundBounceAIFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        JR.lset(f, :velocityInterfaceCompositeInterface, JR.lget(f, :ownerLayerInterface))
        JR.lset(f, :velocityInterface, JR.call(JR.lget(f, :velocityInterfaceCompositeInterface), :jm_getVelocityProperties, []))
        JR.lset(f, :maxDistancePerTick, (Bitwise.bsr(JR.call(JR.lget(f, :velocityInterface), :jm_getMaxForwardVelocity, []), JR.call(JR.call(JR.lget(f, :velocityInterface), :jm_getVelocityXBasicDecimalP, []), :jm_getScaledFactor, []))))
        JR.lset(f, :halfWidth, (((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getWidth, []) * 2) + JR.lget(f, :maxDistancePerTick)) + 1))
        JR.lset(f, :halfHeight, (((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, []) * 2) + JR.lget(f, :maxDistancePerTick)) + 1))
        JR.lset(f, :point, JR.call(PointFactory.jm_getInstance(), :jm_createXY, [JR.lget(f, :halfWidth), JR.int32(JR.lget(f, :halfHeight) + 60)]))
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :rectangle, Rectangle.jnew(JR.lget(f, :point), (((JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) - JR.lget(f, :halfWidth)) - JR.call(JR.lget(f, :point), :jm_getX, []))), (((JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) - JR.lget(f, :halfHeight)) - JR.call(JR.lget(f, :point), :jm_getY, [])))))
        throw({:jreturn, BoundBounceAI.jnew(JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput), TopULayerBounds.jnew(JR.lget(f, :rectangle)), ReverseVelocityBoundsVisitor.jnew(JR.lget(f, :ownerLayerInterface)))})
    end)
  end
end


