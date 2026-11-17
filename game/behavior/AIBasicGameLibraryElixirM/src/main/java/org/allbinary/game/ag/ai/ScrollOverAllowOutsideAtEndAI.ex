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

defmodule ScrollOverAllowOutsideAtEndAI do
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
        ScrollOverAllowOutsideAtEndAI.jinitfields(this)
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
        JR.lset(f, :width, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getWidth, []))
        JR.lset(f, :height, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, []))
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        if (JR.lget(f, :x) > JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, [])) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [-JR.lget(f, :width), JR.lget(f, :y), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
        if (JR.lget(f, :y) > JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, [])) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.lget(f, :x), -JR.lget(f, :height), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
        if (JR.lget(f, :x) < -JR.lget(f, :width)) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [(JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) + JR.lget(f, :width)), JR.lget(f, :y), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
        if (JR.lget(f, :y) < -JR.lget(f, :height)) do
            JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.lget(f, :x), (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) + JR.lget(f, :height)), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        end
    end)
  end
end


