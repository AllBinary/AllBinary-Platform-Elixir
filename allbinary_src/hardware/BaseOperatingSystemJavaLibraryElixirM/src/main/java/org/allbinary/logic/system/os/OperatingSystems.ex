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

defmodule OperatingSystems do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OperatingSystems.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :LINUX, nil)
    JR.put(this, :WINDOWS, nil)
    JR.put(this, :SOLARIS, nil)
    JR.put(this, :WINDOWS2000, nil)
    JR.put(this, :WINDOWS_NT, nil)
    JR.put(this, :WINDOWS_10, nil)
    JR.put(this, :WINDOWS_11, nil)
    JR.put(this, :WINDOWS_VISTA, nil)
    JR.put(this, :WINDOWS_XP, nil)
    JR.put(this, :ANDROID, nil)
    JR.put(this, :HARMONY, nil)
    JR.put(this, :unknownSpecificOSAllowed, false)
        JR.put(this, :LINUX, "Linux")
        JR.put(this, :WINDOWS, "Windows")
        JR.put(this, :SOLARIS, "Solaris")
        JR.put(this, :WINDOWS2000, "Windows 2000")
        JR.put(this, :WINDOWS_NT, "Windows NT")
        JR.put(this, :WINDOWS_10, "Windows 10")
        JR.put(this, :WINDOWS_11, "Windows 11")
        JR.put(this, :WINDOWS_VISTA, "Windows Vista")
        JR.put(this, :WINDOWS_XP, "Windows XP")
        JR.put(this, :ANDROID, JR.get(this, :LINUX))
        JR.put(this, :HARMONY, "HarmonyOS")
        JR.put(this, :unknownSpecificOSAllowed, true)
    nil
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


  def jm_isUnknownSpecificOSAllowed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :unknownSpecificOSAllowed)})
    end)
  end


  def jm_setUnknownSpecificOSAllowed(this, p_aUnknownSpecificOSAllowed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aUnknownSpecificOSAllowed, p_aUnknownSpecificOSAllowed)
        JR.put(this, :unknownSpecificOSAllowed, JR.lget(f, :aUnknownSpecificOSAllowed))
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, OperatingSystems.jstatic_instance()})
    end)
  end
end


