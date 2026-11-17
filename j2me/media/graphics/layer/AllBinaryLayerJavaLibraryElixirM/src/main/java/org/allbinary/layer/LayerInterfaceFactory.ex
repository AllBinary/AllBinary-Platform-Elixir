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
# package org.allbinary.layer

defmodule LayerInterfaceFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> LayerInterfaceFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :list, nil)
    JR.put(this, :HASHTABLE_LABEL, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :list, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
        JR.put(this, :HASHTABLE_LABEL, "Hashtable: ")
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
        throw({:jreturn, LayerInterfaceFactory.jstatic_SINGLETON()})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :list, BasicArrayListD.jnew())
    end)
  end


  def jm_getNexInstance(this, p_hashtable, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :HASHTABLE_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE)])
        JR.lset(f, :typeInteger, JR.call(JR.lget(f, :hashtable), :jm_get, [Layer.jstatic_ID()]))
        JR.lset(f, :layerInterfaceFactoryInterface, JR.aget(JR.get(JR.get(this, :list), :objectArray), (JR.call(JR.lget(f, :typeInteger), :jm_intValue, []) - 1)))
        throw({:jreturn, JR.call(JR.lget(f, :layerInterfaceFactoryInterface), :jm_getNextInstance, [JR.lget(f, :hashtable), JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])})
    end)
  end


  def jm_add(this, p_layerInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterfaceFactoryInterface, p_layerInterfaceFactoryInterface)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :layerInterfaceFactoryInterface)])
    end)
  end
end


