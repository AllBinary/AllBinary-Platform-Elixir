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

defmodule LicenseInitInfo do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :id, nil)
    JR.put(this, :serverList, nil)
        JR.put(this, :id, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :serverList, BasicArrayListD.jnew())
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


  def jm_getLicenseId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end


  def jm_getServer(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.call(JR.get(this, :serverList), :jm_get, [JR.lget(f, :index)])})
    end)
  end


  def jm_getNumberOfServers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :serverList), :jm_size, [])})
    end)
  end


  def jm_setLicenseId(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :id, JR.lget(f, :value))
    end)
  end


  def jm_clearServers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :serverList), :jm_clear, [])
    end)
  end


  def jm_setServer(this, p_value, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :serverList), :jm_addAt, [JR.lget(f, :index), JR.lget(f, :value)])
    end)
  end


  def jm_addServer(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.call(JR.get(this, :serverList), :jm_add, [JR.lget(f, :value)])
    end)
  end


  def jm_getServerList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :serverList)})
    end)
  end


  def jm_setServerList(this, p_servers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :servers, p_servers)
        if (DebugFactory.jm_getInstance() == NoDebug.jm_getInstance()) do
            JR.put(this, :serverList, JR.lget(f, :servers))
        end
    end)
  end
end


