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

defmodule PickupBehavior do
  def jsuper(), do: JObject
def jstatic_NULL_PICKUP_BEHAVIOR(), do: JR.static_get(__MODULE__, :NULL_PICKUP_BEHAVIOR, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_PICKUP_BEHAVIOR(value), do: JR.static_put(__MODULE__, :NULL_PICKUP_BEHAVIOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :countedIndex, 0)
    JR.put(this, :ownerLayerInterface, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            PickupBehavior.jstatic_set_NULL_PICKUP_BEHAVIOR(PickupBehavior.jnew(CollidableCompositeLayer.jm_getNullInstance(), 0))
        end
        throw({:jreturn, PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR()})
    end)
  end


  def jinit(this, p_ownerLayerInterface, p_countedIndex) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :countedIndex, p_countedIndex)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :ownerLayerInterface, JR.lget(f, :ownerLayerInterface))
        JR.put(this, :countedIndex, JR.lget(f, :countedIndex))
    end)
  end

  def jnew(p_ownerLayerInterface, p_countedIndex) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_countedIndex)
    this
  end


  def jm_doPickup(this, p_pickupProcessorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickupProcessorInterface, p_pickupProcessorInterface)
        try do
            JR.lset(f, :healthInterfaceCompositeInterface, JR.get(this, :ownerLayerInterface))
            if JR.call(JR.call(JR.lget(f, :healthInterfaceCompositeInterface), :jm_getHealthInterface, []), :jm_isAlive, []) do
                JR.call(JR.lget(f, :pickupProcessorInterface), :jm_process, [JR.get(this, :ownerLayerInterface)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "doPickup", JR.lget(f, :e)])
        end
    end)
  end


  def jm_doPickupLayer(this, p_pickupLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickupLayerInterface, p_pickupLayerInterface)
        try do
            JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, JR.call(JR.lget(f, :pickupLayerInterface), :jm_getPickedUpLayerInterfaceFactoryInterface, []))
            JR.lset(f, :pickedUpLayerType, JR.call(JR.lget(f, :pickedUpLayerInterfaceFactoryInterface), :jm_getPickedUpLayerType, []))
            JR.lset(f, :pickedUpLayerTypeFactory, PickedUpLayerTypeFactory.jm_getInstance())
            if ((((JR.lget(f, :pickedUpLayerType) == JR.get(JR.lget(f, :pickedUpLayerTypeFactory), :BEAM)) || (JR.lget(f, :pickedUpLayerType) == JR.get(JR.lget(f, :pickedUpLayerTypeFactory), :MINE))) || (JR.lget(f, :pickedUpLayerType) == JR.get(JR.lget(f, :pickedUpLayerTypeFactory), :PROJECTILE))) || (JR.lget(f, :pickedUpLayerType) == JR.get(JR.lget(f, :pickedUpLayerTypeFactory), :ENHANCEMENT))) do
                JR.call(this, :jm_add, [JR.lget(f, :pickedUpLayerInterfaceFactoryInterface)])
            else
                if (JR.call(JR.lget(f, :pickedUpLayerInterfaceFactoryInterface), :jm_getPickedUpLayerType, []) == JR.get(JR.lget(f, :pickedUpLayerTypeFactory), :PART)) do
                JR.lset(f, :collidableDestroyableDamageableLayer, JR.get(this, :ownerLayerInterface))
                JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_addPart, [JR.lget(f, :pickedUpLayerInterfaceFactoryInterface)])
            else
                if (JR.lget(f, :pickedUpLayerType) == JR.get(JR.lget(f, :pickedUpLayerTypeFactory), :NONE)) do
                nil
            else
                JR.lset(f, :pickupProcessorInterface, JR.lget(f, :pickedUpLayerInterfaceFactoryInterface))
                JR.call(this, :jm_doPickup, [JR.lget(f, :pickupProcessorInterface)])
            end
            end
            end
            JR.call(JR.lget(f, :pickupLayerInterface), :jm_setPickedUp, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_putOE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "doPickup", JR.lget(f, :e))
        end
    end)
  end


  def jm_add(this, p_countedPickedUpLayerInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :countedPickedUpLayerInterfaceFactoryInterface, p_countedPickedUpLayerInterfaceFactoryInterface)
        JR.lset(f, :partIndex, (JR.call(JR.lget(f, :countedPickedUpLayerInterfaceFactoryInterface), :jm_getId, []) + JR.get(this, :countedIndex)))
        JR.call(this, :jm_addAt, [JR.lget(f, :countedPickedUpLayerInterfaceFactoryInterface), JR.lget(f, :partIndex)])
    end)
  end


  def jm_addAt(this, p_countedPickedUpLayerInterfaceFactoryInterface, p_partIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :countedPickedUpLayerInterfaceFactoryInterface, p_countedPickedUpLayerInterfaceFactoryInterface)
      JR.lset(f, :partIndex, p_partIndex)
        JR.lset(f, :collidableDestroyableDamageableLayer, JR.get(this, :ownerLayerInterface))
        JR.lset(f, :countedLayerInterfaceFactory, JR.aget(JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getPartInterfaceArray, []), JR.lget(f, :partIndex)))
        JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_setTotal, [(JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_getTotal, []) + JR.call(JR.lget(f, :countedPickedUpLayerInterfaceFactoryInterface), :jm_getTotal, []))])
    end)
  end


  def jm_getFirstAvailableCountedLayerInterfaceFactory(this, p_pickedUpLayerTypeArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickedUpLayerTypeArray, p_pickedUpLayerTypeArray)
        JR.lset(f, :collidableDestroyableDamageableLayer, JR.get(this, :ownerLayerInterface))
        JR.lset(f, :partInterfaceArray, JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getPartInterfaceArray, []))
        JR.lset(f, :size, JR.alength(JR.lget(f, :partInterfaceArray)))
        JR.lset(f, :nextCountedLayerInterfaceFactory, nil)
        JR.lset(f, :countedPickedUpLayerInterfaceFactory, nil)
        JR.lset(f, :index, JR.get(this, :countedIndex))
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextCountedLayerInterfaceFactory, JR.aget(JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getPartInterfaceArray, []), JR.lget(f, :index)))
            JR.lset(f, :countedPickedUpLayerInterfaceFactory, JR.call(JR.lget(f, :nextCountedLayerInterfaceFactory), :jm_getCountedPickedUpLayerInterfaceFactory, []))
            JR.lset(f, :index2, JR.alength(JR.lget(f, :pickedUpLayerTypeArray)))
            JR.jfor(fn -> (JR.lpreinc(f, :index2, -1) >= 0) end, fn -> nil end, fn ->
                if (JR.call(JR.lget(f, :countedPickedUpLayerInterfaceFactory), :jm_getPickedUpLayerType, []) == JR.aget(JR.lget(f, :pickedUpLayerTypeArray), JR.lget(f, :index2))) do
                    if (JR.call(JR.lget(f, :nextCountedLayerInterfaceFactory), :jm_getTotal, []) > 0) do
                        throw({:jreturn, JR.lget(f, :nextCountedLayerInterfaceFactory)})
                    end
                end
            end)
        end)
        throw({:jreturn, CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY()})
    end)
  end


  def jm_getCountedLayerInterfaceFactoryForSlot(this, p_slotIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :slotIndex, p_slotIndex)
        JR.lset(f, :currentSlot, 0)
        JR.lset(f, :collidableDestroyableDamageableLayer, JR.get(this, :ownerLayerInterface))
        JR.lset(f, :partInterfaceArray, JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getPartInterfaceArray, []))
        JR.lset(f, :size, JR.alength(JR.lget(f, :partInterfaceArray)))
        JR.lset(f, :nextCountedLayerInterfaceFactory, nil)
        JR.lset(f, :index, JR.get(this, :countedIndex))
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextCountedLayerInterfaceFactory, JR.aget(JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getPartInterfaceArray, []), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :nextCountedLayerInterfaceFactory), :jm_getTotal, []) > 0) do
                if (JR.lget(f, :currentSlot) == JR.lget(f, :slotIndex)) do
                    throw({:jreturn, JR.lget(f, :nextCountedLayerInterfaceFactory)})
                else
                    JR.lpostinc(f, :currentSlot, 1)
                end
            end
        end)
        throw({:jreturn, CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY()})
    end)
  end


  def jm_getCountedIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :countedIndex)})
    end)
  end
end


