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

defmodule HorizontaRotationManeuverAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :currentSpeedDivisor, 0)
    JR.put(this, :rotationAnimationInterface, nil)
    JR.put(this, :baseVelocityInterface, nil)
    JR.put(this, :velocityInterface, nil)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstanceAt(10, J.Integer.jstatic_MAX_VALUE()))
        JR.put(this, :currentSpeedDivisor, 5)
        
        
        
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        HorizontaRotationManeuverAI.jinitfields(this)
        JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.put(this, :rotationAnimationInterface, JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_getRotationAnimationInterface, []))
        JR.lset(f, :velocityInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.put(this, :baseVelocityInterface, JR.call(JR.lget(f, :velocityInterfaceCompositeInterface), :jm_getVelocityProperties, []))
        JR.put(this, :velocityInterface, JR.get(this, :baseVelocityInterface))
        JR.lset(f, :rotationAnimationInterface, JR.get(this, :rotationAnimationInterface))
        JR.lset(f, :angleIncrementInfo, JR.call(JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getAngleInfoP, []), :jm_getAngleIncrementInfo, []))
        JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_setFrame, [JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, [])])
    end)
  end

  def jnew(p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_transition(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :rotationAnimationInterface, JR.get(this, :rotationAnimationInterface))
        JR.lset(f, :angleIncrementInfo, JR.call(JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getAngleInfoP, []), :jm_getAngleIncrementInfo, []))
        JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_setFrame, [JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, [])])
        JR.lset(f, :allbinaryLayer, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.call(JR.lget(f, :allbinaryLayer), :jm_setPosition, [JR.call(JR.lget(f, :allbinaryLayer), :jm_getXP, []), 1, JR.call(JR.lget(f, :allbinaryLayer), :jm_getZP, [])])
    end)
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :rotationAnimationInterface, (JR.get(this, :rotationAnimationInterface)))
        JR.lset(f, :angleIncrementInfo, JR.call(JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getAngleInfoP, []), :jm_getAngleIncrementInfo, []))
        JR.lset(f, :frame, JR.call(JR.get(this, :rotationAnimationInterface), :jm_getFrame, []))
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        if (((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) - JR.call(JR.lget(f, :ownerLayerInterface), :jm_getWidth, [])) <= 0) && (JR.lget(f, :frame) == JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :LEFT_FRAME), :jm_intValue, []))) do
            JR.call(this, :jm_reverse, [])
            JR.call(this, :jm_drop, [])
        end
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        if (((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getX2, []) + JR.call(JR.lget(f, :ownerLayerInterface), :jm_getWidth, [])) > JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, [])) && (JR.lget(f, :frame) == JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, []))) do
            JR.call(this, :jm_reverse, [])
            JR.call(this, :jm_accelerate, [])
            JR.call(this, :jm_drop, [])
        end
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        if ((rem(JR.lget(f, :index), JR.get(this, :currentSpeedDivisor)) == 0) && (rem(JR.lget(f, :index), 2) == 0)) do
            BasicAI.jm_processKeyAI(this, Canvas.jstatic_UP())
            JR.call(JR.get(this, :velocityInterface), :jm_limitMaxXYVelocity, [(JR.call(JR.get(this, :velocityInterface), :jm_getMaxForwardVelocity, []) / JR.get(this, :currentSpeedDivisor))])
        end
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
        if (JR.lget(f, :frame) == JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :LEFT_FRAME), :jm_intValue, [])) do
            BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM0())
        else
            if (JR.lget(f, :frame) == JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, [])) do
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
        JR.lset(f, :rotationAnimationInterface, JR.get(this, :rotationAnimationInterface))
        JR.lset(f, :angleIncrementInfo, JR.call(JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getAngleInfoP, []), :jm_getAngleIncrementInfo, []))
        JR.lset(f, :frame, JR.call(JR.get(this, :rotationAnimationInterface), :jm_getFrame, []))
        if (JR.lget(f, :frame) == JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :LEFT_FRAME), :jm_intValue, [])) do
            JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
            JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_setFrame, [JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, [])])
            JR.call(JR.get(this, :baseVelocityInterface), :jm_zero, [])
        else
            if (JR.lget(f, :frame) == JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, [])) do
            JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
            JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_setFrame, [JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :LEFT_FRAME), :jm_intValue, [])])
            JR.call(JR.get(this, :baseVelocityInterface), :jm_zero, [])
        end
        end
    end)
  end


  def jm_accelerate(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :currentSpeedDivisor) > 1) do
            JR.postinc(this, :currentSpeedDivisor, -1)
        end
    end)
  end


  def jm_drop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :y, JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []))
        if ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getY2, []) + JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, [])) > JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, [])) do
            JR.lset(f, :y, 0)
        else
            JR.lset(f, :y, JR.int32(JR.lget(f, :y) + (JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHeight, []) + 1)))
        end
        JR.call(JR.lget(f, :ownerLayerInterface), :jm_setPosition, [JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []), JR.lget(f, :y), JR.call(JR.lget(f, :ownerLayerInterface), :jm_getZP, [])])
    end)
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, ArtificialIntelligence.jstatic_AI_ID()})
    end)
  end
end


