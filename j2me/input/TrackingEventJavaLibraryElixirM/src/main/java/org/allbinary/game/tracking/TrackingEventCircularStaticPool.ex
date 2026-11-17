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
# package org.allbinary.game.tracking

defmodule TrackingEventCircularStaticPool do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TrackingEventCircularStaticPool.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EVENT_POOL, nil)
        JR.put(this, :EVENT_POOL, AllBinaryEventCircularPool.jnew(20))
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TrackingEventCircularStaticPool.jstatic_instance()})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :EVENT_POOL), :jm_initAllBinaryEventCircularPool, [TrackingEventFactory.jnew()])
    end)
  end


  def jm_getNextInstance(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.lset(f, :trackingEvent, JR.call(JR.get(this, :EVENT_POOL), :jm_getNextInstance, []))
        JR.call(JR.lget(f, :trackingEvent), :jm_setLayerInterfaceForCircularStaticPool, [JR.lget(f, :layerInterface)])
        throw({:jreturn, JR.lget(f, :trackingEvent)})
    end)
  end
end


