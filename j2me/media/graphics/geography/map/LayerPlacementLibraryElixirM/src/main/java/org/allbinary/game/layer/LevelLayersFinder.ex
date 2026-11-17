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
# package org.allbinary.game.layer

defmodule LevelLayersFinder do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LevelLayersFinder.jnew() end)
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
        throw({:jreturn, LevelLayersFinder.jstatic_instance()})
    end)
  end


  def jm_get(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.lset(f, :list, BasicArrayListD.jnew())
        JR.lset(f, :enumeration, JR.call(JR.lget(f, :hashtable), :jm_keys, []))
        JR.lset(f, :layerHashtableCanBeNull, nil)
        JR.lset(f, :integerCanBeNull, nil)
        JR.lset(f, :cachedIntegerCanBeNull, nil)
        JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.lset(f, :layerHashtableCanBeNull, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)])]))
            JR.lset(f, :integerCanBeNull, JR.call(JR.lget(f, :layerHashtableCanBeNull), :jm_get, [Layer.jstatic_ID()]))
            JR.lset(f, :cachedIntegerCanBeNull, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.call(JR.lget(f, :integerCanBeNull), :jm_intValue, [])]))
            if !JR.call(JR.lget(f, :list), :jm_contains, [JR.lget(f, :cachedIntegerCanBeNull)]) do
                JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :cachedIntegerCanBeNull)])
            end
        end)
        throw({:jreturn, JR.lget(f, :list)})
    end)
  end
end


