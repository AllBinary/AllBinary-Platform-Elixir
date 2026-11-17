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

defmodule GameSpeed do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameSpeed.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_getSpeed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :speedGameConfiguration, JR.get(GameConfigurationCentral.jm_getInstance(), :SPEED))
        throw({:jreturn, (((JR.call(JR.call(JR.lget(f, :speedGameConfiguration), :jm_getMaxValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :speedGameConfiguration), :jm_getValue, []), :jm_intValue, [])) + 1))})
    end)
  end


  def jm_getDelay(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :speedGameConfiguration, JR.get(GameConfigurationCentral.jm_getInstance(), :SPEED))
        throw({:jreturn, (19 * ((JR.call(JR.call(JR.lget(f, :speedGameConfiguration), :jm_getMaxValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :speedGameConfiguration), :jm_getValue, []), :jm_intValue, []))))})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameSpeed.jstatic_instance()})
    end)
  end
end


