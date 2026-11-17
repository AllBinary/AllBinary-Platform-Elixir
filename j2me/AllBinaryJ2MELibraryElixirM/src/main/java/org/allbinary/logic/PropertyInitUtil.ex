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

defmodule PropertyInitUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PropertyInitUtil.jnew() end)
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


  def jm_getInstance(p_value) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["PropertyInitUtil: "]), :jm_appendint, [JR.lget(f, :value)]), :jm_toString, []), JR.lget(f, :logUtil), JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR)])
        throw({:jreturn, PropertyInitUtil.jstatic_instance()})
    end)
  end
end


