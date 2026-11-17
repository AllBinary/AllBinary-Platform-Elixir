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

defmodule TextAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :textArrayP, nil)
    JR.put(this, :anchor, 0)
    JR.put(this, :fontHeight, 0)
    JR.put(this, :offsetY, 0)
    JR.put(this, :textChangeListener, nil)
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :textArrayP, JR.get(StringUtil.jm_getInstance(), :ONE_EMPTY_STRING_ARRAY))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :fontHeight, 0)
        JR.put(this, :offsetY, 0)
        JR.put(this, :textChangeListener, TextChangeListener.jm_getInstance())
    nil
  end


  def jinit(this, p_text, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        TextAnimation.jinitfields(this)
        JR.call(this, :jm_setText, [JR.lget(f, :text)])
    end)
  end

  def jnew(p_text, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_text, p_animationBehavior)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :fontHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.lset(f, :adjustedFontHeight, JR.int32(JR.d2i(-(((JR.get(this, :fontHeight) * 1.0) * 2.00)))))
        JR.put(this, :offsetY, (if JR.call(SWTJOGLProcessor.jm_getInstance(), :jm_isJOGL, []), do: JR.lget(f, :adjustedFontHeight), else: 0))
        JR.call(JR.get(this, :textChangeListener), :jm_onMeasure, [])
        JR.put(this, :textChangeListener, TextChangeListener.jm_getInstance())
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
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
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(this, :jm_paintXYNoUpdate, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_paintXYNoUpdate(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, []), JR.call(this, :jm_getColor, [])])
        JR.lset(f, :size, JR.alength(JR.get(this, :textArrayP)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.aget(JR.get(this, :textArrayP), JR.lget(f, :index)), JR.lget(f, :x), JR.int32(JR.int32(JR.lget(f, :y) + JR.get(this, :offsetY)) + (JR.int32(JR.lget(f, :index) * JR.get(this, :fontHeight)))), JR.get(this, :anchor)])
        end)
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


  def jm_setText(this, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
        JR.lset(f, :list, BasicArrayListD.jnew())
        if (byte_size(JR.lget(f, :text)) > 0) do
            JR.lset(f, :index, 0)
            JR.lset(f, :startIndex, 0)
            JR.lset(f, :endIndex, 0)
            JR.jwhile(fn -> (JR.lget(f, :index) >= 0) end, fn ->
                JR.lset(f, :startIndex, JR.lget(f, :index))
                JR.lset(f, :index, JR.index_of(JR.lget(f, :text), ?\n))
                JR.lset(f, :endIndex, JR.lget(f, :index))
                if (JR.lget(f, :index) < 0) do
                    JR.lset(f, :endIndex, byte_size(JR.lget(f, :text)))
                end
                JR.call(JR.lget(f, :list), :jm_add, [JR.substring(JR.lget(f, :text), JR.lget(f, :startIndex), JR.lget(f, :endIndex))])
                if (JR.lget(f, :index) < 0) do
                    throw(:jbreak)
                end
                JR.lpostinc(f, :index, 1)
            end)
        end
        if (JR.call(JR.lget(f, :list), :jm_size, []) > 0) do
            JR.lset(f, :textArray, JR.anew(JR.call(JR.lget(f, :list), :jm_size, []), nil))
            JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.aset(JR.lget(f, :textArray), JR.lget(f, :index), JR.call(JR.lget(f, :list), :jm_get, [JR.lget(f, :index)]))
            end)
            JR.put(this, :textArrayP, JR.lget(f, :textArray))
        else
            JR.put(this, :textArrayP, JR.get(StringUtil.jm_getInstance(), :ONE_EMPTY_STRING_ARRAY))
        end
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_getTextArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :textArrayP)})
    end)
  end


  def jm_getFontHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :fontHeight)})
    end)
  end
end


