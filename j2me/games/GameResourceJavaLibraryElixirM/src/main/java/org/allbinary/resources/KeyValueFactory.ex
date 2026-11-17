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
# package org.allbinary.resources

defmodule KeyValueFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> KeyValueFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :MAP, nil)
        JR.put(this, :MAP, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
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
        throw({:jreturn, KeyValueFactory.jstatic_instance()})
    end)
  end


  def jm_get(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        if !JR.call(JR.get(this, :MAP), :jm_containsKey, [JR.lget(f, :key)]) do
            throw({:jreturn, JR.lget(f, :key)})
        end
        throw({:jreturn, JR.call(JR.get(this, :MAP), :jm_get, [JR.lget(f, :key)])})
    end)
  end
end


