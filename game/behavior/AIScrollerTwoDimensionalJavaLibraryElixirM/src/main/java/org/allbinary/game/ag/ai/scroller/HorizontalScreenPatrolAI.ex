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

defmodule HorizontalScreenPatrolAI do
  def jsuper(), do: BasicAI
def jstatic_SOUND(), do: JR.static_get(__MODULE__, :SOUND, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [433]) end)
  def jstatic_set_SOUND(value), do: JR.static_put(__MODULE__, :SOUND, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :keyDirection, 0)
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :firingX, 0)
    JR.put(this, :firedIndex, 0)
    JR.put(this, :MAX_FIRE, 0)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :secondaryPlayerQueue, nil)
    JR.put(this, :sound, nil)
        JR.put(this, :keyDirection, Canvas.jstatic_LEFT())
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :firingX, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, []))
        JR.put(this, :firedIndex, 0)
        JR.put(this, :MAX_FIRE, 28)
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(240))
        JR.put(this, :secondaryPlayerQueue, SecondaryPlayerQueueFactory.jm_getInstance())
        
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
        HorizontalScreenPatrolAI.jinitfields(this)
        JR.put(this, :sound, JR.call(JR.lget(f, :hashtable), :jm_get, [HorizontalScreenPatrolAI.jstatic_SOUND()]))
        if (JR.get(this, :sound) == nil) do
            throw({:jexception, JR.exception("Exception", "No Sound Provided!!")})
        end
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
        BasicAI.jm_processKeyAI(this, JR.get(this, :keyDirection))
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTimeTNT, []) do
            JR.lset(f, :layerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
            JR.lset(f, :currentOwnerLayerX, JR.call(JR.lget(f, :layerInterface), :jm_getXP, []))
            if (JR.lget(f, :currentOwnerLayerX) < -JR.call(JR.lget(f, :layerInterface), :jm_getWidth, [])) do
                JR.lset(f, :y, JR.call(MyRandomFactory.jm_getInstance(), :jm_getAbsoluteNextIntAllowZero, [50]))
                JR.call(JR.lget(f, :layerInterface), :jm_setPosition, [((JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []) + JR.call(JR.lget(f, :layerInterface), :jm_getWidth, [])) + 50), JR.lget(f, :y), JR.call(JR.lget(f, :layerInterface), :jm_getZP, [])])
                JR.put(this, :firedIndex, 0)
                JR.put(this, :firingX, (JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, []) + JR.call(MyRandomFactory.jm_getInstance(), :jm_getNextInt, [JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, [])])))
                JR.call(JR.get(this, :secondaryPlayerQueue), :jm_add, [JR.get(this, :sound)])
            end
            if ((JR.lget(f, :currentOwnerLayerX) < JR.get(this, :firingX)) && (JR.lget(f, :currentOwnerLayerX) > -JR.call(JR.lget(f, :layerInterface), :jm_getWidth, []))) do
                BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
                JR.lset(f, :gameLayerManager, JR.lget(f, :allBinaryLayerManager))
                JR.lset(f, :FIRE, Bitwise.bsr(((JR.call(JR.call(JR.lget(f, :gameLayerManager), :jm_getGameInfo, []), :jm_getCurrentLevel, []) + 12)), 2))
                if (JR.lget(f, :FIRE) > JR.get(this, :MAX_FIRE)) do
                    JR.lset(f, :FIRE, JR.get(this, :MAX_FIRE))
                end
                if (JR.get(this, :firedIndex) > JR.lget(f, :FIRE)) do
                    JR.put(this, :firedIndex, 0)
                    JR.put(this, :firingX, J.Integer.jstatic_MIN_VALUE())
                end
                JR.postinc(this, :firedIndex, 1)
            end
        end
    end)
  end


  def jm_nextDirection(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


