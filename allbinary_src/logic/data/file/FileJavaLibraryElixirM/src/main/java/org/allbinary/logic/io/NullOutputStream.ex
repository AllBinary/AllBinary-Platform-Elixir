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
# package org.allbinary.logic.io

defmodule NullOutputStream do
  def jsuper(), do: OutputStream
def jstatic_NULL_OUTPUT_STREAM(), do: JR.static_get(__MODULE__, :NULL_OUTPUT_STREAM, fn -> NullOutputStream.jnew() end)
  def jstatic_set_NULL_OUTPUT_STREAM(value), do: JR.static_put(__MODULE__, :NULL_OUTPUT_STREAM, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    OutputStream.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_write(this, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :b, p_b)
        nil
    end)
  end


  def jm_write(this, p_b, p_off, p_len) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :b, p_b)
      JR.lset(f, :off, p_off)
      JR.lset(f, :len, p_len)
        nil
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


