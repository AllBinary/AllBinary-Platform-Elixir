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
# package org.allbinary.util

defmodule HashtableUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> HashtableUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :enumerationUtil, nil)
        JR.put(this, :enumerationUtil, EnumerationUtil.jm_getInstance())
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
        throw({:jreturn, HashtableUtil.jstatic_instance()})
    end)
  end


  def jm_putAll(this, p_fromHashtable, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fromHashtable, p_fromHashtable)
      JR.lset(f, :hashtable, p_hashtable)
        JR.lset(f, :enumeration, JR.call(JR.lget(f, :fromHashtable), :jm_keys, []))
        JR.lset(f, :keyCanBeNull, nil)
        JR.lset(f, :valueCanBeNull, nil)
        JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.lset(f, :keyCanBeNull, JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)]))
            JR.lset(f, :valueCanBeNull, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :keyCanBeNull)]))
            if (JR.lget(f, :valueCanBeNull) == nil) do
                nil
            else
                JR.call(JR.lget(f, :hashtable), :jm_put, [JR.lget(f, :keyCanBeNull), JR.lget(f, :valueCanBeNull)])
            end
        end)
    end)
  end


  def jm_getKeysAsArray(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.lset(f, :objectArray, JR.anew(JR.call(JR.lget(f, :hashtable), :jm_size, []), nil))
        JR.lset(f, :index, 0)
        JR.lset(f, :enumeration, JR.call(JR.lget(f, :hashtable), :jm_keys, []))
        JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.aset(JR.lget(f, :objectArray), JR.lpostinc(f, :index, 1), JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)]))
        end)
        throw({:jreturn, JR.lget(f, :objectArray)})
    end)
  end


  def jm_getKeysAsList(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.lset(f, :list, BasicArrayListS.jnew(JR.call(JR.lget(f, :hashtable), :jm_size, [])))
        JR.lset(f, :enumeration, JR.call(JR.lget(f, :hashtable), :jm_keys, []))
        JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)])])
        end)
        throw({:jreturn, JR.lget(f, :list)})
    end)
  end
end


