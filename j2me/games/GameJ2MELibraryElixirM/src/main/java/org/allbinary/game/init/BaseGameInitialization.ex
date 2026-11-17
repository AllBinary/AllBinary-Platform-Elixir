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
# package org.allbinary.game.init

defmodule BaseGameInitialization do
  def jsuper(), do: JObject
def jstatic_NULL_BASE_GAME_INITIALIZATION(), do: JR.static_get(__MODULE__, :NULL_BASE_GAME_INITIALIZATION, fn -> BaseGameInitialization.jnew(JR.anew(0, nil), 0) end)
  def jstatic_set_NULL_BASE_GAME_INITIALIZATION(value), do: JR.static_put(__MODULE__, :NULL_BASE_GAME_INITIALIZATION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :resourceInitializationArray, nil)
    JR.put(this, :portion, 0)
    JR.put(this, :initialized, false)
    JR.put(this, :EARLY_RESOURCES, 0)
    JR.put(this, :GAME_RESOURCES, 0)
    JR.put(this, :EARLY_CHANGABLE_RESOURCES, 0)
    JR.put(this, :GAME_CHANGABLE_RESOURCES, 0)
    JR.put(this, :gameInitialized, false)
    JR.put(this, :allLoaded, false)
        
        
        JR.put(this, :initialized, false)
        JR.put(this, :EARLY_RESOURCES, 0)
        JR.put(this, :GAME_RESOURCES, 1)
        JR.put(this, :EARLY_CHANGABLE_RESOURCES, 2)
        JR.put(this, :GAME_CHANGABLE_RESOURCES, 3)
        JR.put(this, :gameInitialized, false)
        JR.put(this, :allLoaded, false)
    nil
  end


  def jinit(this, p_resourceInitializationArray, p_portion) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :resourceInitializationArray, p_resourceInitializationArray)
      JR.lset(f, :portion, p_portion)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :resourceInitializationArray, JR.lget(f, :resourceInitializationArray))
        JR.put(this, :portion, JR.lget(f, :portion))
    end)
  end

  def jnew(p_resourceInitializationArray, p_portion) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_resourceInitializationArray, p_portion)
    this
  end


  def jm_initKey(this, p_portion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :portion, p_portion)
        nil
    end)
  end


  def jm_initKeyMapping(this, p_abeClientInformation, p_portion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :portion, p_portion)
        if JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_isChangedFeature, [JR.get(InputFeatureFactory.jm_getInstance(), :INPUT_MAPPING)]) do
            JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_init, [JR.lget(f, :abeClientInformation)])
            JR.call(ProgressCanvasFactory.jm_getInstance(), :jm_addNormalPortion, [50, "Game Keys"])
            JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_remove, [JR.get(InputFeatureFactory.jm_getInstance(), :INPUT_MAPPING)])
        end
    end)
  end


  def jm_init(this, p_abeClientInformation, p_commandListener, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :level, p_level)
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        if (!JR.call(this, :jm_isInitialized, []) && (((JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL), :jm_getLevel, [])) || (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_EARLY), :jm_getLevel, []))))) do
            JR.lset(f, :localPortion, 40)
            if (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_EARLY), :jm_getLevel, [])) do
                JR.lset(f, :localPortion, 8)
            end
            JR.call(this, :jm_setInitialized, [true])
            JR.call(this, :jm_initKey, [JR.call(this, :jm_getPortion, [])])
            JR.call(this, :jm_initKeyMapping, [JR.lget(f, :abeClientInformation), JR.call(this, :jm_getPortion, [])])
            JR.call(GameKeyEventFactory.jm_getInstance(), :jm_init, [])
            JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :localPortion), "Game Key Events"])
            JR.call(BasicTouchInputFactory.jm_getInstance(), :jm_init, [JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_getInputMapping, [])])
            CancelTouchButtonInputFactory.jm_getInstance()
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :localPortion), "Touch Input"])
            JR.call(CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance(), :jm_init, [])
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :localPortion), "Motion Input"])
            GameFeatureImageCacheFactory.jm_init()
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :localPortion), "Image Cache"])
            JR.call(JR.aget(JR.get(this, :resourceInitializationArray), JR.get(this, :EARLY_RESOURCES)), :jm_init, [])
        end
    end)
  end


  def jm_resourceInitialization(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        if (JR.call(this, :jm_resourceAnimationChange, []) && (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_EARLY), :jm_getLevel, []))) do
            JR.call(this, :jm_clearResources, [])
            JR.call(JR.aget(JR.get(this, :resourceInitializationArray), JR.get(this, :EARLY_CHANGABLE_RESOURCES)), :jm_init, [])
        end
        if (JR.call(this, :jm_resourceAnimationChange, []) && (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL), :jm_getLevel, []))) do
            if JR.get(this, :allLoaded) do
                JR.call(this, :jm_clearResources, [])
            end
            if (JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_getList, []), :jm_size, []) == 0) do
                JR.call(JR.aget(JR.get(this, :resourceInitializationArray), JR.get(this, :EARLY_CHANGABLE_RESOURCES)), :jm_init, [])
            end
            JR.call(JR.aget(JR.get(this, :resourceInitializationArray), JR.get(this, :GAME_CHANGABLE_RESOURCES)), :jm_init, [])
            JR.put(this, :allLoaded, true)
        end
    end)
  end


  def jm_resourceAnimationChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :changedGameFeatureListener, ChangedGameFeatureListener.jm_getInstance())
        JR.lset(f, :gameConfigurationCentral, GameConfigurationCentral.jm_getInstance())
        if JR.call(JR.lget(f, :changedGameFeatureListener), :jm_isChangedGameConfiguration, [JR.get(JR.lget(f, :gameConfigurationCentral), :SCALE)]) do
            throw({:jreturn, true})
        end
        if JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_isChangedFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :STATIC)]) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_clearResources(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :allLoaded, false)
        GameFeatureImageCacheFactory.jm_releaseAll()
        JR.lset(f, :featuredAnimationInterfaceFactoryInterfaceFactory, FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance())
        JR.call(JR.lget(f, :featuredAnimationInterfaceFactoryInterfaceFactory), :jm_clear, [])
        JR.call(FeaturedResourceRelativeRelationshipFactory.jm_getInstance(), :jm_clear, [])
    end)
  end


  def jm_setGameInitialized(this, p_gameInitialized) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInitialized, p_gameInitialized)
        JR.put(this, :gameInitialized, JR.lget(f, :gameInitialized))
    end)
  end


  def jm_isGameInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInitialized)})
    end)
  end


  def jm_getPortion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :portion)})
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


