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
# package org.allbinary.logic.system.hardware.components

defmodule Component do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
        
    nil
  end


  def jinit(this, p_componentName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :componentName, p_componentName)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :componentName))
    end)
  end

  def jnew(p_componentName) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_componentName)
    this
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


