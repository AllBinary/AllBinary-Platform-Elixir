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

defmodule CustomTextBoxIndexedAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :scaleProperties, nil)
    JR.put(this, :maxLength, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_fontSize, p_maxLength) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :fontSize, p_fontSize)
      JR.lset(f, :maxLength, p_maxLength)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :scaleProperties, ScaleProperties.jnew())
        JR.put(JR.get(this, :scaleProperties), :scaleHeight, JR.lget(f, :fontSize))
        JR.put(this, :maxLength, JR.lget(f, :maxLength))
    end)
  end

  def jnew(p_fontSize, p_maxLength) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_fontSize, p_maxLength)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :abToGBUtil, ABToGBUtil.jm_getInstance())
        JR.lset(f, :abCanvas, JR.get(JR.lget(f, :abToGBUtil), :abCanvas))
        JR.lset(f, :font, Font.jm_getFont(Font.jstatic_FACE_SYSTEM(), Font.jstatic_STYLE_PLAIN(), JR.get(JR.get(this, :scaleProperties), :scaleHeight)))
        JR.lset(f, :customTextBox, CustomTextBox2.jnew(JR.call(JR.lget(f, :abCanvas), :jm_getCustomCommandListener, []), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(this, :maxLength), TextField.jstatic_ANY(), JR.lget(f, :font), JR.call(JR.call(JR.lget(f, :abCanvas), :jm_getLayerManager, []), :jm_getBackgroundBasicColor, []), JR.call(JR.call(JR.lget(f, :abCanvas), :jm_getLayerManager, []), :jm_getForegroundBasicColor, [])))
        throw({:jreturn, CustomTextBoxIndexedAnimation.jnew(JR.lget(f, :customTextBox))})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        JR.lset(f, :fontSize, JR.get(JR.get(this, :scaleProperties), :scaleHeight))
        JR.put(this, :scaleProperties, JR.lget(f, :scaleProperties))
        if (JR.get(JR.get(this, :scaleProperties), :scaleHeight) < 6) do
            JR.put(JR.get(this, :scaleProperties), :scaleHeight, JR.lget(f, :fontSize))
        end
    end)
  end
end


