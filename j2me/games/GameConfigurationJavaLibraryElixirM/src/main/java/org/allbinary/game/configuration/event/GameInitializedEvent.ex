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
# package org.allbinary.game.configuration.event

defmodule GameInitializedEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :resourceLoadingLevel, nil)
    JR.put(this, :level, 0)
        JR.put(this, :resourceLoadingLevel, JR.get(ResourceLoadingLevelFactory.jm_getInstance(), :LEVEL))
        JR.put(this, :level, 0)
    nil
  end


  def jinit(this, p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        GameInitializedEvent.jinitfields(this)
    end)
  end

  def jnew(p_anyType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType)
    this
  end


  def jm_setLevel(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.put(this, :level, JR.lget(f, :level))
        JR.put(this, :resourceLoadingLevel, JR.get(ResourceLoadingLevelFactory.jm_getInstance(), :LEVEL))
    end)
  end


  def jm_getLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :level)})
    end)
  end


  def jm_setResourceLoadingLevel(this, p_resourceLoadingLevel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resourceLoadingLevel, p_resourceLoadingLevel)
        JR.put(this, :resourceLoadingLevel, JR.lget(f, :resourceLoadingLevel))
        JR.put(this, :level, JR.call(JR.get(this, :resourceLoadingLevel), :jm_getLevel, []))
    end)
  end


  def jm_getResourceLoadingLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :resourceLoadingLevel)})
    end)
  end
end


