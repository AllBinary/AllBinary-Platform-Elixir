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

defmodule GameOptionsForm do
  def jsuper(), do: CommandForm

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :meUtil, nil)
        JR.put(this, :meUtil, MIDPUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :title, p_title)
      JR.lset(f, :backgrounBasicColor, p_backgrounBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        CommandForm.jinit(this, JR.lget(f, :commandListener), JR.lget(f, :title), JR.lget(f, :backgrounBasicColor), JR.lget(f, :foregroundBasicColor))
        GameOptionsForm.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.call(this, :jm_addConfiguration, [])
        JR.lset(f, :gameFeatureFormUtil, GameFeatureFormUtil.jm_getInstance())
        JR.call(JR.lget(f, :gameFeatureFormUtil), :jm_addChoiceGroup, [this, JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []), Choice.jstatic_EXCLUSIVE()])
        JR.call(JR.lget(f, :gameFeatureFormUtil), :jm_addChoiceGroup, [this, JR.call(GameFeatureChoiceGroups.jm_getMultipleInstance(), :jm_get, []), Choice.jstatic_MULTIPLE()])
        JR.call(this, :jm_initCommands, [JR.lget(f, :commandListener)])
        JR.call(this, :jm_setItemStateListener, [GameFeatureItemStateListener.jnew(this)])
        JR.call(this, :jm_addTextFieldsIfSimulated, [])
    end)
  end

  def jnew(p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_closeClientInformation(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        CommandForm.jm_close(this)
        JR.call(this, :jm_save, [JR.lget(f, :abeClientInformation)])
    end)
  end


  def jm_addTextFieldsIfSimulated(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :key, JR.get(OrientationData.jm_getInstance(), :ORIENTATION_SENSOR_INPUT))
        JR.lset(f, :hashtable, JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []))
        if (JR.lget(f, :hashtable) != nil) do
            JR.lset(f, :listCanBeNull, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :key)]))
            if (JR.lget(f, :listCanBeNull) != nil) do
                JR.lset(f, :list, JR.lget(f, :listCanBeNull))
                if JR.call(JR.lget(f, :list), :jm_contains, [JR.get(SensorFeatureFactory.jm_getInstance(), :SIMULATED_ORIENTATION_SENSORS)]) do
                    JR.call(this, :jm_addTextFields, [])
                end
            end
        end
    end)
  end


  def jm_addTextFields(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :hashtable, GameConfigurationTextInput.jm_getHashtable())
        JR.lset(f, :size, JR.call(JR.lget(f, :hashtable), :jm_size, []))
        JR.lset(f, :objectArray, JR.call(HashtableUtil.jm_getInstance(), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
        JR.lset(f, :gameConfigurationTextInput, nil)
        JR.lset(f, :textField, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameConfigurationTextInput, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index))]))
            JR.lset(f, :textField, TextField.jnew(JR.call(JR.lget(f, :gameConfigurationTextInput), :jm_getLabel, []), JR.call(JR.lget(f, :gameConfigurationTextInput), :jm_getText, []), 30, TextField.jstatic_ANY()))
            JR.call(JR.get(this, :meUtil), :jm_appendItem, [this, JR.lget(f, :textField)])
        end)
    end)
  end


  def jm_addConfiguration(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :METHOD_NAME, "addConfiguration")
        JR.lset(f, :NAME, "Name: ")
        JR.lset(f, :list, JR.call(GameConfigurationSingleton.jm_getInstance(), :jm_getOptionsBasicArrayList, []))
        JR.lset(f, :GAUGE_CHANGE, JR.get(MyCommandsFactory.jm_getInstance(), :GAUGE_CHANGE))
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :gameConfiguration, nil)
        JR.lset(f, :gauge, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameConfiguration, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :NAME)]), :jm_append, [JR.call(JR.lget(f, :gameConfiguration), :jm_toString, [])]), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            JR.lset(f, :gauge, GameConfigurationGauge.jnew(JR.lget(f, :gameConfiguration)))
            JR.call(JR.lget(f, :gauge), :jm_setDefaultCommand, [JR.lget(f, :GAUGE_CHANGE)])
            JR.call(JR.lget(f, :gauge), :jm_setItemCommandListener, [GameFeatureItemCommandListener.jnew(this)])
            JR.call(JR.get(this, :meUtil), :jm_appendItem, [this, JR.lget(f, :gauge)])
        end)
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
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_OPTIONS)])
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :DEFAULT_OPTIONS)])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_save(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.lset(f, :size, JR.call(this, :jm_size, []))
        JR.lset(f, :item, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :item, JR.call(this, :jm_get, [JR.lget(f, :index)]))
            if JR.instance_of(JR.lget(f, :item), GameConfigurationGauge) do
                JR.call(GameConfigurationUtil.jm_getInstance(), :jm_update, [JR.lget(f, :item)])
            else
                if JR.instance_of(JR.lget(f, :item), TextField) do
                GameConfigurationTextInput.jm_update(JR.lget(f, :item))
            end
            end
        end)
        JR.call(GameConfigurationUtil.jm_getInstance(), :jm_updateCompetitionValue, [])
        JR.lset(f, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.lset(f, :SCALE, JR.get(GameConfigurationCentral.jm_getInstance(), :SCALE))
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.call(JR.lget(f, :SCALE), :jm_getName, []), JR.str(JR.call(JR.call(JR.lget(f, :SCALE), :jm_getValue, []), :jm_intValue, []))])
        JR.lset(f, :keyValuePersistance, GameConfigurationPersistanceSingleton.jm_getInstance())
        JR.call(JR.lget(f, :keyValuePersistance), :jm_clear, [])
        JR.call(JR.lget(f, :keyValuePersistance), :jm_loadAll, [JR.lget(f, :abeClientInformation)])
        JR.lset(f, :list, JR.call(JR.lget(f, :keyValuePersistance), :jm_getIds, []))
        JR.call(JR.lget(f, :keyValuePersistance), :jm_save, [JR.lget(f, :abeClientInformation), JR.lget(f, :hashtable)])
        JR.lset(f, :size2, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :integer, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :integer, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :keyValuePersistance), :jm_delete, [JR.lget(f, :abeClientInformation), JR.call(JR.lget(f, :integer), :jm_intValue, [])])
        end)
    end)
  end
end


