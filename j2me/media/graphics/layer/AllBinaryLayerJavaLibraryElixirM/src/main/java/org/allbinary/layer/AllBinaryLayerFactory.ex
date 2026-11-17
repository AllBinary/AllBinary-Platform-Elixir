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
# package org.allbinary.layer

defmodule AllBinaryLayerFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :rectangle, nil)
        
    nil
  end


  def jinit(this, p_rectangle) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
    end)
  end

  def jnew(p_rectangle) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_rectangle)
    this
  end


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, AllBinaryLayer.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(this, :rectangle), ViewPosition.jm_getInstanceD())})
    end)
  end
end


