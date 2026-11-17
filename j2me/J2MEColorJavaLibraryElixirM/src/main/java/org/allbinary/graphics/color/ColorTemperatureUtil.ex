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
# package org.allbinary.graphics.color

defmodule ColorTemperatureUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ColorTemperatureUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColorFactory, nil)
        JR.put(this, :basicColorFactory, BasicColorFactory.jm_getInstance())
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
        throw({:jreturn, ColorTemperatureUtil.jstatic_instance()})
    end)
  end


  def jm_getBasicColor(this, p_thirdTemp) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :thirdTemp, p_thirdTemp)
        JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :RED))
        if (JR.lget(f, :thirdTemp) > 3700) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :PURPLE))
        else
            if (JR.lget(f, :thirdTemp) > 3200) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :BLUE))
        else
            if (JR.lget(f, :thirdTemp) > 2700) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :PUCE))
        else
            if (JR.lget(f, :thirdTemp) > 2200) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :WHITE))
        else
            if (JR.lget(f, :thirdTemp) > 1700) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :GREEN))
        else
            if (JR.lget(f, :thirdTemp) > 1200) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :YELLOW))
        else
            if (JR.lget(f, :thirdTemp) > 700) do
            JR.lset(f, :basicColor, JR.get(JR.get(this, :basicColorFactory), :ORANGE))
        end
        end
        end
        end
        end
        end
        end
        throw({:jreturn, JR.lget(f, :basicColor)})
    end)
  end
end


