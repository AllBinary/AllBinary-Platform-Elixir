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
# package org.allbinary.logic.java.bool

defmodule BooleanFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BooleanFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :TRUE, nil)
    JR.put(this, :FALSE, nil)
    JR.put(this, :TRUE_STRING, nil)
    JR.put(this, :FALSE_STRING, nil)
    JR.put(this, :YES, nil)
    JR.put(this, :NO, nil)
        JR.put(this, :TRUE, true)
        JR.put(this, :FALSE, false)
        JR.put(this, :TRUE_STRING, JR.call(JR.get(this, :TRUE), :jm_toString, []))
        JR.put(this, :FALSE_STRING, JR.call(JR.get(this, :FALSE), :jm_toString, []))
        JR.put(this, :YES, "yes")
        JR.put(this, :NO, "no")
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
        throw({:jreturn, BooleanFactory.jstatic_instance()})
    end)
  end


  def jm_toStringb(this, p_bool) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bool, p_bool)
        if JR.lget(f, :bool) do
            throw({:jreturn, JR.get(this, :TRUE_STRING)})
        else
            throw({:jreturn, JR.get(this, :FALSE_STRING)})
        end
    end)
  end
end


