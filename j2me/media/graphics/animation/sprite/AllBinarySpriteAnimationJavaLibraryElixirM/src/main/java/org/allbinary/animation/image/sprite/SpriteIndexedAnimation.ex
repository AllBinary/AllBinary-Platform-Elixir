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
# package org.allbinary.animation.image.sprite

defmodule SpriteIndexedAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :sprite, nil)
    JR.put(this, :image, nil)
    JR.put(this, :basicColorArray, nil)
        
        
        
    nil
  end


  def jinit(this, p_sprite, p_image, p_basicColorArray, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :sprite, p_sprite)
      JR.lset(f, :image, p_image)
      JR.lset(f, :basicColorArray, p_basicColorArray)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        SpriteIndexedAnimation.jinitfields(this)
        JR.put(this, :sprite, JR.lget(f, :sprite))
        JR.put(this, :image, JR.lget(f, :image))
        JR.put(this, :basicColorArray, JR.lget(f, :basicColorArray))
        if ((JR.alength(JR.get(this, :basicColorArray)) != 0) && (JR.call(this, :jm_getSize, []) != JR.alength(JR.get(this, :basicColorArray)))) do
            throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :TOTAL_LABEL)]), :jm_appendint, [JR.call(this, :jm_getSize, [])]), :jm_append, ["!="]), :jm_appendint, [JR.alength(JR.get(this, :basicColorArray))]), :jm_toString, []))})
        end
    end)
  end

  def jnew(p_sprite, p_image, p_basicColorArray, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_sprite, p_image, p_basicColorArray, p_animationBehavior)
    this
  end


  def jm_getAnimationSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getSize, [])})
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :basicColorArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.lget(f, :basicColor) == JR.aget(JR.get(this, :basicColorArray), JR.lget(f, :index))) do
                JR.call(this, :jm_setFrame, [JR.lget(f, :index)])
                throw(:jbreak)
            end
        end)
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.alength(JR.get(this, :basicColorArray)) < JR.call(this, :jm_getFrame, [])) do
            throw({:jreturn, JR.aget(JR.get(this, :basicColorArray), JR.call(this, :jm_getFrame, []))})
        else
            throw({:jreturn, JR.get(BasicColorFactory.jm_getInstance(), :WHITE)})
        end
    end)
  end


  def jm_paintFrame(this, p_graphics, p_frame, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :frame, p_frame)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(this, :jm_setFrame, [JR.lget(f, :frame)])
        JR.call(JR.get(this, :sprite), :jm_setPosition, [JR.lget(f, :x), JR.lget(f, :y)])
        JR.call(JR.get(this, :sprite), :jm_paint, [JR.lget(f, :graphics)])
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
        JR.call(JR.get(this, :sprite), :jm_setPosition, [JR.lget(f, :x), JR.lget(f, :y)])
        JR.call(JR.get(this, :sprite), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :sprite), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :sprite), :jm_nextFrame, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :sprite), :jm_prevFrame, [])
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :sprite), :jm_getRawFrameCount, [])})
    end)
  end


  def jm_setFrame(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
        JR.call(JR.get(this, :sprite), :jm_setFrame, [JR.lget(f, :frame)])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :sprite), :jm_getFrame, [])})
    end)
  end


  def jm_isLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(JR.get(this, :sprite), :jm_getFrame, []) == JR.int32(JR.call(this, :jm_getSize, []) - 1)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_getLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getSize, [])})
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


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_finalize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


