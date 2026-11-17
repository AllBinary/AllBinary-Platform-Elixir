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
# package org.allbinary.animation.image

defmodule ImageSegmentAnimation do
  def jsuper(), do: ImageAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :startX, 0)
    JR.put(this, :startY, 0)
    JR.put(this, :drawWidth, 0)
    JR.put(this, :drawHeight, 0)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :sequenceArray, nil)
        
        
        
        
        
        
    nil
  end


  def jinit(this, p_image, p_sequenceArray, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :sequenceArray, p_sequenceArray)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageAnimation.jinit(this, JR.lget(f, :image), JR.lget(f, :animationBehavior))
        ImageSegmentAnimation.jinitfields(this)
        JR.put(this, :startX, 0)
        JR.put(this, :startY, 0)
        JR.put(this, :drawWidth, JR.call(JR.call(this, :jm_getImage, []), :jm_getWidth, []))
        JR.put(this, :drawHeight, JR.call(JR.call(this, :jm_getImage, []), :jm_getHeight, []))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.get(this, :drawHeight)))
        JR.put(this, :sequenceArray, JR.lget(f, :sequenceArray))
    end)
  end

  def jnew(p_image, p_sequenceArray, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_sequenceArray, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_previous, [])
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [JR.lget(f, :index)])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :circularIndexUtil), :jm_getSize, [])})
    end)
  end


  def jm_setSequence(this, p_sequenceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sequenceArray, p_sequenceArray)
        JR.put(this, :sequenceArray, JR.lget(f, :sequenceArray))
    end)
  end


  def jm_getSequence(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sequenceArray)})
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
        nil
    end)
  end


  def jm_getStartX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startX)})
    end)
  end


  def jm_setStartX(this, p_startX) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :startX, p_startX)
        JR.put(this, :startX, JR.lget(f, :startX))
    end)
  end


  def jm_getStartY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startY)})
    end)
  end


  def jm_setStartY(this, p_startY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :startY, p_startY)
        JR.put(this, :startY, JR.lget(f, :startY))
    end)
  end


  def jm_getDrawWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :drawWidth)})
    end)
  end


  def jm_setDrawWidth(this, p_drawWidth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :drawWidth, p_drawWidth)
        JR.put(this, :drawWidth, JR.lget(f, :drawWidth))
    end)
  end


  def jm_getDrawHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :drawHeight)})
    end)
  end


  def jm_setDrawHeight(this, p_drawHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :drawHeight, p_drawHeight)
        JR.put(this, :drawHeight, JR.lget(f, :drawHeight))
    end)
  end
end


