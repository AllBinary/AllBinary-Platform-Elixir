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
# package org.allbinary.logic.math.vector

defmodule Vertex do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :x, nil)
    JR.put(this, :y, nil)
    JR.put(this, :z, nil)
        JR.put(this, :x, BasicDecimal.jnew(0))
        JR.put(this, :y, BasicDecimal.jnew(0))
        JR.put(this, :z, BasicDecimal.jnew(0))
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


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :positionStrings, PositionStrings.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :X_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :x), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Y_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :y), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Z_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :z), :jm_toString, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


