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
# package org.allbinary.logic.math

defmodule PrimitiveIntUtil do
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


  def jm_getArrayInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY)})
    end)
  end


  def jm_getTwoDimensionalArrayInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY)})
    end)
  end
end


