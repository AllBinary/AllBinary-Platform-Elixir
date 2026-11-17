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

defmodule DiveAndDirectionalTrackingAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :mathUtil, nil)
    JR.put(this, :directionFactory, nil)
    JR.put(this, :gameTickTimeDelayHelper, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :list, nil)
    JR.put(this, :directionalInterface, nil)
    JR.put(this, :velocityInterface, nil)
    JR.put(this, :directionToKeyMap, nil)
    JR.put(this, :initialDropped, false)
    JR.put(this, :diveP, false)
    JR.put(this, :directionOfTarget, nil)
    JR.put(this, :MIN_DISTANCE, 0)
    JR.put(this, :lastTrackingLayerInterface, nil)
    JR.put(this, :artificialIntelligenceInterface, nil)
    JR.put(this, :aiVistor, nil)
    JR.put(this, :lastDirection, nil)
        JR.put(this, :mathUtil, MathUtil.jm_getInstance())
        JR.put(this, :directionFactory, DirectionFactory.jm_getInstance())
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(500))
        JR.put(this, :list, BasicArrayListD.jnew())
        
        
        JR.put(this, :directionToKeyMap, JR.afrom([Canvas.jstatic_LEFT(), Canvas.jstatic_DOWN(), Canvas.jstatic_UP(), Canvas.jstatic_RIGHT()]))
        JR.put(this, :initialDropped, false)
        JR.put(this, :diveP, false)
        JR.put(this, :directionOfTarget, Direction.jm_getInstance(0))
        JR.put(this, :MIN_DISTANCE, 40)
        JR.put(this, :lastTrackingLayerInterface, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
        
        
        JR.put(this, :lastDirection, JR.get(DirectionFactory.jm_getInstance(), :NO_DIRECTION))
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_artificialIntelligenceInterface, p_gameInput, p_visitor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :artificialIntelligenceInterface, p_artificialIntelligenceInterface)
      JR.lset(f, :gameInput, p_gameInput)
      JR.lset(f, :visitor, p_visitor)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        DiveAndDirectionalTrackingAI.jinitfields(this)
        JR.put(this, :aiVistor, JR.lget(f, :visitor))
        JR.put(this, :artificialIntelligenceInterface, JR.lget(f, :artificialIntelligenceInterface))
        JR.lset(f, :directionalCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.put(this, :directionalInterface, JR.call(JR.lget(f, :directionalCompositeInterface), :jm_getDirectionalInterface, []))
        JR.lset(f, :velocityInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.put(this, :velocityInterface, JR.call(JR.lget(f, :velocityInterfaceCompositeInterface), :jm_getVelocityProperties, []))
        JR.call(DestroyedEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew(p_ownerLayerInterface, p_artificialIntelligenceInterface, p_gameInput, p_visitor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_artificialIntelligenceInterface, p_gameInput, p_visitor)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if JR.call(this, :jm_isBeyondTarget, []) do
            JR.call(this, :jm_init, [])
            JR.call(JR.get(this, :velocityInterface), :jm_zero, [])
        end
        if !JR.get(this, :diveP) do
            JR.call(this, :jm_target, [JR.lget(f, :allBinaryLayerManager)])
        else
            JR.call(this, :jm_dive, [])
            JR.call(this, :jm_attack, [])
        end
        JR.call(JR.get(this, :list), :jm_clear, [])
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :diveP, false)
        JR.put(this, :directionOfTarget, JR.get(DirectionFactory.jm_getInstance(), :NOT_BORDERED_WITH))
        JR.call(TrackingEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
    end)
  end


  def jm_target(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if (JR.call(JR.get(this, :list), :jm_size, []) == 0) do
            throw({:jreturn, nil})
        end
        JR.lset(f, :lastTrackingEvent, JR.call(JR.get(this, :list), :jm_removeAt, [0]))
        JR.put(this, :lastTrackingLayerInterface, JR.call(JR.lget(f, :lastTrackingEvent), :jm_getLayerInterface, []))
        JR.lset(f, :layerInterface, JR.get(this, :lastTrackingLayerInterface))
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :groupArray, JR.call(JR.lget(f, :layerInterface), :jm_getGroupInterface, []))
        JR.lset(f, :ownerGroupArray, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getGroupInterface, []))
        if (JR.lget(f, :groupArray) == JR.lget(f, :ownerGroupArray)) do
            throw({:jreturn, nil})
        end
        JR.lset(f, :x, JR.call(JR.get(this, :lastTrackingLayerInterface), :jm_getXP, []))
        JR.lset(f, :y, JR.call(JR.get(this, :lastTrackingLayerInterface), :jm_getYP, []))
        JR.lset(f, :yDistance, ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) - JR.lget(f, :y)) - JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, [])))
        JR.lset(f, :xDistance, ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) - JR.lget(f, :x)) - JR.call(JR.lget(f, :ownerLayerInterface), :jm_getWidth, [])))
        JR.lset(f, :directionFactory, DirectionFactory.jm_getInstance())
        if (JR.call(JR.get(this, :mathUtil), :jm_abs, [JR.lget(f, :yDistance)]) > JR.call(JR.get(this, :mathUtil), :jm_abs, [JR.lget(f, :xDistance)])) do
            if (JR.lget(f, :yDistance) > JR.get(this, :MIN_DISTANCE)) do
                JR.put(this, :directionOfTarget, JR.get(JR.lget(f, :directionFactory), :UP))
            else
                if (JR.lget(f, :yDistance) < -JR.get(this, :MIN_DISTANCE)) do
                JR.put(this, :directionOfTarget, JR.get(JR.lget(f, :directionFactory), :DOWN))
            end
            end
        else
            if (JR.lget(f, :xDistance) > JR.get(this, :MIN_DISTANCE)) do
                JR.put(this, :directionOfTarget, JR.get(JR.lget(f, :directionFactory), :LEFT))
            else
                if (JR.lget(f, :xDistance) < -JR.get(this, :MIN_DISTANCE)) do
                JR.put(this, :directionOfTarget, JR.get(JR.lget(f, :directionFactory), :RIGHT))
            end
            end
        end
        if (!JR.get(this, :initialDropped) && (JR.get(this, :directionOfTarget) != JR.get(JR.lget(f, :directionFactory), :NOT_BORDERED_WITH))) do
            JR.call(this, :jm_drop, [])
        end
        if JR.get(this, :initialDropped) do
            if ((JR.get(this, :directionOfTarget) == JR.get(JR.lget(f, :directionFactory), :UP)) || (JR.get(this, :directionOfTarget) == JR.get(JR.lget(f, :directionFactory), :DOWN))) do
                JR.call(this, :jm_verticalTargeting, [JR.lget(f, :x)])
            else
                if ((JR.get(this, :directionOfTarget) == JR.get(JR.lget(f, :directionFactory), :LEFT)) || (JR.get(this, :directionOfTarget) == JR.get(JR.lget(f, :directionFactory), :RIGHT))) do
                JR.call(this, :jm_horizontalTargeting, [JR.lget(f, :y)])
            else
                JR.call(JR.get(this, :artificialIntelligenceInterface), :jm_processAI, [JR.lget(f, :allBinaryLayerManager)])
            end
            end
        end
    end)
  end


  def jm_verticalTargeting(this, p_x) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        if (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) < JR.lget(f, :x)) do
            JR.call(this, :jm_moveRight, [])
        end
        if (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) > JR.lget(f, :x)) do
            JR.call(this, :jm_moveLeft, [])
        end
        if ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) > JR.int32(JR.lget(f, :x) - 3)) && (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) < JR.int32(JR.lget(f, :x) + 3))) do
            JR.call(this, :jm_setDive, [])
        end
    end)
  end


  def jm_horizontalTargeting(this, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :y, p_y)
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        if (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) < JR.lget(f, :y)) do
            JR.call(this, :jm_moveDown, [])
        end
        if (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) > JR.lget(f, :y)) do
            JR.call(this, :jm_moveUp, [])
        end
        if ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) > JR.int32(JR.lget(f, :y) - 3)) && (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) < JR.int32(JR.lget(f, :y) + 3))) do
            JR.call(this, :jm_setDive, [])
        end
    end)
  end


  def jm_setDive(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :diveP, true)
        JR.call(JR.get(this, :velocityInterface), :jm_zero, [])
        JR.call(TrackingEventHandler.jm_getInstance(), :jm_removeListener, [this])
    end)
  end


  def jm_moveRight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setLastDirection, [JR.get(JR.get(this, :directionFactory), :RIGHT)])
        JR.call(JR.get(this, :directionalInterface), :jm_setFrameByDirection, [JR.get(this, :lastDirection)])
        JR.call(JR.get(this, :aiVistor), :jm_visit, [this])
    end)
  end


  def jm_moveLeft(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setLastDirection, [JR.get(JR.get(this, :directionFactory), :LEFT)])
        JR.call(JR.get(this, :directionalInterface), :jm_setFrameByDirection, [JR.get(this, :lastDirection)])
        JR.call(JR.get(this, :aiVistor), :jm_visit, [this])
    end)
  end


  def jm_moveDown(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setLastDirection, [JR.get(JR.get(this, :directionFactory), :DOWN)])
        JR.call(JR.get(this, :directionalInterface), :jm_setFrameByDirection, [JR.get(this, :lastDirection)])
        JR.call(JR.get(this, :aiVistor), :jm_visit, [this])
    end)
  end


  def jm_moveUp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setLastDirection, [JR.get(JR.get(this, :directionFactory), :UP)])
        JR.call(JR.get(this, :directionalInterface), :jm_setFrameByDirection, [JR.get(this, :lastDirection)])
        JR.call(JR.get(this, :aiVistor), :jm_visit, [this])
    end)
  end


  def jm_dive(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :directionalInterface), :jm_setFrameByDirection, [JR.get(this, :directionOfTarget)])
        JR.call(JR.get(this, :aiVistor), :jm_visit, [this])
    end)
  end


  def jm_attack(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
    end)
  end


  def jm_drop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
            JR.put(this, :initialDropped, true)
            JR.call(JR.get(this, :aiVistor), :jm_visit, [this])
        end
    end)
  end


  def jm_isBeyondTarget(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :directionOfTarget) == JR.get(JR.get(this, :directionFactory), :DOWN)) do
            if (JR.call(JR.call(this, :jm_getOwnerLayerInterface, []), :jm_getYP, []) > (JR.call(JR.get(this, :lastTrackingLayerInterface), :jm_getYP, []) + JR.get(this, :MIN_DISTANCE))) do
                throw({:jreturn, true})
            else
                throw({:jreturn, false})
            end
        else
            if (JR.get(this, :directionOfTarget) == JR.get(JR.get(this, :directionFactory), :UP)) do
            if (JR.call(JR.call(this, :jm_getOwnerLayerInterface, []), :jm_getYP, []) < (JR.call(JR.get(this, :lastTrackingLayerInterface), :jm_getYP, []) + JR.get(this, :MIN_DISTANCE))) do
                throw({:jreturn, true})
            else
                throw({:jreturn, false})
            end
        else
            if (JR.get(this, :directionOfTarget) == JR.get(JR.get(this, :directionFactory), :RIGHT)) do
            if (JR.call(JR.call(this, :jm_getOwnerLayerInterface, []), :jm_getXP, []) > (JR.call(JR.get(this, :lastTrackingLayerInterface), :jm_getXP, []) + JR.get(this, :MIN_DISTANCE))) do
                throw({:jreturn, true})
            else
                throw({:jreturn, false})
            end
        else
            if (JR.get(this, :directionOfTarget) == JR.get(JR.get(this, :directionFactory), :LEFT)) do
            if (JR.call(JR.call(this, :jm_getOwnerLayerInterface, []), :jm_getXP, []) < (JR.call(JR.get(this, :lastTrackingLayerInterface), :jm_getXP, []) + JR.get(this, :MIN_DISTANCE))) do
                throw({:jreturn, true})
            else
                throw({:jreturn, false})
            end
        else
            throw({:jreturn, false})
        end
        end
        end
        end
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
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :trackingEvent)])
    end)
  end


  def jm_onDestroyed(this, p_destroyedEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :destroyedEvent, p_destroyedEvent)
        if (JR.call(this, :jm_getOwnerLayerInterface, []) == JR.call(JR.lget(f, :destroyedEvent), :jm_getLayerInterface, [])) do
            JR.call(TrackingEventHandler.jm_getInstance(), :jm_removeListener, [this])
            JR.call(DestroyedEventHandler.jm_getInstance(), :jm_removeListener, [this])
        end
    end)
  end


  def jm_setLastDirection(this, p_lastDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lastDirection, p_lastDirection)
        JR.put(this, :lastDirection, JR.lget(f, :lastDirection))
        JR.lset(f, :value, JR.call(JR.call(this, :jm_getLastDirection, []), :jm_getValue, []))
        if (JR.lget(f, :value) < 4) do
            BasicAI.jm_setLastKey(this, JR.aget(JR.get(this, :directionToKeyMap), JR.lget(f, :value)))
        end
    end)
  end


  def jm_setLastKey(this, p_lastKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lastKey, p_lastKey)
        BasicAI.jm_setLastKey(this, JR.lget(f, :lastKey))
        if (JR.call(this, :jm_getLastKey, []) == Canvas.jstatic_LEFT()) do
            JR.put(this, :lastDirection, JR.get(DirectionFactory.jm_getInstance(), :LEFT))
        else
            if (JR.call(this, :jm_getLastKey, []) == Canvas.jstatic_DOWN()) do
            JR.put(this, :lastDirection, JR.get(DirectionFactory.jm_getInstance(), :DOWN))
        else
            if (JR.call(this, :jm_getLastKey, []) == Canvas.jstatic_UP()) do
            JR.put(this, :lastDirection, JR.get(DirectionFactory.jm_getInstance(), :UP))
        else
            if (JR.call(this, :jm_getLastKey, []) == Canvas.jstatic_RIGHT()) do
            JR.put(this, :lastDirection, JR.get(DirectionFactory.jm_getInstance(), :RIGHT))
        end
        end
        end
        end
    end)
  end


  def jm_getLastDirection(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastDirection)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [BasicAI.jm_toString(this)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" LastDirection: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(this, :jm_getLastDirection, [])])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


