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
# package org.allbinary.game.layer.pickup

defmodule PickupLayerCircularStaticPool do
  def jsuper(), do: AllBinaryLayerCircularPool
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> PickupLayerCircularStaticPool.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

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
      AllBinaryLayerCircularPool.jinit(this)
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
        throw({:jreturn, PickupLayerCircularStaticPool.jstatic_SINGLETON()})
    end)
  end


  def jm_getInstanceXYZ(this, p_pickedUpLayerInterfaceFactoryInterface, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, p_pickedUpLayerInterfaceFactoryInterface)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.lset(f, :pickupLayer, JR.call(this, :jm_getNextInstance, []))
        JR.call(JR.lget(f, :pickupLayer), :jm_initXYZ, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])
        JR.call(JR.lget(f, :pickupLayer), :jm_init, [JR.lget(f, :pickedUpLayerInterfaceFactoryInterface), JR.call(JR.lget(f, :pickedUpLayerInterfaceFactoryInterface), :jm_getAnimationInterface, [])])
        throw({:jreturn, JR.lget(f, :pickupLayer)})
    end)
  end
end


