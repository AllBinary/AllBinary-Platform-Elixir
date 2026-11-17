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

defmodule CustomTextBoxIndexedAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :customTextBox, nil)
    JR.put(this, :lastText, nil)
    JR.put(this, :hasChanged, false)
    JR.put(this, :textChangeListener, nil)
        
        JR.put(this, :lastText, JR.get(StringUtil.jm_getInstance(), :INIT_STRING))
        JR.put(this, :hasChanged, true)
        JR.put(this, :textChangeListener, TextChangeListener.jm_getInstance())
    nil
  end


  def jinit(this, p_customTextBox) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :customTextBox, p_customTextBox)
        IndexedAnimation.jinit(this, AnimationBehavior.jm_getInstance())
        CustomTextBoxIndexedAnimation.jinitfields(this)
        JR.put(this, :customTextBox, JR.lget(f, :customTextBox))
    end)
  end

  def jnew(p_customTextBox) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_customTextBox)
    this
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.call(JR.call(JR.get(this, :customTextBox), :jm_getTextFieldItem, []), :jm_setForegroundBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end


  def jm_setBackgroundBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.call(JR.call(JR.get(this, :customTextBox), :jm_getTextFieldItem, []), :jm_setBackgroundBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end


  def jm_setTextWithOnMeasure(this, p_text, p_textChangeListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :textChangeListener, p_textChangeListener)
        JR.call(this, :jm_setText, [JR.lget(f, :text)])
        JR.put(this, :textChangeListener, JR.lget(f, :textChangeListener))
    end)
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.call(JR.get(this, :textChangeListener), :jm_onMeasure, [])
        JR.put(this, :textChangeListener, TextChangeListener.jm_getInstance())
    end)
  end


  def jm_setText(this, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
        if (JR.get(this, :lastText) != JR.lget(f, :text)) do
            JR.put(this, :hasChanged, true)
            JR.put(this, :lastText, JR.lget(f, :text))
            JR.call(JR.call(JR.get(this, :customTextBox), :jm_getTextFieldItem, []), :jm_setString, [JR.lget(f, :text)])
        end
    end)
  end


  def jm_getText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.get(this, :customTextBox), :jm_getTextFieldItem, []), :jm_getString, [])})
    end)
  end


  def jm_onEventRaw(this, p_keyCode, p_deviceId, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :repeated, p_repeated)
        JR.call(JR.get(this, :customTextBox), :jm_onEventRaw, [JR.lget(f, :keyCode), JR.lget(f, :deviceId), JR.lget(f, :repeated)])
    end)
  end


  def jm_getFontHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.get(this, :customTextBox), :jm_getTextFieldItem, []), :jm_getFontHeight, [])})
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
        JR.call(JR.get(this, :customTextBox), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
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
        nil
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, IndexedAnimation.jm_getWidth(this)})
    end)
  end
end


