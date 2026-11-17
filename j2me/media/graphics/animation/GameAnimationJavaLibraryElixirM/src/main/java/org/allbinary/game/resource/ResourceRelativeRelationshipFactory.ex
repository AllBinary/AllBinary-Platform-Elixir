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
# package org.allbinary.game.resource

defmodule ResourceRelativeRelationshipFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicArrayListUtil, nil)
    JR.put(this, :hashtable, nil)
    JR.put(this, :initialized, false)
        JR.put(this, :basicArrayListUtil, BasicArrayListUtil.jm_getInstance())
        JR.put(this, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.put(this, :initialized, false)
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


  def jm_init(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.call(this, :jm_setInitialized, [true])
    end)
  end


  def jm_getResourceRelativeRelationshipList(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :listCanBeNull, JR.call(JR.get(this, :hashtable), :jm_get, [JR.lget(f, :resource)]))
        if (JR.lget(f, :listCanBeNull) == nil) do
            throw({:jreturn, JR.call(JR.get(this, :basicArrayListUtil), :jm_getImmutableInstance, [])})
        end
        throw({:jreturn, JR.lget(f, :listCanBeNull)})
    end)
  end


  def jm_addResourceRelativeRelationship(this, p_resource, p_hardPoint) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :hardPoint, p_hardPoint)
        JR.lset(f, :list, JR.call(this, :jm_getResourceRelativeRelationshipList, [JR.lget(f, :resource)]))
        if (JR.lget(f, :list) == JR.call(JR.get(this, :basicArrayListUtil), :jm_getImmutableInstance, [])) do
            JR.lset(f, :list, BasicArrayListD.jnew())
        end
        JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :hardPoint)])
        JR.call(JR.get(this, :hashtable), :jm_put, [JR.lget(f, :resource), JR.lget(f, :list)])
    end)
  end


  def jm_isLoadingLevel(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        throw({:jreturn, false})
    end)
  end


  def jm_isFeature(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_setInitialized(this, p_initialized) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initialized, p_initialized)
        JR.put(this, :initialized, JR.lget(f, :initialized))
    end)
  end


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initialized)})
    end)
  end
end


