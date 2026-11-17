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
# package org.allbinary.game.score.displayable

defmodule HighScoreTextBox do
  def jsuper(), do: CustomTextBox

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :virtualKeyboardEventHandler, nil)
    JR.put(this, :highScoreUtil, nil)
    JR.put(this, :pleaseWait, nil)
    JR.put(this, :paintable, nil)
    JR.put(this, :submitted, false)
        JR.put(this, :virtualKeyboardEventHandler, VirtualKeyboardEventHandler.jm_getInstance())
        
        JR.put(this, :pleaseWait, SimpleTextPaintable.jnew(JR.get(JR.get(this, :commonStrings), :PLEASE_WAIT), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        JR.put(this, :paintable, NullPaintable.jm_getInstance())
        JR.put(this, :submitted, false)
    nil
  end


  def jinit(this, p_highScoresFactoryInterface, p_highScoresHelper, p_abeClientInformation, p_gameInfo, p_cmdListener, p_name, p_highScore, p_backgrounBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresFactoryInterface, p_highScoresFactoryInterface)
      JR.lset(f, :highScoresHelper, p_highScoresHelper)
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :name, p_name)
      JR.lset(f, :highScore, p_highScore)
      JR.lset(f, :backgrounBasicColor, p_backgrounBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        CustomTextBox.jinit(this, JR.lget(f, :cmdListener), "New High Score Enter Name:", JR.lget(f, :name), 12, TextField.jstatic_ANY(), Font.jm_getDefaultFont(), JR.lget(f, :backgrounBasicColor), JR.lget(f, :foregroundBasicColor))
        HighScoreTextBox.jinitfields(this)
        JR.put(this, :highScoreUtil, HighScoreUtil.jnew(JR.lget(f, :highScoresFactoryInterface), JR.lget(f, :highScoresHelper), JR.lget(f, :abeClientInformation), JR.lget(f, :gameInfo), JR.lget(f, :cmdListener), JR.lget(f, :name), JR.lget(f, :highScore)))
        JR.lset(f, :operatingSystemInterface, JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
        if JR.call(JR.lget(f, :operatingSystemInterface), :jm_isOverScan, []) do
            JR.lset(f, :username, JR.call(InApplicationPurchaseFactory.jm_getInstance(), :jm_getUserName, []))
            JR.call(JR.call(this, :jm_getTextFieldItem, []), :jm_setString, [JR.lget(f, :username)])
        end
    end)
  end

  def jnew(p_highScoresFactoryInterface, p_highScoresHelper, p_abeClientInformation, p_gameInfo, p_cmdListener, p_name, p_highScore, p_backgrounBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_highScoresFactoryInterface, p_highScoresHelper, p_abeClientInformation, p_gameInfo, p_cmdListener, p_name, p_highScore, p_backgrounBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(PostGameCommandFactory.jm_getInstance(), :jm_addCommands, [this])
        JR.call(this, :jm_addCommand, [HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND()])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :virtualKeyboardEventHandler), :jm_open, [])
        JR.put(this, :paintable, NullPaintable.jm_getInstance())
        CustomTextBox.jm_open(this)
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :virtualKeyboardEventHandler), :jm_close, [])
        JR.put(this, :paintable, JR.get(this, :pleaseWait))
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
        CustomTextBox.jm_close(this)
        JR.call(this, :jm_removeCommand, [HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND()])
        JR.call(this, :jm_update, [])
        if JR.get(this, :submitted) do
            JR.call(JR.get(this, :highScoreUtil), :jm_saveHighScore, [])
        else
            nil
        end
        JR.put(this, :paintable, NullPaintable.jm_getInstance())
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :name, JR.call(JR.call(this, :jm_getTextFieldItem, []), :jm_getString, []))
        JR.call(JR.get(this, :highScoreUtil), :jm_update, [JR.lget(f, :name)])
        CustomTextBox.jm_update(this)
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        CustomTextBox.jm_paint(this, JR.lget(f, :graphics))
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_saveHighScore(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :highScoreUtil), :jm_saveHighScore, [])
    end)
  end


  def jm_submit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :highScoreUtil), :jm_submit, [this])
    end)
  end
end


