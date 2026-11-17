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
# package org.allbinary.logic.math

defmodule J2SEMath do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> J2SEMath.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, J2SEMath.jstatic_instance()})
    end)
  end


  def jm_round(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, JR.int32(JR.d2i(JR.lget(f, :value)))})
    end)
  end


  def jm_abs(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, (if ((JR.lget(f, :value) < 0.0)), do: -JR.lget(f, :value), else: JR.lget(f, :value))})
    end)
  end


  def jm_absdouble(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, (if ((JR.lget(f, :value) < 0.0)), do: -JR.lget(f, :value), else: JR.lget(f, :value))})
    end)
  end
end


