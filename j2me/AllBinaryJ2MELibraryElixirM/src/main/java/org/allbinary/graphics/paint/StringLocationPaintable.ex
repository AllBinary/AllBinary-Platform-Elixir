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
# package org.allbinary.graphics.paint

defmodule StringLocationPaintable do
  def jsuper(), do: LocationPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :value, nil)
        
    nil
  end


  def jinit(this, p_value) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      LocationPaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :value, JR.lget(f, :value))
    end)
  end

  def jnew(p_value) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_value)
    this
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :value), JR.lget(f, :x), JR.lget(f, :y), 0])
    end)
  end
end


