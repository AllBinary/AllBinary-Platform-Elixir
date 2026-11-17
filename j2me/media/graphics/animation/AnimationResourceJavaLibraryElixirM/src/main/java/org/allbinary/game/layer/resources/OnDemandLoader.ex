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
# package org.allbinary.game.layer.resources

defmodule OnDemandLoader do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :onDemandResourcesFactory, nil)
    JR.put(this, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, nil)
    JR.put(this, :resourceAnimationInterfaceFactoryInterfaceFactory, nil)
        
        
        
    nil
  end


  def jinit(this, p_onDemandResourcesFactory, p_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, p_resourceAnimationInterfaceFactoryInterfaceFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :onDemandResourcesFactory, p_onDemandResourcesFactory)
      JR.lset(f, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, p_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
      JR.lset(f, :resourceAnimationInterfaceFactoryInterfaceFactory, p_resourceAnimationInterfaceFactoryInterfaceFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :onDemandResourcesFactory, JR.lget(f, :onDemandResourcesFactory))
        JR.put(this, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, JR.lget(f, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory))
        JR.put(this, :resourceAnimationInterfaceFactoryInterfaceFactory, JR.lget(f, :resourceAnimationInterfaceFactoryInterfaceFactory))
    end)
  end

  def jnew(p_onDemandResourcesFactory, p_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, p_resourceAnimationInterfaceFactoryInterfaceFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_onDemandResourcesFactory, p_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, p_resourceAnimationInterfaceFactoryInterfaceFactory)
    this
  end


  def jm_init(this, p_imageCache, p_level, p_loadingString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :level, p_level)
      JR.lset(f, :loadingString, p_loadingString)
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :LOAD_ALL)]) do
            if JR.call(JR.get(this, :resourceAnimationInterfaceFactoryInterfaceFactory), :jm_isInitialized, []) do
                throw({:jreturn, nil})
            end
            JR.call(this, :jm_initAll, [JR.lget(f, :imageCache), JR.lget(f, :loadingString)])
        else
            if (JR.lget(f, :level) != JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL), :jm_getLevel, [])) do
            JR.lset(f, :layerPlacementInterfaceBasicArrayListFactoryInterface, JR.call(JR.get(this, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), :jm_getInstance, [JR.lget(f, :level)]))
            JR.call(this, :jm_initLevel, [JR.lget(f, :layerPlacementInterfaceBasicArrayListFactoryInterface), JR.lget(f, :imageCache), JR.lget(f, :level), JR.lget(f, :loadingString)])
        end
        end
    end)
  end


  def jm_initAll(this, p_imageCache, p_loadingString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :loadingString, p_loadingString)
        JR.lset(f, :index, 0)
        JR.lset(f, :portion, 120)
        JR.lset(f, :onDemandResources, nil)
        JR.lset(f, :onDemandIndex, JR.call(JR.get(this, :onDemandResourcesFactory), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :onDemandIndex, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :onDemandResources, JR.call(JR.get(this, :onDemandResourcesFactory), :jm_remove, [JR.lget(f, :onDemandIndex)]))
            if (JR.lget(f, :onDemandResources) != OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES()) do
                JR.lset(f, :index, JR.call(JR.lget(f, :onDemandResources), :jm_initAt, [JR.lget(f, :imageCache), JR.get(this, :resourceAnimationInterfaceFactoryInterfaceFactory), JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lget(f, :index)]))
            end
        end)
    end)
  end


  def jm_initLevel(this, p_layerPlacementInterfaceBasicArrayListFactoryInterface, p_imageCache, p_level, p_loadingString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerPlacementInterfaceBasicArrayListFactoryInterface, p_layerPlacementInterfaceBasicArrayListFactoryInterface)
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :level, p_level)
      JR.lset(f, :loadingString, p_loadingString)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :portion, 120)
        JR.lset(f, :index, 0)
        JR.lset(f, :onDemandArray, JR.call(JR.lget(f, :layerPlacementInterfaceBasicArrayListFactoryInterface), :jm_getOnDemandResources, []))
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.lget(f, :commonStrings), :START)]), :jm_appendint, [JR.alength(JR.lget(f, :onDemandArray))]), :jm_toString, []), this, "initLevel")
        JR.lset(f, :onDemandResources, nil)
        JR.lset(f, :onDemandIndex, JR.alength(JR.lget(f, :onDemandArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :onDemandIndex, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :onDemandResources, JR.call(JR.get(this, :onDemandResourcesFactory), :jm_remove, [JR.aget(JR.lget(f, :onDemandArray), JR.lget(f, :onDemandIndex))]))
            if (JR.lget(f, :onDemandResources) != OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES()) do
                JR.lset(f, :index, JR.call(JR.lget(f, :onDemandResources), :jm_initAt, [JR.lget(f, :imageCache), JR.get(this, :resourceAnimationInterfaceFactoryInterfaceFactory), JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lget(f, :index)]))
            end
        end)
    end)
  end
end


