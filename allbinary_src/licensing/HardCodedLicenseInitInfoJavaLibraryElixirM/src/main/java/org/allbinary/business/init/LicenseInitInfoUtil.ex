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
# package org.allbinary.business.init

defmodule LicenseInitInfoUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LicenseInitInfoUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :INITFILENAME, nil)
    JR.put(this, :ABOUT, nil)
    JR.put(this, :PRIVACY_POLICY, nil)
    JR.put(this, :OFFICIAL_ALLBINARY_SERVICES_SERVER, nil)
        JR.put(this, :INITFILENAME, "licenseinitdata.dat")
        JR.put(this, :ABOUT, "about")
        JR.put(this, :PRIVACY_POLICY, "privacy_policy")
        JR.put(this, :OFFICIAL_ALLBINARY_SERVICES_SERVER, "https://services.allbinary.com/LicServ/serverssl.php")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LicenseInitInfoUtil.jstatic_instance()})
    end)
  end


  def jm_setFilePath(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        nil
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


  def jm_write(this, p_initData) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initData, p_initData)
        nil
    end)
  end


  def jm_read(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_readAgain, [0])})
    end)
  end


  def jm_readAgain(this, p_initializeCounter) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initializeCounter, p_initializeCounter)
        JR.lset(f, :licenseInitInfo, LicenseInitInfo.jnew())
        JR.call(JR.lget(f, :licenseInitInfo), :jm_clearServers, [])
        JR.call(JR.lget(f, :licenseInitInfo), :jm_addServer, [JR.get(this, :OFFICIAL_ALLBINARY_SERVICES_SERVER)])
        throw({:jreturn, JR.lget(f, :licenseInitInfo)})
    end)
  end
end


