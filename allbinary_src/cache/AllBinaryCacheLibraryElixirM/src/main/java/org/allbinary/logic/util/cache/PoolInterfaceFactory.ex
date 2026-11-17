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

defmodule PoolInterfaceFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_getInstance(p_cacheableInterfaceFactoryInterface, p_poolType, p_cachePolicy) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaceFactoryInterface, p_cacheableInterfaceFactoryInterface)
      JR.lset(f, :poolType, p_poolType)
      JR.lset(f, :cachePolicy, p_cachePolicy)
        throw({:jexception, JR.exception("Exception", "No Such PoolType: " <> JR.call(JR.lget(f, :poolType), :jm_toString, []))})
    end)
  end
end


