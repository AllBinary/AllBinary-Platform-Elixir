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
    JR.put(this, :commonStrings, nil)
    JR.put(this, :genericOperatingSystem, nil)
    JR.put(this, :hasDetected, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :genericOperatingSystem, NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM())
        JR.put(this, :hasDetected, false)
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
        try do
            JR.lset(f, :operatingSystems, OperatingSystems.jm_getInstance())
            JR.lset(f, :systemProperties, SystemProperties.jm_getInstance())
            JR.lset(f, :osName, JR.call(JR.lget(f, :systemProperties), :jm_getName, []))
            JR.lset(f, :osArch, JR.call(JR.lget(f, :systemProperties), :jm_getArch, []))
            JR.lset(f, :osVersion, JR.call(JR.lget(f, :systemProperties), :jm_getVersion, []))
            if !JR.get(this, :hasDetected) do
                JR.call(JR.get(this, :logUtil), :jm_putF, ["osName: " <> JR.lget(f, :osName), this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE)])
                JR.put(this, :hasDetected, true)
                if (JR.index_of(JR.lget(f, :osName), JR.get(JR.lget(f, :operatingSystems), :LINUX)) >= 0) do
                    if JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_contains, [JR.get(LogConfigTypeFactory.jm_getInstance(), :FACTORYERROR)]) do
                        JR.call(JR.get(this, :logUtil), :jm_putF, ["Found a Linux OS", this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE)])
                    end
                    JR.put(this, :genericOperatingSystem, JR.call(LinuxOperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
                else
                    if (JR.index_of(JR.lget(f, :osName), JR.get(JR.lget(f, :operatingSystems), :WINDOWS)) >= 0) do
                    if JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_contains, [JR.get(LogConfigTypeFactory.jm_getInstance(), :FACTORYERROR)]) do
                        JR.call(JR.get(this, :logUtil), :jm_putF, ["Found a Windows OS", this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE)])
                    end
                    JR.put(this, :genericOperatingSystem, JR.call(WindowsOperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
                else
                    if (JR.index_of(JR.lget(f, :osName), JR.get(JR.lget(f, :operatingSystems), :SOLARIS)) >= 0) do
                    if JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_contains, [JR.get(LogConfigTypeFactory.jm_getInstance(), :FACTORYERROR)]) do
                        JR.call(JR.get(this, :logUtil), :jm_putF, ["Found a Solaris OS", this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE)])
                    end
                    JR.put(this, :genericOperatingSystem, JR.call(SolarisOperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
                else
                    throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["OS Not Supported: "]), :jm_append, [JR.lget(f, :osName)]), :jm_toString, []))})
                end
                end
                end
                JR.lset(f, :log, LogFactory.jm_getInstanceF(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["OperatingSystem Info: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :genericOperatingSystem)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE)))
                IO.puts(JR.str(JR.call(JR.lget(f, :log), :jm_toString, [])))
                JR.call(JR.get(this, :logUtil), :jm_putL, [JR.lget(f, :log)])
            end
            throw({:jreturn, JR.get(this, :genericOperatingSystem)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            if JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_contains, [JR.get(LogConfigTypeFactory.jm_getInstance(), :FACTORYERROR)]) do
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
            end
            throw({:jreturn, NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM()})
        end
    end)
  end
end


