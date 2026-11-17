# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary

defmodule ThreedResources do
  def jsuper(), do: JObject
def jstatic_threedResources(), do: JR.static_get(__MODULE__, :threedResources, fn -> ThreedResources.jnew() end)
  def jstatic_set_threedResources(value), do: JR.static_put(__MODULE__, :threedResources, value)

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


  def jm_getThreedResources() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ThreedResources.jstatic_threedResources()})
    end)
  end


  def jm_add(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


