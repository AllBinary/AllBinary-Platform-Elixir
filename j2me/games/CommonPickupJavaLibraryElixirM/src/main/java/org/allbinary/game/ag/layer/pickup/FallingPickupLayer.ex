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
# package org.allbinary.game.ag.layer.pickup

defmodule FallingPickupLayer do
  def jsuper(), do: PickupLayer
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "FallingPickupLayer" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_remoteInfo) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :remoteInfo, p_remoteInfo)
        PickupLayer.jinit(this, FallingPickupLayer.jstatic_NAME(), JR.lget(f, :remoteInfo), 0, CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY(), JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]), Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 0, 0), ViewPosition.jm_getInstanceD())
        FallingPickupLayer.jinitfields(this)
    end)
  end

  def jnew(p_remoteInfo) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_remoteInfo)
    this
  end


  def jm_processTick(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.call(this, :jm_setPosition, [JR.get(this, :x), (JR.get(this, :y) + 1), JR.get(this, :z)])
    end)
  end


  def jm_implmentsTickableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end
end


