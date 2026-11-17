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
# package org.allbinary.game.configuration

defmodule GameDifficultyOptions do
  def jsuper(), do: CommandForm

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :meUtil, nil)
    JR.put(this, :list, nil)
        JR.put(this, :meUtil, MIDPUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_commandListener, p_title, p_list, p_backgrounBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :title, p_title)
      JR.lset(f, :list, p_list)
      JR.lset(f, :backgrounBasicColor, p_backgrounBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        CommandForm.jinit(this, JR.lget(f, :commandListener), JR.lget(f, :title), JR.lget(f, :backgrounBasicColor), JR.lget(f, :foregroundBasicColor))
        GameDifficultyOptions.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :list, JR.lget(f, :list))
        JR.call(this, :jm_update, [])
        JR.call(this, :jm_initCommands, [JR.lget(f, :commandListener)])
        JR.lset(f, :gameDifficultyFactory, GameDifficultyFactory.jm_getInstance())
        JR.call(this, :jm_setSelectedId, [JR.call(JR.lget(f, :gameDifficultyFactory), :jm_getLevel, [])])
    end)
  end

  def jnew(p_commandListener, p_title, p_list, p_backgrounBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_title, p_list, p_backgrounBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        CommandForm.jm_open(this)
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        CommandForm.jm_close(this)
        JR.call(this, :jm_save, [])
    end)
  end


  def jm_save(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameDifficultyFactory, GameDifficultyFactory.jm_getInstance())
        JR.call(JR.lget(f, :gameDifficultyFactory), :jm_setLevel, [JR.call(this, :jm_getSelectedId, [])])
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_AND_SHOW_GAME_CANVAS)])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_deleteAll, [])
        JR.call(this, :jm_add, [JR.get(this, :list), "Difficulty", Choice.jstatic_EXCLUSIVE()])
        CommandForm.jm_update(this)
    end)
  end


  def jm_add(this, p_list, p_name, p_option) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :name, p_name)
      JR.lset(f, :option, p_option)
        JR.lset(f, :choiceGroup, JR.call(this, :jm_getChoiceGroup, [JR.lget(f, :list), JR.lget(f, :name), JR.lget(f, :option)]))
        if (JR.call(JR.lget(f, :list), :jm_size, []) > 0) do
            JR.call(JR.lget(f, :choiceGroup), :jm_setSelectedIndex, [0, true])
        end
        JR.call(JR.get(this, :meUtil), :jm_appendItem, [this, JR.lget(f, :choiceGroup)])
    end)
  end


  def jm_getChoiceGroup(this, p_list, p_name, p_option) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :name, p_name)
      JR.lset(f, :option, p_option)
        JR.lset(f, :METHOD_NAME, "addChoiceGroup")
        JR.lset(f, :NAME, "Adding Choice: ")
        JR.lset(f, :choiceGroup, ChoiceGroup.jnew(JR.lget(f, :name), JR.lget(f, :option), JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []), NullImage.jstatic_NULL_IMAGE_ARRAY()))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :anyType, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :anyType, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :NAME)]), :jm_append, [JR.call(JR.lget(f, :anyType), :jm_toString, [])]), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            JR.call(JR.lget(f, :choiceGroup), :jm_append, [JR.call(JR.lget(f, :anyType), :jm_toString, []), NullImage.jstatic_NULL_IMAGE()])
        end)
        throw({:jreturn, JR.lget(f, :choiceGroup)})
    end)
  end


  def jm_setSelectedId(this, p_id) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
        JR.lset(f, :choiceGroup, JR.call(this, :jm_get, [0]))
        JR.call(JR.lget(f, :choiceGroup), :jm_setSelectedIndex, [JR.lget(f, :id), true])
    end)
  end


  def jm_getSelectedId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :choiceGroup, JR.call(this, :jm_get, [0]))
        throw({:jreturn, JR.call(JR.lget(f, :choiceGroup), :jm_getSelectedIndex, [])})
    end)
  end


  def jm_getSelectedText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :choiceGroup, JR.call(this, :jm_get, [0]))
        JR.lset(f, :value, JR.call(JR.str(JR.call(JR.lget(f, :choiceGroup), :jm_getString, [JR.call(JR.lget(f, :choiceGroup), :jm_getSelectedIndex, [])])), :jm_intValue, []))
        throw({:jreturn, JR.lget(f, :value)})
    end)
  end
end


