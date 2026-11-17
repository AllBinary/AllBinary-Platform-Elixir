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

defmodule CountedPickedUpLayerInterfaceFactory do
  def jsuper(), do: PickedUpLayerInterfaceFactory
def jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY(), do: JR.static_get(__MODULE__, :NULL_COUNTED_PICKUP_LAYER_FACTORY, fn -> CountedPickedUpLayerInterfaceFactory.jnew(JR.get(PickedUpLayerTypeFactory.jm_getInstance(), :NONE), IconLayer.jstatic_NULL_ICON_LAYER(), JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0])) end)
  def jstatic_set_NULL_COUNTED_PICKUP_LAYER_FACTORY(value), do: JR.static_put(__MODULE__, :NULL_COUNTED_PICKUP_LAYER_FACTORY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :id, 0)
        
    nil
  end


  def jinit(this, p_pickeUpLayerType, p_iconLayer, p_animationInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :pickeUpLayerType, p_pickeUpLayerType)
      JR.lset(f, :iconLayer, p_iconLayer)
      JR.lset(f, :animationInterface, p_animationInterface)
        PickedUpLayerInterfaceFactory.jinit(this, JR.lget(f, :pickeUpLayerType), JR.lget(f, :iconLayer), JR.lget(f, :animationInterface))
        CountedPickedUpLayerInterfaceFactory.jinitfields(this)
        JR.lset(f, :list, JR.call(CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance(), :jm_getList, []))
        JR.put(this, :id, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.call(JR.lget(f, :list), :jm_add, [this])
    end)
  end

  def jnew(p_pickeUpLayerType, p_iconLayer, p_animationInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_pickeUpLayerType, p_iconLayer, p_animationInterface)
    this
  end


  def jm_getNextInstance(this, p_hashtable, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        throw({:jexception, JR.exception("Exception", JR.get(CommonStrings.jm_getInstance(), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_getTotal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end
end


