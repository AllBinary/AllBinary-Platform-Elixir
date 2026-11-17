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
# package org.allbinary.animation.text

defmodule CustomTextAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :animationBehaviorFactory, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :text, nil)
    JR.put(this, :initScaleHeight, 0)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :font, nil)
    JR.put(this, :scaleProperties, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :BLACK))
        
        
        JR.put(this, :dx, 0)
        JR.put(this, :dy, 0)
        
        
    nil
  end


  def jm_createDXY(p_text, p_fontSize, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :fontSize, p_fontSize)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :customTextAnimationFactory, CustomTextAnimationFactory.jnew(JR.lget(f, :text), JR.lget(f, :fontSize), JR.lget(f, :animationBehaviorFactory)))
        JR.put(JR.lget(f, :customTextAnimationFactory), :dx, JR.lget(f, :dx))
        JR.put(JR.lget(f, :customTextAnimationFactory), :dy, JR.lget(f, :dy))
        throw({:jreturn, JR.lget(f, :customTextAnimationFactory)})
    end)
  end


  def jinit(this, p_text, p_fontSize, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :fontSize, p_fontSize)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :scaleProperties, ScaleProperties.jnew())
        JR.put(this, :text, JR.lget(f, :text))
        JR.put(JR.get(this, :scaleProperties), :scaleHeight, JR.int32(JR.lget(f, :fontSize) - (div(JR.lget(f, :fontSize), 4))))
        JR.put(this, :initScaleHeight, JR.get(JR.get(this, :scaleProperties), :scaleHeight))
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
        JR.put(this, :font, Font.jm_getFont(Font.jstatic_FACE_SYSTEM(), Font.jstatic_STYLE_PLAIN(), JR.get(this, :initScaleHeight)))
    end)
  end

  def jnew(p_text, p_fontSize, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_text, p_fontSize, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :customTextAnimation, nil)
        if ((JR.get(this, :dx) != 0) || (JR.get(this, :dy) != 0)) do
            JR.lset(f, :customTextAnimation, AdjustCustomTextAnimation.jnew(JR.get(this, :text), JR.get(JR.get(this, :scaleProperties), :scaleHeight), JR.get(this, :dx), JR.get(this, :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, [])))
        else
            JR.lset(f, :customTextAnimation, CustomTextAnimation.jnew(JR.get(this, :text), JR.get(JR.get(this, :scaleProperties), :scaleHeight), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, [])))
        end
        JR.call(JR.lget(f, :customTextAnimation), :jm_setBasicColorP, [JR.get(this, :basicColor)])
        throw({:jreturn, JR.lget(f, :customTextAnimation)})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        nil
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :font), :jm_stringWidth, [JR.get(this, :text)])})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :font), :jm_getHeight, [])})
    end)
  end
end


