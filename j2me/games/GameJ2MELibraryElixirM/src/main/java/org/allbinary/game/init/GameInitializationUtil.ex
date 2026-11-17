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

defmodule GameInitializationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameInitializationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EVENT, nil)
        JR.put(this, :EVENT, GameInitializedEvent.jnew(this))
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


  def jm_initDemo(this, p_abeClientInformation, p_canvas, p_gameInitializationInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :gameInitializationInterfaceFactoryInterface, p_gameInitializationInterfaceFactoryInterface)
        JR.lset(f, :mainFeatureFactory, MainFeatureFactory.jm_getInstance())
        if JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_isChangedFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :STATIC)]) do
            JR.lset(f, :gameInitializationInterface, JR.call(JR.lget(f, :gameInitializationInterfaceFactoryInterface), :jm_getInstance, []))
            JR.lset(f, :features, Features.jm_getInstance())
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :LOAD_ALL)]) do
                JR.call(this, :jm_initGame, [JR.lget(f, :abeClientInformation), JR.lget(f, :canvas), JR.lget(f, :gameInitializationInterfaceFactoryInterface)])
            else
                if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :LOAD_ONDEMAND)]) do
                JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
                JR.call(JR.lget(f, :gameInitializationInterface), :jm_init, [JR.lget(f, :abeClientInformation), JR.call(JR.lget(f, :canvas), :jm_getCustomCommandListener, []), JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_EARLY), :jm_getLevel, [])])
                JR.call(JR.get(this, :EVENT), :jm_setResourceLoadingLevel, [JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_EARLY)])
            else
                throw({:jexception, JR.exception("Exception", "No Loading Feature Available")})
            end
            end
            JR.call(GameInitializedEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :EVENT)])
        end
    end)
  end


  def jm_initGame(this, p_abeClientInformation, p_canvas, p_gameInitializationInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :gameInitializationInterfaceFactoryInterface, p_gameInitializationInterfaceFactoryInterface)
        if JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_isChangedFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :STATIC)]) do
            JR.lset(f, :gameInitializationInterface, JR.call(JR.lget(f, :gameInitializationInterfaceFactoryInterface), :jm_getInstance, []))
            JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
            JR.call(JR.lget(f, :gameInitializationInterface), :jm_init, [JR.lget(f, :abeClientInformation), JR.call(JR.lget(f, :canvas), :jm_getCustomCommandListener, []), JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL), :jm_getLevel, [])])
            JR.call(JR.get(this, :EVENT), :jm_setResourceLoadingLevel, [JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL)])
            JR.call(GameInitializedEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :EVENT)])
            JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_remove, [JR.get(MainFeatureFactory.jm_getInstance(), :STATIC)])
        end
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInitializationUtil.jstatic_instance()})
    end)
  end
end


