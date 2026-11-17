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

defmodule ReverseVelocityBoundsVisitor do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :velocityInterface, nil)
    JR.put(this, :layerInterface, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_layerInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :layerInterface, JR.lget(f, :layerInterface))
        JR.lset(f, :velocityInterfaceCompositeInterface, JR.lget(f, :layerInterface))
        JR.put(this, :velocityInterface, JR.call(JR.lget(f, :velocityInterfaceCompositeInterface), :jm_getVelocityProperties, []))
    end)
  end

  def jnew(p_layerInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterface)
    this
  end


  def jm_getX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :layerInterface), :jm_getXP, [])})
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :layerInterface), :jm_getYP, [])})
    end)
  end


  def jm_minX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityXBasicDecimalP, []), :jm_getUnscaled, []) < 0) do
            JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityXBasicDecimalP, []), :jm_multiplyint, [-1])
        end
    end)
  end


  def jm_maxX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityXBasicDecimalP, []), :jm_getUnscaled, []) > 0) do
            JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityXBasicDecimalP, []), :jm_multiplyint, [-1])
        end
    end)
  end


  def jm_minY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []), :jm_getUnscaled, []) < 0) do
            JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []), :jm_multiplyint, [-1])
        end
    end)
  end


  def jm_maxY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []), :jm_getUnscaled, []) > 0) do
            JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []), :jm_multiplyint, [-1])
        end
    end)
  end
end


