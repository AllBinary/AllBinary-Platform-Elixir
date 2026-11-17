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

defmodule FeaturedResourceRelativeRelationshipFactory do
  def jsuper(), do: FeaturedResourceFactory
def jstatic_INSTANCE(), do: JR.static_get(__MODULE__, :INSTANCE, fn -> FeaturedResourceRelativeRelationshipFactory.jnew() end)
  def jstatic_set_INSTANCE(value), do: JR.static_put(__MODULE__, :INSTANCE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicArrayListUtil, nil)
        JR.put(this, :basicArrayListUtil, BasicArrayListUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      FeaturedResourceFactory.jinit(this)
      jinitfields(this)
        nil
    end)
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
        throw({:jreturn, FeaturedResourceRelativeRelationshipFactory.jstatic_INSTANCE()})
    end)
  end


  def jm_getRelativeRelationshipList(this, p_resource, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :layer, p_layer)
        JR.lset(f, :featureReleaseList, JR.call(this, :jm_getList, []))
        JR.lset(f, :size, JR.call(JR.call(this, :jm_getList, []), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :featureInterface, JR.aget(JR.get(JR.lget(f, :featureReleaseList), :objectArray), JR.lget(f, :index)))
            if JR.call(JR.lget(f, :featureInterface), :jm_isFeature, []) do
                JR.lset(f, :list, JR.call(JR.lget(f, :featureInterface), :jm_getResourceRelativeRelationshipList, [JR.lget(f, :resource)]))
                if (JR.lget(f, :list) != JR.call(JR.get(this, :basicArrayListUtil), :jm_getImmutableInstance, [])) do
                    throw({:jreturn, JR.call(this, :jm_duplicate, [JR.lget(f, :list), JR.lget(f, :layer)])})
                end
            end
        end)
        throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Not available for current feature selection or Resource: "]), :jm_append, [JR.lget(f, :resource)]), :jm_toString, []))})
    end)
  end


  def jm_duplicate(this, p_list, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :layer, p_layer)
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :newList, BasicArrayListD.jnew())
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :relativeRelationship, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :newList), :jm_add, [RelativeLayerRelationship.jnew(JR.lget(f, :layer), JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.call(JR.lget(f, :relativeRelationship), :jm_getX, []), JR.call(JR.lget(f, :relativeRelationship), :jm_getY, [])]), JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))])
        end)
        throw({:jreturn, JR.lget(f, :newList)})
    end)
  end
end


