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
# package org.allbinary.logic.java

defmodule PrimitiveArrayToString do
  def jsuper(), do: JObject

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


  def jm_toString(p_floats) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :floats, p_floats)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :floats))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_appendfloat, [JR.aget(JR.lget(f, :floats), JR.lget(f, :index))])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


