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
# package org.allbinary.game.input

defmodule PlatformInputMappingFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PlatformInputMappingFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :inputToGameKeyMapping, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :inputToGameKeyMapping, PersistentInputMapping.jm_getNullInstance())
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
        throw({:jreturn, PlatformInputMappingFactory.jstatic_instance()})
    end)
  end


  def jm_getPersistentInputMappingInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            if (JR.get(this, :inputToGameKeyMapping) == PersistentInputMapping.jm_getNullInstance()) do
                JR.put(this, :inputToGameKeyMapping, NormalJ2MEGameInputMapping.jnew())
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
        end
        throw({:jreturn, JR.get(this, :inputToGameKeyMapping)})
    end)
  end
end


