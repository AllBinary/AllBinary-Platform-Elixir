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
# package org.allbinary.game.ag.ai.scroller

defmodule BasePatrolAI do
  def jsuper(), do: BasicAI
def jstatic_MAX_DISTANCE(), do: JR.static_get(__MODULE__, :MAX_DISTANCE, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [2]) end)
  def jstatic_set_MAX_DISTANCE(value), do: JR.static_put(__MODULE__, :MAX_DISTANCE, value)
def jstatic_DIRECTION_ARRAY(), do: JR.static_get(__MODULE__, :DIRECTION_ARRAY, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [3]) end)
  def jstatic_set_DIRECTION_ARRAY(value), do: JR.static_put(__MODULE__, :DIRECTION_ARRAY, value)
def jstatic_FIRING_DISTANCE(), do: JR.static_get(__MODULE__, :FIRING_DISTANCE, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [4]) end)
  def jstatic_set_FIRING_DISTANCE(value), do: JR.static_put(__MODULE__, :FIRING_DISTANCE, value)
def jstatic_SPEED(), do: JR.static_get(__MODULE__, :SPEED, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [5]) end)
  def jstatic_set_SPEED(value), do: JR.static_put(__MODULE__, :SPEED, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :maxDistance, nil)
    JR.put(this, :currentDistance, 0)
    JR.put(this, :xTotalDistance, 0)
    JR.put(this, :lastKeyDirection, 0)
    JR.put(this, :keyDirection, 0)
        
        
        JR.put(this, :xTotalDistance, 0)
        JR.put(this, :lastKeyDirection, Canvas.jstatic_RIGHT())
        JR.put(this, :keyDirection, Canvas.jstatic_RIGHT())
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        BasePatrolAI.jinitfields(this)
        JR.put(this, :maxDistance, JR.call(JR.lget(f, :hashtable), :jm_get, [BasePatrolAI.jstatic_MAX_DISTANCE()]))
        JR.put(this, :currentDistance, JR.call(JR.get(this, :maxDistance), :jm_intValue, []))
    end)
  end

  def jnew(p_hashtable, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_updateTotalDistance, [])
        JR.call(this, :jm_changeDirectionIfReachedPacingAreaMax, [])
    end)
  end


  def jm_updateTotalDistance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :velocityInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :velocityProperties, JR.call(JR.lget(f, :velocityInterfaceCompositeInterface), :jm_getVelocityProperties, []))
        JR.put(this, :xTotalDistance, JR.int32(JR.get(this, :xTotalDistance) + JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityXBasicDecimalP, []), :jm_getScaled, [])))
    end)
  end


  def jm_changeDirectionIfReachedPacingAreaMax(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :mathUtil, MathUtil.jm_getInstance())
        JR.lset(f, :totalDistance, JR.call(JR.lget(f, :mathUtil), :jm_abs, [JR.get(this, :xTotalDistance)]))
        if (JR.lget(f, :totalDistance) > JR.get(this, :currentDistance)) do
            JR.call(this, :jm_nextDirection, [])
        end
    end)
  end


  def jm_nextDirection(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :lastKeyDirection) == Canvas.jstatic_LEFT()) do
            JR.put(this, :keyDirection, Canvas.jstatic_RIGHT())
            JR.put(this, :lastKeyDirection, JR.get(this, :keyDirection))
            JR.put(this, :xTotalDistance, 0)
        else
            if (JR.get(this, :lastKeyDirection) == Canvas.jstatic_RIGHT()) do
            JR.put(this, :keyDirection, Canvas.jstatic_LEFT())
            JR.put(this, :lastKeyDirection, JR.get(this, :keyDirection))
            JR.put(this, :xTotalDistance, 0)
        end
        end
    end)
  end


  def jm_disable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


