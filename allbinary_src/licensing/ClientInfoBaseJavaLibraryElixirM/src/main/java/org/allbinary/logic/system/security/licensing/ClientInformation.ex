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
defmodule ClientInformation do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :operatingSystemInterface, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :name, nil)
    JR.put(this, :shortName, nil)
    JR.put(this, :version, nil)
    JR.put(this, :specialName, nil)
    JR.put(this, :hardSale, false)
    JR.put(this, :licenseId, nil)
    JR.put(this, :licenseServers, nil)
        JR.put(this, :operatingSystemInterface, NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        
        
        
        
        JR.put(this, :hardSale, true)
        JR.put(this, :licenseId, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :licenseServers, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
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
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :version, JR.lget(f, :version))
        JR.put(this, :specialName, JR.lget(f, :specialName))
        JR.put(this, :shortName, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :shortName)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :UNDERSCORE)]), :jm_append, [JR.lget(f, :version)]), :jm_toString, []))
        JR.call(this, :jm_init, [])
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
        nil
    end)
  end


  def jm_getOperatingSystemInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :operatingSystemInterface)})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_getSpecialName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :specialName)})
    end)
  end


  def jm_getVersion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :version)})
    end)
  end


  def jm_getLicenseId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :licenseId)})
    end)
  end


  def jm_getLicenseServers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :licenseServers)})
    end)
  end


  def jm_getLicenseServer(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.aget(JR.get(JR.get(this, :licenseServers), :objectArray), JR.lget(f, :index))})
    end)
  end


  def jm_getNumberOfLicenseServers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :licenseServers), :jm_size, [])})
    end)
  end


  def jm_toHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :abeClientInformationData, AbeClientInformationData.jm_getInstance())
        JR.lset(f, :genericOperatingSystem, JR.call(this, :jm_getOperatingSystemInterface, []))
        JR.lset(f, :clientInfoHashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :NAME), JR.get(this, :name)])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :VERSION), JR.get(this, :version)])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :SPECIALNAME), JR.get(this, :specialName)])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :LICENSEID), JR.call(this, :jm_getLicenseId, [])])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :OSNAME), JR.call(JR.lget(f, :genericOperatingSystem), :jm_getName, [])])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :OSARCH), JR.call(JR.lget(f, :genericOperatingSystem), :jm_getArch, [])])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :OSVERSION), JR.call(JR.lget(f, :genericOperatingSystem), :jm_getVersion, [])])
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :OS), JR.call(JR.lget(f, :genericOperatingSystem), :jm_toString, [])])
        JR.lset(f, :hardwareInterface, JR.call(SystemHardwareFactory.jm_getInstance(), :jm_getInstance, [JR.lget(f, :genericOperatingSystem)]))
        JR.lset(f, :hardwareString, JR.call(JR.lget(f, :hardwareInterface), :jm_toString, []))
        JR.call(JR.lget(f, :clientInfoHashtable), :jm_put, [JR.get(JR.lget(f, :abeClientInformationData), :HARDWARE), JR.lget(f, :hardwareString)])
        throw({:jreturn, JR.lget(f, :clientInfoHashtable)})
    end)
  end


  def jm_isSameId(this, p_alicenseId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alicenseId, p_alicenseId)
        if (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.call(this, :jm_getLicenseId, []), JR.lget(f, :alicenseId)]) == 0) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_isLargerOrDifferentServerList(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :size, JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 1))
        JR.lset(f, :currentSize, JR.int32(JR.call(JR.get(this, :licenseServers), :jm_size, []) - 1))
        if (JR.lget(f, :size) > JR.lget(f, :currentSize)) do
            throw({:jreturn, true})
        end
        JR.lset(f, :index, JR.lget(f, :size))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :newServerName, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :index2, JR.lget(f, :currentSize))
            JR.jfor(fn -> (JR.lget(f, :index2) >= 0) end, fn -> JR.lpostinc(f, :index2, -1) end, fn ->
                JR.lset(f, :nextOldServerName, JR.aget(JR.get(JR.get(this, :licenseServers), :objectArray), JR.lget(f, :index)))
                if (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :newServerName), JR.lget(f, :nextOldServerName)]) != 0) do
                    throw({:jreturn, true})
                end
            end)
        end)
        throw({:jreturn, false})
    end)
  end


  def jm_setHardSale(this, p_hardSale) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hardSale, p_hardSale)
        JR.put(this, :hardSale, JR.lget(f, :hardSale))
    end)
  end


  def jm_isHardSale(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hardSale)})
    end)
  end


  def jm_setOperatingSystemInterface(this, p_operatingSystemInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :operatingSystemInterface, p_operatingSystemInterface)
        JR.put(this, :operatingSystemInterface, JR.lget(f, :operatingSystemInterface))
    end)
  end


  def jm_setLicenseId(this, p_licenseId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :licenseId, p_licenseId)
        JR.put(this, :licenseId, JR.lget(f, :licenseId))
    end)
  end


  def jm_setLicenseServers(this, p_licenseServers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :licenseServers, p_licenseServers)
        JR.put(this, :licenseServers, JR.lget(f, :licenseServers))
    end)
  end


  def jm_toShortString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :shortName)})
    end)
  end
end


