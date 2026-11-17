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
# package org.allbinary.logic.system

defmodule SoftwareInformation do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :shortName, nil)
    JR.put(this, :version, nil)
        
        
        
    nil
  end


  def jinit(this, p_name, p_version, p_shortName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :version, p_version)
      JR.lset(f, :shortName, p_shortName)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :version, JR.lget(f, :version))
        JR.put(this, :shortName, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :shortName)]), :jm_append, [KotlinUtil.jm_getShortName()]), :jm_toString, []))
    end)
  end

  def jnew(p_name, p_version, p_shortName) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_version, p_shortName)
    this
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
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


  def jm_toShortString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :shortName)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :NAME, "Name: ")
        JR.lset(f, :VERSION, "Version: ")
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :NAME)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :VERSION)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getVersion, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


