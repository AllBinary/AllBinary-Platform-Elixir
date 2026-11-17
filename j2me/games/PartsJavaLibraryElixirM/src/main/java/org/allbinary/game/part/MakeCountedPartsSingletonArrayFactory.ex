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
# package org.allbinary.game.part

defmodule MakeCountedPartsSingletonArrayFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MakeCountedPartsSingletonArrayFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :list, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MakeCountedPartsSingletonArrayFactory.jstatic_instance()})
    end)
  end


  def jm_getUpdated(this, p_partInterfaceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :partInterfaceArray, p_partInterfaceArray)
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :partInterfaceArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.get(this, :list), :jm_add, [JR.aget(JR.lget(f, :partInterfaceArray), JR.lget(f, :index))])
        end)
        JR.lset(f, :countedBasicArrayList, JR.call(CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance(), :jm_getList, []))
        JR.lset(f, :layerInterfaceFactoryInterface, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :countedBasicArrayList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :layerInterfaceFactoryInterface, JR.aget(JR.get(JR.lget(f, :countedBasicArrayList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.get(this, :list), :jm_add, [CountedLayerInterfaceFactoryPart.jnew(0, JR.lget(f, :layerInterfaceFactoryInterface))])
        end)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Total Parts: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.get(this, :list), :jm_size, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Counted: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.lget(f, :countedBasicArrayList), :jm_size, [])])
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE)])
        JR.lset(f, :newPartInterfaceArray, JR.anew(JR.call(JR.get(this, :list), :jm_size, []), nil))
        JR.lset(f, :newSize, JR.alength(JR.lget(f, :newPartInterfaceArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :newSize)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :newPartInterfaceArray), JR.lget(f, :index), JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :index)]))
        end)
        throw({:jreturn, JR.lget(f, :newPartInterfaceArray)})
    end)
  end
end


