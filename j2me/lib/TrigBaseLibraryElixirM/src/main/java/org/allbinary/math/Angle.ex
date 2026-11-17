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
# package org.allbinary.math

defmodule Angle do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :value, 0)
        
    nil
  end


  def jinit(this, p_angle) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :value, JR.lget(f, :angle))
    end)
  end

  def jnew(p_angle) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angle)
    this
  end


  def jm_getValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end
end


