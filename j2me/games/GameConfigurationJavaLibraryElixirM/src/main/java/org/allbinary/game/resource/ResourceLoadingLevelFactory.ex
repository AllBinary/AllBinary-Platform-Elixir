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

defmodule ResourceLoadingLevelFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ResourceLoadingLevelFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :LOAD_EARLY, nil)
    JR.put(this, :LOAD_TOUCH, nil)
    JR.put(this, :LOAD_GAME, nil)
    JR.put(this, :LEVEL, nil)
    JR.put(this, :MAX_LEVEL, nil)
    JR.put(this, :LOAD_ALL, nil)
    JR.put(this, :RESOURCE_LOADING_LEVEL_ARRAY, nil)
        JR.put(this, :LOAD_EARLY, ResourceLoadingLevel.jnew("Load Early", J.Integer.jstatic_MAX_VALUE()))
        JR.put(this, :LOAD_TOUCH, ResourceLoadingLevel.jnew("Load Touch", JR.int32(J.Integer.jstatic_MAX_VALUE() - 1)))
        JR.put(this, :LOAD_GAME, ResourceLoadingLevel.jnew("Load Game", JR.int32(J.Integer.jstatic_MAX_VALUE() - 2)))
        JR.put(this, :LEVEL, ResourceLoadingLevel.jnew("Level", JR.int32(J.Integer.jstatic_MAX_VALUE() - 99)))
        JR.put(this, :MAX_LEVEL, ResourceLoadingLevel.jnew("Max Level", JR.int32(J.Integer.jstatic_MAX_VALUE() - 100)))
        JR.put(this, :LOAD_ALL, ResourceLoadingLevel.jnew("Load All", -1))
        JR.put(this, :RESOURCE_LOADING_LEVEL_ARRAY, JR.afrom([JR.get(this, :LOAD_ALL), JR.get(this, :MAX_LEVEL), JR.get(this, :LEVEL), JR.get(this, :LOAD_GAME), JR.get(this, :LOAD_TOUCH), JR.get(this, :LOAD_EARLY)]))
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
        throw({:jreturn, ResourceLoadingLevelFactory.jstatic_instance()})
    end)
  end


  def jm_getLevelString(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :RESOURCE_LOADING_LEVEL_ARRAY))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.lget(f, :level) == JR.call(JR.aget(JR.get(this, :RESOURCE_LOADING_LEVEL_ARRAY), JR.lget(f, :index)), :jm_getLevel, [])) do
                throw({:jreturn, JR.call(JR.aget(JR.get(this, :RESOURCE_LOADING_LEVEL_ARRAY), JR.lget(f, :index)), :jm_getName, [])})
            end
        end)
        throw({:jreturn, JR.str(JR.lget(f, :level))})
    end)
  end
end


