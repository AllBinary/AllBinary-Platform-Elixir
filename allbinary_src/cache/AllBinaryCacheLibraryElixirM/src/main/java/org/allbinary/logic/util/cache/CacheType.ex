# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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
# package org.allbinary.logic.util.cache

defmodule CacheType do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :vendor, nil)
    JR.put(this, :type, nil)
        
        
    nil
  end


  def jinit(this, p_vendor, p_type) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :vendor, p_vendor)
      JR.lset(f, :type, p_type)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :vendor, JR.lget(f, :vendor))
        JR.put(this, :type, JR.lget(f, :type))
    end)
  end

  def jnew(p_vendor, p_type) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_vendor, p_type)
    this
  end


  def jm_getVendor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :vendor)})
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :type)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["CacheType: Vendor: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getVendor, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Type: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getType, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


