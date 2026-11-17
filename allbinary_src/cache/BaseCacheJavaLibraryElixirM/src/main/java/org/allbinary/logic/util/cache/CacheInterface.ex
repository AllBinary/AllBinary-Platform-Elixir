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

defmodule CacheInterface do
  def jsuper(), do: JObject


  def jm_add(this, p_cacheableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterface, p_cacheableInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "add")})
    end)
  end


  def jm_addArray(this, p_cacheableInterfaces) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaces, p_cacheableInterfaces)
      throw({:jexception, JR.exception("AbstractMethodError", "addArray")})
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "clear")})
    end)
  end
end


