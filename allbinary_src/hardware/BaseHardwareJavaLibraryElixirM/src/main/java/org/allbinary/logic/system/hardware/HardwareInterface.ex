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
# package org.allbinary.logic.system.hardware

defmodule HardwareInterface do
  def jsuper(), do: JObject


  def jm_getComponent(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      throw({:jexception, JR.exception("AbstractMethodError", "getComponent")})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "toString")})
    end)
  end


  def jm_compareTo(this, p_hardwareInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hardwareInterface, p_hardwareInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "compareTo")})
    end)
  end


  def jm_difference(this, p_hardwareInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hardwareInterface, p_hardwareInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "difference")})
    end)
  end
end


