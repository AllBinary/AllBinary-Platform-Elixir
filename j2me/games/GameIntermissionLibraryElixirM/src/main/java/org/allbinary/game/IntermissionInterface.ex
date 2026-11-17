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
# package org.allbinary.game

defmodule IntermissionInterface do
  def jsuper(), do: JObject


  def jm_getTimeDelayHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getTimeDelayHelper")})
    end)
  end


  def jm_isEnabled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isEnabled")})
    end)
  end


  def jm_setEnabled(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      throw({:jexception, JR.exception("AbstractMethodError", "setEnabled")})
    end)
  end


  def jm_setListener(this, p_enableListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enableListener, p_enableListener)
      throw({:jexception, JR.exception("AbstractMethodError", "setListener")})
    end)
  end
end


