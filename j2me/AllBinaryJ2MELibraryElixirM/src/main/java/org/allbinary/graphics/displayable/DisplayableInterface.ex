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
# package org.allbinary.graphics.displayable

defmodule DisplayableInterface do
  def jsuper(), do: JObject


  def jm_addCommand(this, p_cmd) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmd, p_cmd)
      throw({:jexception, JR.exception("AbstractMethodError", "addCommand")})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getHeight")})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getWidth")})
    end)
  end


  def jm_removeCommand(this, p_cmd) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmd, p_cmd)
      throw({:jexception, JR.exception("AbstractMethodError", "removeCommand")})
    end)
  end


  def jm_setCommandListener(this, p_l) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :l, p_l)
      throw({:jexception, JR.exception("AbstractMethodError", "setCommandListener")})
    end)
  end
end


