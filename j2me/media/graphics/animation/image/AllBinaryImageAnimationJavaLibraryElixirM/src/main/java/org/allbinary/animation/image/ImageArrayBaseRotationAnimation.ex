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

defmodule ImageArrayBaseRotationAnimation do
  def jsuper(), do: RotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageModifierUtil, nil)
    JR.put(this, :originalImageArray, nil)
    JR.put(this, :imageArray, nil)
    JR.put(this, :currentImage, nil)
    JR.put(this, :totalFrames, 0)
    JR.put(this, :anchor, 0)
        JR.put(this, :imageModifierUtil, ImageModifierUtil.jm_getInstanceOrCreate())
        
        JR.put(this, :imageArray, NullImage.jstatic_NULL_IMAGE_ARRAY())
        
        JR.put(this, :totalFrames, 0)
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_originalImageArray, p_angleInfo, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :originalImageArray, p_originalImageArray)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        RotationAnimation.jinit(this, JR.lget(f, :angleInfo), CircularIndexUtil.jm_createInstance((360 / JR.call(JR.call(JR.lget(f, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, []))), JR.lget(f, :animationBehavior))
        ImageArrayBaseRotationAnimation.jinitfields(this)
        JR.put(this, :originalImageArray, JR.lget(f, :originalImageArray))
        JR.call(this, :jm_setImageArray, [JR.call(JR.get(this, :imageModifierUtil), :jm_getImageArray, [JR.lget(f, :originalImageArray)])])
        JR.put(this, :currentImage, JR.aget(JR.get(this, :imageArray), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])))
    end)
  end

  def jnew(p_originalImageArray, p_angleInfo, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_originalImageArray, p_angleInfo, p_animationBehavior)
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


  def jm_setAlpha(this, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alpha, p_alpha)
        if (JR.get(this, :alphaP) != JR.lget(f, :alpha)) do
            RotationAnimation.jm_setAlpha(this, JR.lget(f, :alpha))
            JR.call(JR.get(this, :imageModifierUtil), :jm_reset, [])
            JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
            JR.call(JR.get(this, :imageModifierUtil), :jm_setAlpha, [JR.aget(JR.get(this, :originalImageArray), JR.lget(f, :index)), JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)), JR.lget(f, :index), JR.get(this, :alphaP)])
        end
    end)
  end


  def jm_nextRotation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        RotationAnimation.jm_nextRotation(this)
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.call(JR.get(this, :imageModifierUtil), :jm_setAlpha, [JR.aget(JR.get(this, :originalImageArray), JR.lget(f, :index)), JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)), JR.lget(f, :index), JR.get(this, :alphaP)])
        JR.put(this, :currentImage, JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)))
    end)
  end


  def jm_previousRotation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        RotationAnimation.jm_previousRotation(this)
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.call(JR.get(this, :imageModifierUtil), :jm_setAlpha, [JR.aget(JR.get(this, :originalImageArray), JR.lget(f, :index)), JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)), JR.lget(f, :index), JR.get(this, :alphaP)])
        JR.put(this, :currentImage, JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)))
    end)
  end


  def jm_setFrame(this, p_index2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index2, p_index2)
        RotationAnimation.jm_setFrame(this, JR.lget(f, :index2))
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.call(JR.get(this, :imageModifierUtil), :jm_setAlpha, [JR.aget(JR.get(this, :originalImageArray), JR.lget(f, :index)), JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)), JR.lget(f, :index), JR.get(this, :alphaP)])
        JR.put(this, :currentImage, JR.aget(JR.get(this, :imageArray), JR.lget(f, :index)))
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


  def jm_setImageArray(this, p_imageArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
        JR.put(this, :imageArray, JR.lget(f, :imageArray))
        JR.put(this, :totalFrames, JR.alength(JR.lget(f, :imageArray)))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.get(this, :totalFrames)))
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
        JR.call(JR.lget(f, :graphics), :jm_drawImage, [JR.get(this, :currentImage), JR.lget(f, :x), JR.lget(f, :y), JR.get(this, :anchor)])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :disposalUtil, DisposalUtil.jm_getInstance())
        JR.lset(f, :size2, JR.alength(JR.get(this, :imageArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :disposalUtil), :jm_disposeImage, [JR.aget(JR.get(this, :imageArray), JR.lget(f, :index))])
        end)
        JR.lset(f, :size, JR.alength(JR.get(this, :originalImageArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :disposalUtil), :jm_disposeImage, [JR.aget(JR.get(this, :originalImageArray), JR.lget(f, :index))])
        end)
        JR.call(JR.lget(f, :disposalUtil), :jm_disposeImage, [JR.get(this, :currentImage)])
    end)
  end


  def jm_finalize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :disposalUtil, DisposalUtil.jm_getInstance())
        JR.lset(f, :size2, JR.alength(JR.get(this, :imageArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :disposalUtil), :jm_disposeImage, [JR.aget(JR.get(this, :imageArray), JR.lget(f, :index))])
        end)
        JR.lset(f, :size, JR.alength(JR.get(this, :originalImageArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :disposalUtil), :jm_disposeImage, [JR.aget(JR.get(this, :originalImageArray), JR.lget(f, :index))])
        end)
        JR.call(JR.lget(f, :disposalUtil), :jm_disposeImage, [JR.get(this, :currentImage)])
    end)
  end
end


