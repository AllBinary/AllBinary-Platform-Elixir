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

#ActualPlatform
defmodule SystemProperties do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SystemProperties.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :OS_NAME, nil)
    JR.put(this, :OS_ARCH, nil)
    JR.put(this, :OS_VERSION, nil)
    JR.put(this, :USER_HOME, nil)
        JR.put(this, :OS_NAME, "os.name")
        JR.put(this, :OS_ARCH, "os.arch")
        JR.put(this, :OS_VERSION, "os.version")
        JR.put(this, :USER_HOME, "user.home")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SystemProperties.jstatic_instance()})
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


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, J.System.jm_getProperty(JR.get(this, :OS_NAME))})
    end)
  end


  def jm_getArch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, J.System.jm_getProperty(JR.get(this, :OS_ARCH))})
    end)
  end


  def jm_getVersion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, J.System.jm_getProperty(JR.get(this, :OS_VERSION))})
    end)
  end


  def jm_getUserHomePath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, J.System.jm_getProperty(JR.get(this, :USER_HOME))})
    end)
  end
end


