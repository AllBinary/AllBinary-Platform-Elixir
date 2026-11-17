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

defmodule GenericOperatingSystem do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :osName, nil)
    JR.put(this, :osArch, nil)
    JR.put(this, :osVersion, nil)
    JR.put(this, :characterSet, nil)
    JR.put(this, :scalable, false)
        JR.put(this, :osName, nil)
        JR.put(this, :osArch, nil)
        JR.put(this, :osVersion, nil)
        JR.put(this, :characterSet, CharacterSet.jnew())
        JR.put(this, :scalable, false)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :systemProperties, SystemProperties.jm_getInstance())
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        JR.lset(f, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.call(JR.lget(f, :systemProperties), :jm_getName, [])]) do
            JR.put(this, :osName, JR.lget(f, :EMPTY_STRING))
        else
            JR.put(this, :osName, JR.call(JR.lget(f, :systemProperties), :jm_getName, []))
        end
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.call(JR.lget(f, :systemProperties), :jm_getArch, [])]) do
            JR.put(this, :osArch, JR.lget(f, :EMPTY_STRING))
        else
            JR.put(this, :osArch, JR.call(JR.lget(f, :systemProperties), :jm_getArch, []))
        end
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.call(JR.lget(f, :systemProperties), :jm_getVersion, [])]) do
            JR.put(this, :osVersion, JR.lget(f, :EMPTY_STRING))
        else
            JR.put(this, :osVersion, JR.call(JR.lget(f, :systemProperties), :jm_getVersion, []))
        end
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
        throw({:jreturn, JR.get(this, :osName)})
    end)
  end


  def jm_getVersion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :osVersion)})
    end)
  end


  def jm_getArch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :osArch)})
    end)
  end


  def jm_getCharacterSet(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :characterSet)})
    end)
  end


  def jm_isOverScan(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getOverScanXPercent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 100})
    end)
  end


  def jm_getOverScanYPercent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 100})
    end)
  end


  def jm_isScalable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scalable)})
    end)
  end


  def jm_isAutoHide(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :NEW_LINE, JR.get(CommonSeps.jm_getInstance(), :NEW_LINE))
        JR.lset(f, :osBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :osBuffer), :jm_append, ["Operating System Info: \n"])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.lget(f, :NEW_LINE)])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.call(this, :jm_getArch, [])])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.lget(f, :NEW_LINE)])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.call(this, :jm_getVersion, [])])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.lget(f, :NEW_LINE)])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(this, :jm_getCharacterSet, [])])])
        JR.call(JR.lget(f, :osBuffer), :jm_append, [JR.lget(f, :NEW_LINE)])
        throw({:jreturn, JR.call(JR.lget(f, :osBuffer), :jm_toString, [])})
    end)
  end
end


