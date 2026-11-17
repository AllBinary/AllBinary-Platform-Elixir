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

defmodule ImageCaptionIndexedAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationFactoryImageScaleUtil, nil)
    JR.put(this, :animationFactorySpriteScaleUtil, nil)
    JR.put(this, :captionImage, nil)
    JR.put(this, :spriteMovieImage, nil)
    JR.put(this, :frameWidth, 0)
    JR.put(this, :frameHeight, 0)
    JR.put(this, :captionDx, 0)
    JR.put(this, :captionDy, 0)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :time, 0)
    JR.put(this, :soundInterface, nil)
    JR.put(this, :scaleProperties, nil)
    JR.put(this, :animationBehaviorFactory, nil)
        JR.put(this, :animationFactoryImageScaleUtil, AnimationFactoryImageScaleUtil.jm_getInstance())
        JR.put(this, :animationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.jm_getInstance())
        
        
        
        
        
        
        
        
        
        
        JR.put(this, :scaleProperties, ScaleProperties.jstatic_instance())
        
    nil
  end


  def jinit(this, p_captionImage, p_spriteMovieImage, p_soundInterface, p_frameWidth, p_frameHeight, p_captionDx, p_captionDy, p_dx, p_dy, p_time, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :captionImage, p_captionImage)
      JR.lset(f, :spriteMovieImage, p_spriteMovieImage)
      JR.lset(f, :soundInterface, p_soundInterface)
      JR.lset(f, :frameWidth, p_frameWidth)
      JR.lset(f, :frameHeight, p_frameHeight)
      JR.lset(f, :captionDx, p_captionDx)
      JR.lset(f, :captionDy, p_captionDy)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :time, p_time)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        if (JR.lget(f, :animationBehaviorFactory) == AnimationBehaviorFactory.jm_getInstance()) do
            ForcedLogUtil.jm_log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        end
        JR.put(this, :captionImage, JR.lget(f, :captionImage))
        JR.put(this, :spriteMovieImage, JR.lget(f, :spriteMovieImage))
        JR.put(this, :frameWidth, JR.lget(f, :frameWidth))
        JR.put(this, :frameHeight, JR.lget(f, :frameHeight))
        JR.put(this, :captionDx, JR.lget(f, :captionDx))
        JR.put(this, :captionDy, JR.lget(f, :captionDy))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
        JR.put(this, :time, JR.lget(f, :time))
        JR.put(this, :soundInterface, JR.lget(f, :soundInterface))
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
    end)
  end

  def jnew(p_captionImage, p_spriteMovieImage, p_soundInterface, p_frameWidth, p_frameHeight, p_captionDx, p_captionDy, p_dx, p_dy, p_time, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_captionImage, p_spriteMovieImage, p_soundInterface, p_frameWidth, p_frameHeight, p_captionDx, p_captionDy, p_dx, p_dy, p_time, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :scaledImage, JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_createImage, [JR.get(this, :captionImage), JR.call(JR.get(this, :captionImage), :jm_getWidth, []), JR.call(JR.get(this, :captionImage), :jm_getHeight, []), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        JR.lset(f, :animationInterface, ImageAnimation.jnew(JR.lget(f, :scaledImage), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, [])))
        JR.lset(f, :sprite, JR.call(JR.get(this, :animationFactorySpriteScaleUtil), :jm_createImage, [JR.get(this, :spriteMovieImage), JR.get(this, :frameWidth), JR.get(this, :frameHeight), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        JR.lset(f, :movieIndexedAnimationInterface, SpriteIndexedAnimation.jnew(JR.lget(f, :sprite), JR.get(this, :spriteMovieImage), JR.get(BasicColorUtil.jm_getInstance(), :ZERO_ARRAY), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, [])))
        JR.lset(f, :player, JR.call(JR.get(this, :soundInterface), :jm_getPlayerP, []))
        if (JR.lget(f, :player) == nil) do
            throw({:jexception, JR.exception("Exception", "Sound Was not Initialized")})
        end
        throw({:jreturn, CaptionIndexedAnimation.jnew(JR.lget(f, :animationInterface), JR.lget(f, :movieIndexedAnimationInterface), JR.lget(f, :player), JR.get(this, :captionDx), JR.get(this, :captionDy), JR.get(this, :dx), JR.get(this, :dy), JR.get(this, :time), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        JR.put(this, :scaleProperties, JR.lget(f, :scaleProperties))
    end)
  end
end


