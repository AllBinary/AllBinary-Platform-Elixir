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
# package org.allbinary.game.ai

defmodule ArtificialIntelligenceInterfaceFactoryInterfaceFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
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


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :list, BasicArrayListD.jnew())
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jstatic_SINGLETON()})
    end)
  end


  def jm_getInstanceFromCollection(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.lset(f, :typeInteger, JR.call(JR.lget(f, :hashtable), :jm_get, [BasicAI.jstatic_ID()]))
        JR.lset(f, :type, JR.call(JR.lget(f, :typeInteger), :jm_intValue, []))
        JR.lset(f, :artificialIntelligenceInterfaceFactoryInterface, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.int32(JR.lget(f, :type) - 1)))
        throw({:jreturn, JR.lget(f, :artificialIntelligenceInterfaceFactoryInterface)})
    end)
  end


  def jm_add(this, p_artificialIntelligenceInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :artificialIntelligenceInterfaceFactoryInterface, p_artificialIntelligenceInterfaceFactoryInterface)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :artificialIntelligenceInterfaceFactoryInterface)])
    end)
  end
end


