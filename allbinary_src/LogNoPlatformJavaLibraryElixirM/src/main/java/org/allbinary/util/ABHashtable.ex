# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

defmodule ABHashtable do
  def jsuper(), do: J.Hashtable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_initialCapacity) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :initialCapacity, p_initialCapacity)
        J.Hashtable.jinit(this, JR.lget(f, :initialCapacity))
        ABHashtable.jinitfields(this)
    end)
  end

  def jnew(p_initialCapacity) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_initialCapacity)
    this
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        J.Hashtable.jinit(this)
        ABHashtable.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


