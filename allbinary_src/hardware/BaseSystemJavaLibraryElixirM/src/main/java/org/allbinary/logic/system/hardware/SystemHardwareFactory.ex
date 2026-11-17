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
# package org.allbinary.logic.system.hardware

defmodule SystemHardwareFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SystemHardwareFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :hardwareInterface, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :hardwareInterface, NoHardware.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SystemHardwareFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance(this, p_operatingSystemInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :operatingSystemInterface, p_operatingSystemInterface)
        try do
            if (JR.get(this, :hardwareInterface) == NoHardware.jm_getInstance()) do
                JR.put(this, :hardwareInterface, JR.call(HardwareFactory.jm_getInstance(), :jm_getInstance, [JR.lget(f, :operatingSystemInterface)]))
            end
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Found Hardware", this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
        throw({:jreturn, JR.get(this, :hardwareInterface)})
    end)
  end


  def jm_static_toString() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        JR.lset(f, :systemHardwareFactory, SystemHardwareFactory.jm_getInstance())
        JR.lset(f, :osBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :osBuffer), :jm_append, ["Hardware Info: \n"])
        if (JR.get(JR.lget(f, :systemHardwareFactory), :hardwareInterface) != nil) do
            JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.call(JR.get(JR.lget(f, :systemHardwareFactory), :hardwareInterface), :jm_toString, [])])
        else
            JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.get(StringUtil.jm_getInstance(), :NULL_STRING)])
        end
        throw({:jreturn, JR.call(JR.lget(f, :osBuffer), :jm_toString, [])})
    end)
  end
end


