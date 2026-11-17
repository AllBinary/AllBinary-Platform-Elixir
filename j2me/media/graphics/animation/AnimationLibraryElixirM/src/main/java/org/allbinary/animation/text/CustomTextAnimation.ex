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
# package org.allbinary.animation.text

defmodule CustomTextAnimation do
  def jsuper(), do: TextAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :fontDebugFactory, nil)
    JR.put(this, :fontSize, 0)
    JR.put(this, :font, nil)
    JR.put(this, :lastText, nil)
    JR.put(this, :hasChanged, false)
    JR.put(this, :textWidth, 0)
        JR.put(this, :fontDebugFactory, FontDebugFactory.jm_getInstance())
        
        
        JR.put(this, :lastText, JR.get(StringUtil.jm_getInstance(), :INIT_STRING))
        JR.put(this, :hasChanged, true)
        JR.put(this, :textWidth, 0)
    nil
  end


  def jinit(this, p_text, p_fontSize, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :fontSize, p_fontSize)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        TextAnimation.jinit(this, JR.lget(f, :text), JR.lget(f, :animationBehavior))
        CustomTextAnimation.jinitfields(this)
        JR.put(this, :fontSize, JR.lget(f, :fontSize))
        JR.put(this, :font, Font.jm_getFont(Font.jstatic_FACE_SYSTEM(), Font.jstatic_STYLE_PLAIN(), JR.lget(f, :fontSize)))
    end)
  end

  def jnew(p_text, p_fontSize, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_text, p_fontSize, p_animationBehavior)
    this
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :existingFont, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.call(JR.get(this, :fontDebugFactory), :jm_setFont, [JR.get(this, :font), JR.lget(f, :graphics)])
        TextAnimation.jm_paintXYNoUpdate(this, JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y))
        JR.call(JR.get(this, :fontDebugFactory), :jm_setFont, [JR.lget(f, :existingFont), JR.lget(f, :graphics)])
    end)
  end


  def jm_setScale(this, p_scaleX, p_scaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleX, p_scaleX)
      JR.lset(f, :scaleY, p_scaleY)
        if (JR.lget(f, :scaleX) != JR.lget(f, :scaleY)) do
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
        JR.put(this, :hasChanged, true)
        JR.put(this, :font, Font.jm_getFont(Font.jstatic_FACE_SYSTEM(), Font.jstatic_STYLE_PLAIN(), JR.int32(JR.d2i((((JR.get(this, :fontSize) * 1.0) * JR.lget(f, :scaleX)))))))
    end)
  end


  def jm_setTextWithOnMeasure(this, p_text, p_textChangeListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :textChangeListener, p_textChangeListener)
        TextAnimation.jm_setTextWithOnMeasure(this, JR.lget(f, :text), JR.lget(f, :textChangeListener))
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
            TextAnimation.jm_setText(this, JR.lget(f, :text))
        end
    end)
  end


  def jm_getText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastText)})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.get(this, :hasChanged) do
            JR.put(this, :textWidth, JR.call(JR.get(this, :font), :jm_stringWidth, [JR.aget(JR.get(this, :textArrayP), 0)]))
            JR.put(this, :hasChanged, false)
        end
        throw({:jreturn, JR.get(this, :textWidth)})
    end)
  end


  def jm_getFontHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :font), :jm_getHeight, [])})
    end)
  end
end


