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
# package org.allbinary.logic.system.os.solaris

defmodule SolarisOperatingSystemFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SolarisOperatingSystemFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SolarisOperatingSystemFactory.jstatic_instance()})
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
            JR.lset(f, :osName, JR.call(SystemProperties.jm_getInstance(), :jm_getName, []))
            JR.lset(f, :operatingSystemInterface, nil)
            if (JR.call(JR.lget(f, :osName), :jm_compareTo, [JR.get(JR.lget(f, :operatingSystems), :SOLARIS)]) == 0) do
                JR.lset(f, :operatingSystemInterface, SolarisOS.jnew())
            else
                if JR.call(JR.lget(f, :operatingSystems), :jm_isUnknownSpecificOSAllowed, []) do
                    JR.lset(f, :operatingSystemInterface, SolarisOS.jnew())
                else
                    throw({:jexception, JR.exception("Exception", "Specific Solaris OS Not Supported: " <> JR.lget(f, :osName))})
                end
            end
            throw({:jreturn, JR.lget(f, :operatingSystemInterface)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            if JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_contains, [JR.get(LogConfigTypeFactory.jm_getInstance(), :FACTORYERROR)]) do
                JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
            end
            throw({:jreturn, NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM()})
        end
    end)
  end
end


