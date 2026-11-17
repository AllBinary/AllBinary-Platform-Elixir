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
# package org.allbinary.logic.system.security.licensing

# This is the information sent to the license server
defmodule AbeClientInformation do
  def jsuper(), do: ClientInformation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_name, p_version, p_specialName, p_shortName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :version, p_version)
      JR.lset(f, :specialName, p_specialName)
      JR.lset(f, :shortName, p_shortName)
        ClientInformation.jinit(this, JR.lget(f, :name), JR.lget(f, :version), JR.lget(f, :specialName), JR.lget(f, :shortName))
        AbeClientInformation.jinitfields(this)
    end)
  end

  def jnew(p_name, p_version, p_specialName, p_shortName) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_version, p_specialName, p_shortName)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(this, :jm_setOperatingSystemInterface, [JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, [])])
            JR.lset(f, :licenseInitInfo, JR.call(LicenseInitInfoUtil.jm_getInstance(), :jm_read, []))
            JR.call(this, :jm_setLicenseId, [JR.call(JR.lget(f, :licenseInitInfo), :jm_getLicenseId, [])])
            JR.call(this, :jm_setLicenseServers, [JR.call(JR.lget(f, :licenseInitInfo), :jm_getServerList, [])])
            JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
            if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.call(this, :jm_getLicenseId, [])]) do
                JR.lset(f, :NONE, "No License Id")
                JR.call(this, :jm_setLicenseId, [JR.lget(f, :NONE)])
            end
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Special Name: "]), :jm_append, [JR.call(this, :jm_getSpecialName, [])]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :logUtil, LogUtil.jm_getInstance())
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
    end)
  end
end


