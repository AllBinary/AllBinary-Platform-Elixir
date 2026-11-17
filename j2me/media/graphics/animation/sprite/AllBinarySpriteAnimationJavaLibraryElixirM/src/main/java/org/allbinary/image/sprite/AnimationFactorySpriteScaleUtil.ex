# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.image.sprite

defmodule AnimationFactorySpriteScaleUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AnimationFactorySpriteScaleUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageCache, nil)
    JR.put(this, :imageScaleUtil, nil)
    JR.put(this, :openGLUtil, nil)
    JR.put(this, :j2seMath, nil)
    JR.put(this, :openGLESImageExclusionUtil, nil)
        JR.put(this, :imageCache, ImageCacheFactory.jm_getInstance())
        JR.put(this, :imageScaleUtil, ImageScaleUtil.jm_getInstance())
        JR.put(this, :openGLUtil, OpenGLUtil.jm_getInstance())
        JR.put(this, :j2seMath, J2SEMath.jm_getInstance())
        JR.put(this, :openGLESImageExclusionUtil, OpenGLESImageExclusionUtil.jm_getInstance())
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AnimationFactorySpriteScaleUtil.jstatic_instance()})
    end)
  end


  def jm_createImage(this, p_image, p_width, p_height, p_scaleWidth, p_scaleHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :scaleWidth, p_scaleWidth)
      JR.lset(f, :scaleHeight, p_scaleHeight)
        JR.lset(f, :spriteFactory, SpriteFactory.jm_getInstance())
        JR.lset(f, :sprite, nil)
        JR.lset(f, :scaledImage, nil)
        if ((JR.lget(f, :scaleWidth) != 0) && (JR.lget(f, :scaleHeight) != 0)) do
            JR.lset(f, :scaleX, (((JR.lget(f, :scaleWidth) * 1.0)) / ((JR.lget(f, :width) * 1.0))))
            JR.lset(f, :scaleY, (((JR.lget(f, :scaleHeight) * 1.0)) / ((JR.lget(f, :height) * 1.0))))
            if ((((JR.lget(f, :scaleX) == 1.0) && (JR.lget(f, :scaleY) == 1.0))) || (((JR.lget(f, :scaleX) == 0.0) || (JR.lget(f, :scaleY) == 0.0)))) do
                JR.lset(f, :scaledImage, JR.call(JR.get(this, :openGLUtil), :jm_addImage, [JR.lget(f, :image)]))
                JR.lset(f, :sprite, JR.call(JR.lget(f, :spriteFactory), :jm_createSprite, [JR.lget(f, :scaledImage), JR.lget(f, :width), JR.lget(f, :height)]))
            else
                if JR.call(JR.get(this, :openGLESImageExclusionUtil), :jm_isCustomScaling, [JR.lget(f, :image)]) do
                    JR.lset(f, :width2, JR.call(JR.get(this, :j2seMath), :jm_round, [(((JR.lget(f, :scaleWidth)) * 1.0) - 0.5)]))
                    JR.lset(f, :height2, JR.call(JR.get(this, :j2seMath), :jm_round, [(((JR.lget(f, :scaleHeight)) * 1.0) - 0.5)]))
                    JR.lset(f, :multiplesOf16Width, div(JR.lget(f, :width2), 16))
                    JR.lset(f, :by16Width, JR.int32(JR.lget(f, :multiplesOf16Width) * 16))
                    JR.lset(f, :scaleX, (((JR.lget(f, :by16Width) * 1.0)) / (JR.lget(f, :width) * 1.0)))
                    JR.lset(f, :multiplesOf16Height, div(JR.lget(f, :height2), 16))
                    JR.lset(f, :by16Height, JR.int32(JR.lget(f, :multiplesOf16Height) * 16))
                    JR.lset(f, :scaleY, (((JR.lget(f, :by16Height) * 1.0)) / (JR.lget(f, :height) * 1.0)))
                    if (JR.lget(f, :scaleWidth) < JR.lget(f, :width)) do
                        JR.lset(f, :scaleX, (JR.lget(f, :scaleX) * 2.35))
                    end
                    if (JR.lget(f, :scaleHeight) < JR.lget(f, :height)) do
                        JR.lset(f, :scaleY, (JR.lget(f, :scaleY) * 2.35))
                    end
                end
                JR.lset(f, :scaledImage, JR.call(JR.get(this, :imageScaleUtil), :jm_createImage2, [JR.get(this, :imageCache), JR.lget(f, :image), JR.lget(f, :scaleX), 1.0, JR.lget(f, :scaleY), 1.0, true]))
                JR.lset(f, :sprite, JR.call(JR.lget(f, :spriteFactory), :jm_createSprite, [JR.lget(f, :scaledImage), JR.int32(JR.d2i((((JR.lget(f, :width) * 1.0) * JR.lget(f, :scaleX))))), JR.int32(JR.d2i((((JR.lget(f, :height) * 1.0) * JR.lget(f, :scaleY)))))]))
            end
        else
            JR.lset(f, :scaledImage, JR.call(JR.get(this, :openGLUtil), :jm_addImage, [JR.lget(f, :image)]))
            JR.lset(f, :sprite, JR.call(JR.lget(f, :spriteFactory), :jm_createSprite, [JR.lget(f, :scaledImage), JR.lget(f, :width), JR.lget(f, :height)]))
        end
        throw({:jreturn, JR.lget(f, :sprite)})
    end)
  end
end


