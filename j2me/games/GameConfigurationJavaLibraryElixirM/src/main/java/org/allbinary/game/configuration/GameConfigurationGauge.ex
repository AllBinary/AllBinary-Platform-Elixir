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

defmodule GameConfigurationGauge do
  def jsuper(), do: Gauge

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_gameConfiguration) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameConfiguration, p_gameConfiguration)
        Gauge.jinit(this, JR.call(JR.lget(f, :gameConfiguration), :jm_getName, []), JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_isModifiable, []), :jm_booleanValue, []), (JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMaxValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, [])), (JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getValue, []), :jm_intValue, []) - JR.call(JR.call(JR.lget(f, :gameConfiguration), :jm_getMinValue, []), :jm_intValue, [])))
        GameConfigurationGauge.jinitfields(this)
    end)
  end

  def jnew(p_gameConfiguration) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameConfiguration)
    this
  end
end


