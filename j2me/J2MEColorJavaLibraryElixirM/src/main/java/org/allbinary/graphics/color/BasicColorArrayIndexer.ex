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
# package org.allbinary.graphics.color

defmodule BasicColorArrayIndexer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColorArray, nil)
    JR.put(this, :circularIndexUtil, nil)
        
        
    nil
  end


  def jinit(this, p_basicColorArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColorArray, p_basicColorArray)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :basicColorArray, JR.lget(f, :basicColorArray))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.alength(JR.get(this, :basicColorArray))))
    end)
  end

  def jnew(p_basicColorArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColorArray)
    this
  end


  def jm_next(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :basicColorArray), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))})
    end)
  end


  def jm_getBasicColorArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColorArray)})
    end)
  end
end


