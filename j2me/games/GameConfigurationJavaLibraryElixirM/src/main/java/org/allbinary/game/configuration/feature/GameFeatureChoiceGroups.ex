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
# package org.allbinary.game.configuration.feature

defmodule GameFeatureChoiceGroups do
  def jsuper(), do: JObject
def jstatic_gameFeatureChoiceGroupsExclusive(), do: JR.static_get(__MODULE__, :gameFeatureChoiceGroupsExclusive, fn -> GameFeatureChoiceGroups.jnew() end)
  def jstatic_set_gameFeatureChoiceGroupsExclusive(value), do: JR.static_put(__MODULE__, :gameFeatureChoiceGroupsExclusive, value)
def jstatic_gameFeatureChoiceGroupsMultiple(), do: JR.static_get(__MODULE__, :gameFeatureChoiceGroupsMultiple, fn -> GameFeatureChoiceGroups.jnew() end)
  def jstatic_set_gameFeatureChoiceGroupsMultiple(value), do: JR.static_put(__MODULE__, :gameFeatureChoiceGroupsMultiple, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :hashtable, nil)
        JR.put(this, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
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


  def jm_getExclusiveInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive()})
    end)
  end


  def jm_getMultipleInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple()})
    end)
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hashtable)})
    end)
  end


  def jm_add(this, p_name, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :list, p_list)
        JR.call(JR.get(this, :hashtable), :jm_put, [JR.lget(f, :name), JR.lget(f, :list)])
    end)
  end
end


