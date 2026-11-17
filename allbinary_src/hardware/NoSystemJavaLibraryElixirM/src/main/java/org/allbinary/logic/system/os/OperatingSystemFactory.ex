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
# package org.allbinary.logic.system.os

defmodule OperatingSystemFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OperatingSystemFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :genericOperatingSystem, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :genericOperatingSystem, NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, OperatingSystemFactory.jstatic_instance()})
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


  def jm_getOperatingSystemInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        try do
            JR.lset(f, :osString, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["OperatingSystem Info: "]), :jm_append, [JR.call(JR.get(this, :genericOperatingSystem), :jm_toString, [])]), :jm_toString, []))
            IO.puts(JR.str(JR.lget(f, :osString)))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.lget(f, :osString), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
        end
        throw({:jreturn, JR.get(this, :genericOperatingSystem)})
    end)
  end
end


