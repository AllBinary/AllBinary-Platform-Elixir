# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

defmodule ABSystemWrapper do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ABSystemWrapper.jnew() end)
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
        throw({:jreturn, ABSystemWrapper.jstatic_instance()})
    end)
  end


  def jm_arraycopy(this, p_src, p_srcPos, p_dest, p_destPos, p_length) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :src, p_src)
      JR.lset(f, :srcPos, p_srcPos)
      JR.lset(f, :dest, p_dest)
      JR.lset(f, :destPos, p_destPos)
      JR.lset(f, :length, p_length)
        JR.arraycopy(JR.lget(f, :src), JR.lget(f, :srcPos), JR.lget(f, :dest), JR.lget(f, :destPos), JR.lget(f, :length))
    end)
  end


  def jm_currentTimeMillis(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, :os.system_time(:millisecond)})
    end)
  end
end


