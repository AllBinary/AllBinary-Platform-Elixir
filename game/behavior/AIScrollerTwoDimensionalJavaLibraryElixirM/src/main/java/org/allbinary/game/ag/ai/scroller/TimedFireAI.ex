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

defmodule TimedFireAI do
  def jsuper(), do: BasicAI
def jstatic_TIME(), do: JR.static_get(__MODULE__, :TIME, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [1]) end)
  def jstatic_set_TIME(value), do: JR.static_put(__MODULE__, :TIME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :maxFireDelayTimeHelper, nil)
    JR.put(this, :delay, 0)
        JR.put(this, :maxFireDelayTimeHelper, TimeDelayHelper.jnew(0))
        
    nil
  end


  def jinit(this, p_delay, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :delay, p_delay)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        TimedFireAI.jinitfields(this)
        JR.put(this, :delay, JR.lget(f, :delay))
    end)
  end

  def jnew(p_delay, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_delay, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :timeFiredInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        if (JR.call(JR.get(this, :maxFireDelayTimeHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) && ((JR.call(JR.lget(f, :timeFiredInterface), :jm_getLastFireTime, []) + JR.get(JR.get(this, :maxFireDelayTimeHelper), :delay)) < JR.call(JR.get(this, :maxFireDelayTimeHelper), :jm_getStartTime, []))) do
            BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
            JR.put(JR.get(this, :maxFireDelayTimeHelper), :delay, JR.get(this, :delay))
        end
    end)
  end
end


