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

defmodule LurchRotationAI do
  def jsuper(), do: LurchAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :rotationAnimationInterface, nil)
        
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        LurchAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        LurchRotationAI.jinitfields(this)
        JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.put(this, :rotationAnimationInterface, JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_getRotationAnimationInterface, []))
        JR.call(this, :jm_update, [])
    end)
  end

  def jnew(p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_reverse(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        LurchAI.jm_reverse(this)
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :currentRelativeAngle) == 0) do
            JR.lset(f, :rotationAnimationInterface, JR.get(this, :rotationAnimationInterface))
            JR.lset(f, :angleIncrementInfo, JR.call(JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getAngleInfoP, []), :jm_getAngleIncrementInfo, []))
            JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
            JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_setFrame, [JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :RIGHT_FRAME), :jm_intValue, [])])
        else
            if (JR.get(this, :currentRelativeAngle) == 180) do
            JR.lset(f, :rotationAnimationInterface, JR.get(this, :rotationAnimationInterface))
            JR.lset(f, :angleIncrementInfo, JR.call(JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getAngleInfoP, []), :jm_getAngleIncrementInfo, []))
            JR.lset(f, :rotationAnimationInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
            JR.call(JR.lget(f, :rotationAnimationInterfaceCompositeInterface), :jm_setFrame, [JR.call(JR.get(JR.lget(f, :angleIncrementInfo), :LEFT_FRAME), :jm_intValue, [])])
        end
        end
    end)
  end
end


