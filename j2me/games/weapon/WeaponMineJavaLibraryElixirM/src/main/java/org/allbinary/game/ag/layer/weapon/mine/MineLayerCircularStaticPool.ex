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
# package org.allbinary.game.ag.layer.weapon.mine

defmodule MineLayerCircularStaticPool do
  def jsuper(), do: JObject
def jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL(), do: JR.static_get(__MODULE__, :WEAPON_LAYER_CIRCULAR_STATIC_POOL, fn -> WeaponLayerCircularPool.jnew() end)
  def jstatic_set_WEAPON_LAYER_CIRCULAR_STATIC_POOL(value), do: JR.static_put(__MODULE__, :WEAPON_LAYER_CIRCULAR_STATIC_POOL, value)

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


  def jm_init(p_viewPositionFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :viewPositionFactoryInterface, p_viewPositionFactoryInterface)
        MineCountedPickedUpLayerInterfaceFactory.jm_init()
        JR.call(MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL(), :jm_initAllBinaryLayerCircularPool, [MineLayerFactory.jnew(JR.lget(f, :viewPositionFactoryInterface)), 20])
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL()})
    end)
  end
end


