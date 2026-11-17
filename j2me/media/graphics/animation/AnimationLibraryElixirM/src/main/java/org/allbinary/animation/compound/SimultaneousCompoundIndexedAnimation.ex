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
# package org.allbinary.animation.compound

defmodule SimultaneousCompoundIndexedAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterfaceArray, nil)
        
    nil
  end


  def jinit(this, p_animationInterfaceArray, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        SimultaneousCompoundIndexedAnimation.jinitfields(this)
        JR.put(this, :animationInterfaceArray, JR.lget(f, :animationInterfaceArray))
    end)
  end

  def jnew(p_animationInterfaceArray, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterfaceArray, p_animationBehavior)
    this
  end


  def jm_setFrame(this, p_frameIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frameIndex, p_frameIndex)
        JR.lset(f, :indexedAnimation, nil)
        JR.lset(f, :index, JR.alength(JR.get(this, :animationInterfaceArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :indexedAnimation, JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :indexedAnimation), :jm_setFrame, [JR.lget(f, :frameIndex)])
        end)
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :indexedAnimation, JR.aget(JR.get(this, :animationInterfaceArray), 0))
        throw({:jreturn, JR.call(JR.lget(f, :indexedAnimation), :jm_getFrame, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :indexedAnimation, JR.aget(JR.get(this, :animationInterfaceArray), 0))
        throw({:jreturn, JR.call(JR.lget(f, :indexedAnimation), :jm_getSize, [])})
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :indexedAnimation, nil)
        JR.lset(f, :index, JR.alength(JR.get(this, :animationInterfaceArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :indexedAnimation, JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :indexedAnimation), :jm_previousFrame, [])
        end)
    end)
  end


  def jm_setSequence(this, p_sequence) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sequence, p_sequence)
        nil
    end)
  end


  def jm_getSequence(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, PrimitiveIntUtil.jm_getArrayInstance()})
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.alength(JR.get(this, :animationInterfaceArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_nextFrame, [])
        end)
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :size, JR.alength(JR.get(this, :animationInterfaceArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        end)
    end)
  end


  def jm_paintThreedXYZ(this, p_graphics, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.lset(f, :size, JR.alength(JR.get(this, :animationInterfaceArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_paintThreedXYZ, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])
        end)
    end)
  end


  def jm_getAnimationInterfaceArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationInterfaceArray)})
    end)
  end


  def jm_setAnimationInterfaceArray(this, p_animationInterfaceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
        JR.put(this, :animationInterfaceArray, JR.lget(f, :animationInterfaceArray))
    end)
  end
end


