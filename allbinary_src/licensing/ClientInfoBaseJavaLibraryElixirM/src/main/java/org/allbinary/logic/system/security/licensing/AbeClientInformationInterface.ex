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

defmodule AbeClientInformationInterface do
  def jsuper(), do: JObject


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "init")})
    end)
  end


  def jm_getOperatingSystemInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getOperatingSystemInterface")})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getName")})
    end)
  end


  def jm_getSpecialName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getSpecialName")})
    end)
  end


  def jm_getVersion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getVersion")})
    end)
  end


  def jm_getLicenseId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getLicenseId")})
    end)
  end


  def jm_getLicenseServers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getLicenseServers")})
    end)
  end


  def jm_getLicenseServer(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      throw({:jexception, JR.exception("AbstractMethodError", "getLicenseServer")})
    end)
  end


  def jm_getNumberOfLicenseServers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getNumberOfLicenseServers")})
    end)
  end


  def jm_toHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "toHashtable")})
    end)
  end


  def jm_isSameId(this, p_alicenseId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alicenseId, p_alicenseId)
      throw({:jexception, JR.exception("AbstractMethodError", "isSameId")})
    end)
  end


  def jm_isLargerOrDifferentServerList(this, p_vector) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
      throw({:jexception, JR.exception("AbstractMethodError", "isLargerOrDifferentServerList")})
    end)
  end


  def jm_isHardSale(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isHardSale")})
    end)
  end


  def jm_toShortString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "toShortString")})
    end)
  end
end


