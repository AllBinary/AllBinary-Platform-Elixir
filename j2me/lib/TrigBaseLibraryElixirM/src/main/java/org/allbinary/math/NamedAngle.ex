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
# package org.allbinary.math

defmodule NamedAngle do
  def jsuper(), do: Angle

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
        
    nil
  end


  def jinit(this, p_angle, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :name, p_name)
        Angle.jinit(this, JR.lget(f, :angle))
        NamedAngle.jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end

  def jnew(p_angle, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angle, p_name)
    this
  end
end


