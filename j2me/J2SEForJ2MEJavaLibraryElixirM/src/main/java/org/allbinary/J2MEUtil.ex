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
# package org.allbinary

defmodule J2MEUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isJ2ME() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_isJ2SE() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_isHTML() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end
end


