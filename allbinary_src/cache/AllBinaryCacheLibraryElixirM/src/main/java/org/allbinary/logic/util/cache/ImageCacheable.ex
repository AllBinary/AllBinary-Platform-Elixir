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
# package org.allbinary.logic.util.cache

defmodule ImageCacheable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_name, p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :anyType, p_anyType)
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_name, p_anyType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_anyType)
    this
  end


  def jm_getKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end
end


