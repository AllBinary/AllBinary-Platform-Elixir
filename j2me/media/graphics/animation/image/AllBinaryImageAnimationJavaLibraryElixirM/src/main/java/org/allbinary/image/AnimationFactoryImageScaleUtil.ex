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
# package org.allbinary.image

defmodule AnimationFactoryImageScaleUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AnimationFactoryImageScaleUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageScaleUtil, nil)
        JR.put(this, :imageScaleUtil, ImageJ2MEScaleUtil.jm_getInstance())
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
        throw({:jreturn, AnimationFactoryImageScaleUtil.jstatic_instance()})
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
        JR.lset(f, :scaledImage, nil)
        if ((JR.lget(f, :scaleWidth) != 0) && (JR.lget(f, :scaleHeight) != 0)) do
            JR.lset(f, :scaleX, (((JR.lget(f, :scaleWidth) * 1.0)) / ((JR.lget(f, :width) * 1.0))))
            JR.lset(f, :scaleY, (((JR.lget(f, :scaleHeight) * 1.0)) / ((JR.lget(f, :height) * 1.0))))
            if ((((JR.lget(f, :scaleX) == 1.0) && (JR.lget(f, :scaleY) == 1.0))) || (((JR.lget(f, :scaleX) == 0.0) || (JR.lget(f, :scaleY) == 0.0)))) do
                JR.lset(f, :scaledImage, JR.lget(f, :image))
            else
                JR.lset(f, :scaledWidth, JR.int32(JR.d2i(((JR.lget(f, :scaleX) * (JR.lget(f, :width) * 1.0))))))
                JR.lset(f, :scaledHeight, JR.int32(JR.d2i(((JR.lget(f, :scaleY) * (JR.lget(f, :height) * 1.0))))))
                JR.lset(f, :scaledImage, JR.call(JR.get(this, :imageScaleUtil), :jm_scale, [JR.lget(f, :image), JR.lget(f, :scaledWidth), JR.lget(f, :scaledHeight)]))
            end
        else
            JR.lset(f, :scaledImage, JR.lget(f, :image))
        end
        throw({:jreturn, JR.lget(f, :scaledImage)})
    end)
  end


  def jm_processAdjust(this, p_baseImageAnimationFactory) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :baseImageAnimationFactory, p_baseImageAnimationFactory)
        JR.lset(f, :scaleProperties, JR.call(JR.lget(f, :baseImageAnimationFactory), :jm_getScalePropertiesP, []))
        if ((JR.get(JR.lget(f, :scaleProperties), :scaleWidth) != 0) && (JR.get(JR.lget(f, :scaleProperties), :scaleHeight) != 0)) do
            JR.lset(f, :animationFactoryInitializationVisitor, JR.call(JR.lget(f, :baseImageAnimationFactory), :jm_getAnimationFactoryInitializationVisitorP, []))
            JR.lset(f, :scaleX, (((JR.get(JR.lget(f, :scaleProperties), :scaleWidth) * 1.0)) / ((JR.get(JR.lget(f, :animationFactoryInitializationVisitor), :width) * 1.0))))
            JR.lset(f, :scaleY, (((JR.get(JR.lget(f, :scaleProperties), :scaleHeight) * 1.0)) / ((JR.get(JR.lget(f, :animationFactoryInitializationVisitor), :height) * 1.0))))
            if ((((JR.lget(f, :scaleX) == 1.0) && (JR.lget(f, :scaleY) == 1.0))) || (((JR.lget(f, :scaleX) == 0.0) || (JR.lget(f, :scaleY) == 0.0)))) do
                nil
            else
                JR.put(JR.lget(f, :animationFactoryInitializationVisitor), :dx, JR.int32(((JR.get(JR.lget(f, :animationFactoryInitializationVisitor), :originalDx) * JR.lget(f, :scaleX)))))
                JR.put(JR.lget(f, :animationFactoryInitializationVisitor), :dy, JR.int32(((JR.get(JR.lget(f, :animationFactoryInitializationVisitor), :originalDy) * JR.lget(f, :scaleY)))))
            end
        else
            nil
        end
    end)
  end
end


