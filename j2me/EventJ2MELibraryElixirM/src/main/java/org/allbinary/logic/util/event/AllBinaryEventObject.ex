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
# package org.allbinary.logic.util.event

defmodule AllBinaryEventObject do
  def jsuper(), do: JObject
def jstatic_NULL_EVENT(), do: JR.static_get(__MODULE__, :NULL_EVENT, fn -> AllBinaryEventObject.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) end)
  def jstatic_set_NULL_EVENT(value), do: JR.static_put(__MODULE__, :NULL_EVENT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :source, nil)
        
    nil
  end


  def jinit(this, p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :source, JR.lget(f, :anyType))
    end)
  end

  def jnew(p_anyType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType)
    this
  end


  def jm_getSource(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :source)})
    end)
  end


  def jm_setSource(this, p_source) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :source, p_source)
        JR.put(this, :source, JR.lget(f, :source))
    end)
  end
end


