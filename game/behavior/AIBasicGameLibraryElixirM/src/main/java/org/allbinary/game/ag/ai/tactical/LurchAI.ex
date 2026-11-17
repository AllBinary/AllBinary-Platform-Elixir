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
# package org.allbinary.game.ag.ai.tactical

defmodule LurchAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :currentRelativeAngle, 0)
    JR.put(this, :currentSpeed, 0)
        JR.put(this, :currentRelativeAngle, 0)
        JR.put(this, :currentSpeed, 0)
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        LurchAI.jinitfields(this)
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
        if (JR.get(this, :currentSpeed) == -1) do
            JR.put(this, :currentSpeed, 5)
        else
            JR.put(this, :currentSpeed, -1)
        end
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :x, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []))
        if ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) - JR.get(this, :currentSpeed)) <= 0) do
            JR.call(this, :jm_reverse, [])
            JR.call(this, :jm_drop, [])
        end
        if ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getX2, []) + JR.get(this, :currentSpeed)) > JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_getLastWidth, [])) do
            JR.call(this, :jm_reverse, [])
            JR.call(this, :jm_accelerate, [])
            JR.call(this, :jm_drop, [])
        end
        if (JR.get(this, :currentRelativeAngle) == 0) do
            JR.lset(f, :x, JR.int32(JR.lget(f, :x) + JR.get(this, :currentSpeed)))
        else
            if (JR.get(this, :currentRelativeAngle) == 180) do
            JR.lset(f, :x, JR.int32(JR.lget(f, :x) - JR.get(this, :currentSpeed)))
        end
        end
        JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.lget(f, :x), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
        if (JR.get(this, :currentRelativeAngle) == 0) do
            BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM0())
        else
            if (JR.get(this, :currentRelativeAngle) == 180) do
            BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_POUND())
        end
        end
    end)
  end


  def jm_reverse(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :currentRelativeAngle) == 180) do
            JR.put(this, :currentRelativeAngle, 0)
        else
            if (JR.get(this, :currentRelativeAngle) == 0) do
            JR.put(this, :currentRelativeAngle, 180)
        end
        end
    end)
  end


  def jm_accelerate(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :currentSpeed) < 20) do
            JR.postinc(this, :currentSpeed, 1)
        end
    end)
  end


  def jm_drop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :y, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []))
        if ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getY2, []) + JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, [])) > JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_getLastHeight, [])) do
            JR.lset(f, :y, 0)
        else
            JR.lset(f, :y, JR.int32(JR.lget(f, :y) + (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, []) + 1)))
        end
        JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []), JR.lget(f, :y), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
    end)
  end
end


