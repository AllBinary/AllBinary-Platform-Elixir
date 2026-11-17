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
# package org.allbinary.system

#ActualPlatform
defmodule Memory do
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


  def jm_getInfo() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Memory: Free: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.call(J.Runtime.jm_getRuntime(), :jm_freeMemory, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Max: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.call(J.Runtime.jm_getRuntime(), :jm_maxMemory, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Total: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.call(J.Runtime.jm_getRuntime(), :jm_totalMemory, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


