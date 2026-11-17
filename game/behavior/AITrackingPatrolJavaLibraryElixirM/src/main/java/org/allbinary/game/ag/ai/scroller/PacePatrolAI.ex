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

defmodule PacePatrolAI do
  def jsuper(), do: BasePatrolAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :trackingList, nil)
    JR.put(this, :firingDistance, 0)
    JR.put(this, :isFollowLimitedByTerrain, false)
        
        JR.put(this, :firingDistance, 0)
        JR.put(this, :isFollowLimitedByTerrain, false)
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasePatrolAI.jinit(this, JR.lget(f, :hashtable), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        PacePatrolAI.jinitfields(this)
        JR.call(TrackingEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
        JR.put(this, :trackingList, BasicArrayListD.jnew())
    end)
  end

  def jnew(p_hashtable, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.call(this, :jm_update, [])
        JR.lset(f, :direction, JR.call(this, :jm_setFiringDirectionForTargetIfInRange, []))
        JR.lset(f, :directionFactory, DirectionFactory.jm_getInstance())
        if (JR.lget(f, :direction) == JR.get(JR.lget(f, :directionFactory), :LEFT)) do
            if ((JR.get(this, :lastKeyDirection) != JR.get(this, :keyDirection)) || !JR.get(this, :isFollowLimitedByTerrain)) do
                BasePatrolAI.jm_processKeyAI(this, Canvas.jstatic_LEFT())
            end
            JR.put(this, :keyDirection, Canvas.jstatic_LEFT())
            JR.put(this, :lastKeyDirection, JR.get(this, :keyDirection))
            JR.put(this, :xTotalDistance, 0)
            BasePatrolAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
        else
            if (JR.lget(f, :direction) == JR.get(JR.lget(f, :directionFactory), :RIGHT)) do
            if ((JR.get(this, :lastKeyDirection) != JR.get(this, :keyDirection)) || !JR.get(this, :isFollowLimitedByTerrain)) do
                BasePatrolAI.jm_processKeyAI(this, Canvas.jstatic_RIGHT())
            end
            JR.put(this, :keyDirection, Canvas.jstatic_RIGHT())
            JR.put(this, :lastKeyDirection, JR.get(this, :keyDirection))
            JR.put(this, :xTotalDistance, 0)
            BasePatrolAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
        else
            BasePatrolAI.jm_processKeyAI(this, JR.get(this, :keyDirection))
        end
        end
    end)
  end


  def jm_setFiringDirectionForTargetIfInRange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :directionFactory, DirectionFactory.jm_getInstance())
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :direction, JR.get(JR.lget(f, :directionFactory), :NOT_BORDERED_WITH))
        JR.lset(f, :lastTrackingEvent, nil)
        JR.lset(f, :lastTrackingLayerInterface, nil)
        JR.lset(f, :directionCompositeInterface, nil)
        JR.lset(f, :size, JR.call(JR.get(this, :trackingList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :lastTrackingEvent, JR.call(JR.get(this, :trackingList), :jm_get, [0]))
            JR.lset(f, :lastTrackingLayerInterface, JR.call(JR.lget(f, :lastTrackingEvent), :jm_getLayerInterface, []))
            JR.lset(f, :x, JR.call(JR.lget(f, :lastTrackingLayerInterface), :jm_getXP, []))
            JR.lset(f, :y, JR.call(JR.lget(f, :lastTrackingLayerInterface), :jm_getYP, []))
            JR.lset(f, :yDistance, ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) - JR.lget(f, :y)) - JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, [])))
            JR.lset(f, :xDistance, ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) - JR.lget(f, :x)) - JR.call(JR.lget(f, :ownerLayerInterface), :jm_getWidth, [])))
            JR.lset(f, :absXDistance, abs(JR.lget(f, :xDistance)))
            JR.lset(f, :absYDistance, abs(JR.lget(f, :yDistance)))
            if (JR.lget(f, :absYDistance) <= 100) do
                if (JR.lget(f, :absXDistance) < div(JR.call(this, :jm_getFiringDistance, []), 2)) do
                    JR.lset(f, :directionCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
                    if ((JR.lget(f, :xDistance) < 0) && (JR.call(JR.lget(f, :directionCompositeInterface), :jm_getDirection, []) == JR.get(JR.lget(f, :directionFactory), :RIGHT))) do
                        JR.lset(f, :direction, JR.get(JR.lget(f, :directionFactory), :RIGHT))
                    else
                        if ((JR.lget(f, :xDistance) > 0) && (JR.call(JR.lget(f, :directionCompositeInterface), :jm_getDirection, []) == JR.get(JR.lget(f, :directionFactory), :LEFT))) do
                        JR.lset(f, :direction, JR.get(JR.lget(f, :directionFactory), :LEFT))
                    end
                    end
                end
            end
        end)
        throw({:jreturn, JR.lget(f, :direction)})
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


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onMovement(this, p_trackingEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :trackingEvent, p_trackingEvent)
        JR.call(JR.get(this, :trackingList), :jm_clear, [])
        JR.call(JR.get(this, :trackingList), :jm_add, [JR.lget(f, :trackingEvent)])
    end)
  end


  def jm_getFiringDistance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :firingDistance)})
    end)
  end


  def jm_setFiringDistance(this, p_firingDistance) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :firingDistance, p_firingDistance)
        JR.put(this, :firingDistance, JR.lget(f, :firingDistance))
    end)
  end
end


