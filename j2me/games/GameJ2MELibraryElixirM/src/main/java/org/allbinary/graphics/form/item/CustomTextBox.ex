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
# package org.allbinary.graphics.form.item

defmodule CustomTextBox do
  def jsuper(), do: GameCommandCanvas

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :textFieldItem, nil)
    JR.put(this, :inputFactory, nil)
        
        JR.put(this, :inputFactory, InputFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_cmdListener, p_label, p_text, p_maxSize, p_constraints, p_font, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :label, p_label)
      JR.lset(f, :text, p_text)
      JR.lset(f, :maxSize, p_maxSize)
      JR.lset(f, :constraints, p_constraints)
      JR.lset(f, :font, p_font)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        GameCommandCanvas.jinit(this, JR.lget(f, :cmdListener), JR.lget(f, :label), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        CustomTextBox.jinitfields(this)
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.lset(f, :textFieldItem, ABTextFieldItem.jnew(this, TextItemVisitor.jnew(), JR.get(JR.lget(f, :stringUtil), :EMPTY_STRING), JR.get(JR.lget(f, :stringUtil), :EMPTY_STRING), JR.lget(f, :maxSize), 0, JR.get(JR.lget(f, :stringUtil), :EMPTY_STRING), JR.lget(f, :font), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor)))
        JR.call(JR.lget(f, :textFieldItem), :jm_setString, [JR.lget(f, :text)])
        JR.put(this, :textFieldItem, JR.lget(f, :textFieldItem))
        JR.call(this, :jm_setTitle, [JR.lget(f, :label)])
    end)
  end

  def jnew(p_cmdListener, p_label, p_text, p_maxSize, p_constraints, p_font, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cmdListener, p_label, p_text, p_maxSize, p_constraints, p_font, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_submit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
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
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, "onEvent"])
        JR.call(this, :jm_keyPressedByDevice, [JR.lget(f, :keyCode), JR.lget(f, :deviceId)])
    end)
  end


  def jm_keyPressed(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.call(this, :jm_keyPressedByDevice, [JR.lget(f, :keyCode), 0])
    end)
  end


  def jm_keyReleased(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.call(this, :jm_keyReleasedByDevice, [JR.lget(f, :keyCode), 0])
    end)
  end


  def jm_keyRepeated(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.call(this, :jm_keyRepeatedByDevice, [JR.lget(f, :keyCode), 0])
    end)
  end


  def jm_keyPressedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :KEY_PRESSED)])
            JR.lset(f, :platformKeyFactory, PlatformKeyFactory.jm_getInstance())
            JR.lset(f, :input, JR.call(JR.get(this, :inputFactory), :jm_getInstanceById, [JR.lget(f, :keyCode)]))
            if JR.call(JR.lget(f, :platformKeyFactory), :jm_isSubmission, [JR.lget(f, :input)]) do
                JR.call(this, :jm_submit, [])
            else
                JR.call(JR.get(this, :textFieldItem), :jm_keyPressed, [JR.lget(f, :keyCode)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :KEY_PRESSED), JR.lget(f, :e)])
        end
    end)
  end


  def jm_keyReleasedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        nil
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :backgroundColor)])
        JR.call(JR.lget(f, :graphics), :jm_fillRect, [0, 0, JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []), JR.call(JR.get(this, :displayInfo), :jm_getLastHeight, [])])
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :foregroundColor)])
        if !J2MEUtil.jm_isJ2ME() do
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(this, :jm_getTitle, []), 8, 1, 0])
        end
        JR.call(this, :jm_paintXY, [JR.lget(f, :graphics), 8, (JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_getHeight, []) + 2)])
        GameCommandCanvas.jm_paint(this, JR.lget(f, :graphics))
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
        JR.call(JR.get(this, :textFieldItem), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_getTextFieldItem(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :textFieldItem)})
    end)
  end
end


