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

defmodule ScrollOverAtHalfAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        ScrollOverAtHalfAI.jinitfields(this)
    end)
  end

  def jnew(p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :x, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []))
        JR.lset(f, :y, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []))
        JR.lset(f, :halfWidth, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHalfWidth, []))
        JR.lset(f, :halfHeight, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHalfHeight, []))
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        if (JR.lget(f, :x) > (JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) - JR.lget(f, :halfWidth))) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.int32(JR.lget(f, :halfWidth) + 1), JR.lget(f, :y), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
        if (JR.lget(f, :y) > (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) - JR.lget(f, :halfHeight))) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.lget(f, :x), JR.int32(JR.lget(f, :halfHeight) + 1), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
        if (JR.lget(f, :x) < -JR.lget(f, :halfWidth)) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [(JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) - JR.lget(f, :halfWidth)), JR.lget(f, :y), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
        if (JR.lget(f, :y) < -JR.lget(f, :halfHeight)) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.lget(f, :x), (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) - JR.lget(f, :halfHeight)), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
    end)
  end
end


