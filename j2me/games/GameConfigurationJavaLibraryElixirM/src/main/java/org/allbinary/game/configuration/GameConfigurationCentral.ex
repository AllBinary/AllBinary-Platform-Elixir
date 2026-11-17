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

defmodule GameConfigurationCentral do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :SCALE, nil)
    JR.put(this, :ORIENTATION, nil)
    JR.put(this, :SENSOR_UPDATE_RATE, nil)
    JR.put(this, :VIBRATION, nil)
    JR.put(this, :CHALLENGE_LEVEL, nil)
    JR.put(this, :COLLIDE_DAMAGE, nil)
    JR.put(this, :DURABILITY_CHALLENGE_LEVEL, nil)
    JR.put(this, :SPEED_CHALLENGE_LEVEL, nil)
    JR.put(this, :ATTACK_CHALLENGE_LEVEL, nil)
    JR.put(this, :CONTROL_LEVEL, nil)
    JR.put(this, :PLAYER_INPUT_WAIT, nil)
    JR.put(this, :SPEED, nil)
    JR.put(this, :SOUND_VOLUME, nil)
    JR.put(this, :MAX_GAME_OBJECTS, nil)
    JR.put(this, :MAX_LAYERS, nil)
    JR.put(this, :gameControlFidelity, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        JR.put(this, :gameControlFidelity, 36)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameConfigurationCentral.jstatic_SINGLETON() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameConfigurationCentral.jstatic_set_SINGLETON(GameConfigurationCentral.jnew())
        end
        throw({:jreturn, GameConfigurationCentral.jstatic_SINGLETON()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.put(this, :SCALE, GameConfiguration.jnew("Scale", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [2]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [2]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3])))
        JR.put(this, :ORIENTATION, GameConfiguration.jnew("Orientation", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [8])))
        JR.put(this, :SENSOR_UPDATE_RATE, GameConfiguration.jnew("Sensor Update Rate", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3])))
        JR.put(this, :VIBRATION, GameConfiguration.jnew("Vibration", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3])))
        JR.put(this, :CHALLENGE_LEVEL, GameConfiguration.jnew("Global Challenge Level", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :COLLIDE_DAMAGE, GameConfiguration.jnew("Collide Damage Challenge Level", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :DURABILITY_CHALLENGE_LEVEL, GameConfiguration.jnew("Enemy Durability Challenge Level", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :SPEED_CHALLENGE_LEVEL, GameConfiguration.jnew("Enemy Speed Challenge Level", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :ATTACK_CHALLENGE_LEVEL, GameConfiguration.jnew("Enemy Attack Challenge Level", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [3]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :CONTROL_LEVEL, GameConfiguration.jnew("Control Fidelity", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [5]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :PLAYER_INPUT_WAIT, GameConfiguration.jnew("Input Wait", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [5]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :SPEED, GameConfiguration.jnew("Game Speed (Device Specific)", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [5]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :SOUND_VOLUME, GameConfiguration.jnew("Sound Volume", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [6]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10])))
        JR.put(this, :MAX_GAME_OBJECTS, GameConfiguration.jnew("Max Game Objects", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [20]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [50])))
        JR.put(this, :MAX_LAYERS, GameConfiguration.jnew("Max Layers", JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [20]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [1]), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [50])))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_load(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        try do
            JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
            JR.lset(f, :keyValuePersistance, GameConfigurationPersistanceSingleton.jm_getInstance())
            JR.call(JR.lget(f, :keyValuePersistance), :jm_clear, [])
            JR.call(JR.lget(f, :keyValuePersistance), :jm_loadAll, [JR.lget(f, :abeClientInformation)])
            JR.lset(f, :list, JR.call(JR.lget(f, :keyValuePersistance), :jm_getIds, []))
            if (JR.call(JR.lget(f, :list), :jm_size, []) > 0) do
                JR.lset(f, :hashtable, JR.call(JR.lget(f, :keyValuePersistance), :jm_get, [0]))
                JR.lset(f, :anyType, JR.call(JR.get(this, :SCALE), :jm_getName, []))
                JR.lset(f, :value, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :anyType)]))
                JR.call(JR.get(this, :SCALE), :jm_setValue, [JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.call(JR.str(JR.lget(f, :value)), :jm_intValue, [])])])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, ["No Game Configuration To Load", this, JR.get(JR.lget(f, :commonStrings), :LOAD)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :LOAD), JR.lget(f, :e)])
        end
    end)
  end


  def jm_setGameControlFidelity(this, p_gameControlFidelity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameControlFidelity, p_gameControlFidelity)
        JR.put(this, :gameControlFidelity, JR.lget(f, :gameControlFidelity))
    end)
  end


  def jm_getGameControlFidelity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameControlFidelity)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonStrings, CommonSeps.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :SCALE), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :SCALE), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :ORIENTATION), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :ORIENTATION), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :SENSOR_UPDATE_RATE), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :SENSOR_UPDATE_RATE), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :VIBRATION), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :VIBRATION), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :CHALLENGE_LEVEL), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :COLLIDE_DAMAGE), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :COLLIDE_DAMAGE), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :DURABILITY_CHALLENGE_LEVEL), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :DURABILITY_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :SPEED_CHALLENGE_LEVEL), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :SPEED_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :ATTACK_CHALLENGE_LEVEL), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :ATTACK_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :CONTROL_LEVEL), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :CONTROL_LEVEL), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :SPEED), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :SPEED), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :MAX_GAME_OBJECTS), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :MAX_GAME_OBJECTS), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :MAX_LAYERS), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonStrings), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.get(this, :MAX_LAYERS), :jm_getValue, []), :jm_intValue, []))])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


