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
# package org.allbinary.game.ag.layer.pickup.points

defmodule Points30kPickedUpLayerInterfaceFactory do
  def jsuper(), do: PickedUpLayerInterfaceFactory
def jstatic_pickedUpLayerInterfaceFactoryInterface(), do: JR.static_get(__MODULE__, :pickedUpLayerInterfaceFactoryInterface, fn -> CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY() end)
  def jstatic_set_pickedUpLayerInterfaceFactoryInterface(value), do: JR.static_put(__MODULE__, :pickedUpLayerInterfaceFactoryInterface, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :pool, nil)
        JR.put(this, :pool, PointsLayerCircularStaticPool.jnew(PointsLayerFactory.jnew((JR.call(GameConfigurationUtil.jm_getInstance(), :jm_getCompetitionValue, []) * 30000)), 1))
    nil
  end


  def jm_init() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        Points30kPickedUpLayerInterfaceFactory.jstatic_set_pickedUpLayerInterfaceFactoryInterface(Points30kPickedUpLayerInterfaceFactory.jnew())
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        PickedUpLayerInterfaceFactory.jinit(this, JR.get(PickedUpLayerTypeFactory.jm_getInstance(), :POINTS), IconLayerFactory.jm_getInstance(JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(PointsResources.jm_getInstance(), :RESOURCE_3)]), :jm_getInstance, [0]), 10, 10), JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(PointsResources.jm_getInstance(), :RESOURCE_3)]), :jm_getInstance, [0]))
        Points30kPickedUpLayerInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getTotal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 1})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, Points30kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface()})
    end)
  end


  def jm_process(this, p_sourceLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
        JR.call(JR.get(this, :pool), :jm_visit, [JR.lget(f, :sourceLayerInterface)])
    end)
  end
end


