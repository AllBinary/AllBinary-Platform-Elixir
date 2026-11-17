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

defmodule GameConfigurationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameConfigurationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :GAUGE_UPDATE, nil)
    JR.put(this, :FROM, nil)
    JR.put(this, :TO, nil)
    JR.put(this, :COMPETITION_VALUE, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :GAUGE_UPDATE, "Gauge Update: ")
        JR.put(this, :FROM, " from: ")
        JR.put(this, :TO, " to: ")
        JR.put(this, :COMPETITION_VALUE, 1)
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameConfigurationUtil.jstatic_instance()})
    end)
  end


  def jm_change(this, p_gameOptionsForm, p_gauge) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameOptionsForm, p_gameOptionsForm)
      JR.lset(f, :gauge, p_gauge)
        JR.call(this, :jm_update, [JR.lget(f, :gauge)])
        JR.lset(f, :gameConfigurationSingleton, GameConfigurationSingleton.jm_getInstance())
        JR.lset(f, :gameConfiguration, JR.call(JR.lget(f, :gameConfigurationSingleton), :jm_getInstanceByName, [JR.call(JR.lget(f, :gauge), :jm_getLabel, [])]))
        JR.call(this, :jm_updateChallange, [JR.lget(f, :gameOptionsForm), JR.lget(f, :gameConfiguration)])
    end)
  end


  def jm_update(this, p_gauge) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gauge, p_gauge)
        JR.lset(f, :gameConfigurationSingleton, GameConfigurationSingleton.jm_getInstance())
        JR.lset(f, :gameConfiguration, JR.call(JR.lget(f, :gameConfigurationSingleton), :jm_getInstanceByName, [JR.call(JR.lget(f, :gauge), :jm_getLabel, [])]))
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.lset(f, :value, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [(JR.call(JR.lget(f, :gauge), :jm_getValue, []) + JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, []))]))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :GAUGE_UPDATE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :gameConfiguration), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :FROM)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :TO)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.lget(f, :value), :jm_intValue, []))])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
        JR.call(JR.lget(f, :gameConfiguration), :jm_setValue, [JR.lget(f, :value)])
    end)
  end


  def jm_setDefault(this, p_gauge) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gauge, p_gauge)
        JR.lset(f, :gameConfigurationSingleton, GameConfigurationSingleton.jm_getInstance())
        JR.lset(f, :gameConfiguration, JR.call(JR.lget(f, :gameConfigurationSingleton), :jm_getInstanceByName, [JR.call(JR.lget(f, :gauge), :jm_getLabel, [])]))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Gauge Default: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :gameConfiguration), :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :TO)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getDefaultValue, []), :jm_intValue, []))])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "setDefault"])
        JR.call(JR.lget(f, :gauge), :jm_setValue, [(JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getDefaultValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :gameConfiguration), :jm_setValue, [JR.call(JR.lget(f, :gameConfiguration), :jm_getDefaultValue, [])])
    end)
  end


  def jm_updateChallange(this, p_gameOptionsForm, p_gameConfiguration) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameOptionsForm, p_gameOptionsForm)
      JR.lset(f, :gameConfiguration, p_gameConfiguration)
        JR.lset(f, :gameConfigurationSingleton, GameConfigurationSingleton.jm_getInstance())
        JR.lset(f, :gameConfigurationCentral, GameConfigurationCentral.jm_getInstance())
        if (JR.lget(f, :gameConfiguration) == JR.get(JR.lget(f, :gameConfigurationCentral), :CHALLENGE_LEVEL)) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "updateChallange"])
            JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :COLLIDE_DAMAGE), :jm_setValue, [JR.call(JR.lget(f, :gameConfiguration), :jm_getValue, [])])
            JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :ATTACK_CHALLENGE_LEVEL), :jm_setValue, [JR.call(JR.lget(f, :gameConfiguration), :jm_getValue, [])])
            JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :DURABILITY_CHALLENGE_LEVEL), :jm_setValue, [JR.call(JR.lget(f, :gameConfiguration), :jm_getValue, [])])
            JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :SPEED_CHALLENGE_LEVEL), :jm_setValue, [JR.call(JR.lget(f, :gameConfiguration), :jm_getValue, [])])
            JR.lset(f, :size, JR.call(JR.lget(f, :gameOptionsForm), :jm_size, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :item, JR.call(JR.lget(f, :gameOptionsForm), :jm_get, [JR.lget(f, :index)]))
                if JR.instance_of(JR.lget(f, :item), GameConfigurationGauge) do
                    JR.lset(f, :gauge, JR.lget(f, :item))
                    JR.lset(f, :name, JR.call(JR.lget(f, :item), :jm_getLabel, []))
                    JR.lset(f, :nextGameConfiguration, JR.call(JR.lget(f, :gameConfigurationSingleton), :jm_getInstanceByName, [JR.lget(f, :name)]))
                    if (JR.lget(f, :nextGameConfiguration) == JR.get(JR.lget(f, :gameConfigurationCentral), :COLLIDE_DAMAGE)) do
                        JR.call(JR.lget(f, :gauge), :jm_setValue, [(JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :COLLIDE_DAMAGE), :jm_getValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, []))])
                    else
                        if (JR.lget(f, :nextGameConfiguration) == JR.get(JR.lget(f, :gameConfigurationCentral), :DURABILITY_CHALLENGE_LEVEL)) do
                        JR.call(JR.lget(f, :gauge), :jm_setValue, [(JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :DURABILITY_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, []))])
                    else
                        if (JR.lget(f, :nextGameConfiguration) == JR.get(JR.lget(f, :gameConfigurationCentral), :ATTACK_CHALLENGE_LEVEL)) do
                        JR.call(JR.lget(f, :gauge), :jm_setValue, [(JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :ATTACK_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, []))])
                    else
                        if (JR.lget(f, :nextGameConfiguration) == JR.get(JR.lget(f, :gameConfigurationCentral), :SPEED_CHALLENGE_LEVEL)) do
                        JR.call(JR.lget(f, :gauge), :jm_setValue, [(JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :SPEED_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, []))])
                    end
                    end
                    end
                    end
                end
            end)
        end
    end)
  end


  def jm_updateCompetitionValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "updateCompetitionValue"])
        JR.lset(f, :gameConfigurationCentral, GameConfigurationCentral.jm_getInstance())
        JR.put(this, :COMPETITION_VALUE, (((JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :COLLIDE_DAMAGE), :jm_getValue, []), :jm_intValue, []) + JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :ATTACK_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, [])) + JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :DURABILITY_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, [])) + JR.call(JR.call(JR.get(JR.lget(f, :gameConfigurationCentral), :SPEED_CHALLENGE_LEVEL), :jm_getValue, []), :jm_intValue, [])))
        JR.put(this, :COMPETITION_VALUE, (Bitwise.bsr(JR.get(this, :COMPETITION_VALUE), 2)))
    end)
  end


  def jm_getCompetitionValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :COMPETITION_VALUE)})
    end)
  end
end


