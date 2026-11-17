# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.util

#ArkTs does not have this.  So this is for the ArkTs build.
defmodule EnumerationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> EnumerationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, EnumerationUtil.jstatic_instance()})
    end)
  end


  def jm_hasMoreElements(this, p_enumeration) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enumeration, p_enumeration)
        throw({:jreturn, JR.call(JR.lget(f, :enumeration), :jm_hasMoreElements, [])})
    end)
  end


  def jm_nextElement(this, p_enumeration) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enumeration, p_enumeration)
        throw({:jreturn, JR.call(JR.lget(f, :enumeration), :jm_nextElement, [])})
    end)
  end


  def jm_getAsArray(this, p_enumeration) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enumeration, p_enumeration)
        JR.lset(f, :basicArrayList, BasicArrayListD.jnew())
        JR.jwhile(fn -> JR.call(this, :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.call(JR.lget(f, :basicArrayList), :jm_add, [JR.call(this, :jm_nextElement, [JR.lget(f, :enumeration)])])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :basicArrayList), :jm_toArray, [])})
    end)
  end
end


