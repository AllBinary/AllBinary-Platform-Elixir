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
# package org.allbinary.direction

defmodule DirectionalInterface do
  def jsuper(), do: JObject


  def jm_setFrameByDirection(this, p_direction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
      throw({:jexception, JR.exception("AbstractMethodError", "setFrameByDirection")})
    end)
  end


  def jm_setFrameToAngle(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      throw({:jexception, JR.exception("AbstractMethodError", "setFrameToAngle")})
    end)
  end


  def jm_adjustFrameToAngle(this, p_newAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newAngle, p_newAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "adjustFrameToAngle")})
    end)
  end


  def jm_adjustFrame(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      throw({:jexception, JR.exception("AbstractMethodError", "adjustFrame")})
    end)
  end
end


