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
# package org.allbinary.game.combat.canvas

defmodule CombatGameCanvas do
  def jsuper(), do: AllBinaryGameCanvas
def jstatic_basicLayerProcessor(), do: JR.static_get(__MODULE__, :basicLayerProcessor, fn -> JR.anew(0, nil) end)
  def jstatic_set_basicLayerProcessor(value), do: JR.static_put(__MODULE__, :basicLayerProcessor, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_cmdListener, p_gameLayerManager, p_highScoresFactoryInterface, p_gameInitializationInterfaceFactoryInterface, p_buffered) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :gameLayerManager, p_gameLayerManager)
      JR.lset(f, :highScoresFactoryInterface, p_highScoresFactoryInterface)
      JR.lset(f, :gameInitializationInterfaceFactoryInterface, p_gameInitializationInterfaceFactoryInterface)
      JR.lset(f, :buffered, p_buffered)
        AllBinaryGameCanvas.jinit(this, JR.lget(f, :cmdListener), JR.lget(f, :gameLayerManager), JR.lget(f, :highScoresFactoryInterface), JR.lget(f, :gameInitializationInterfaceFactoryInterface), JR.lget(f, :buffered))
        CombatGameCanvas.jinitfields(this)
    end)
  end

  def jnew(p_cmdListener, p_gameLayerManager, p_highScoresFactoryInterface, p_gameInitializationInterfaceFactoryInterface, p_buffered) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cmdListener, p_gameLayerManager, p_highScoresFactoryInterface, p_gameInitializationInterfaceFactoryInterface, p_buffered)
    this
  end


  def jm_CombatGameCanvas_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(DestroyEventCircularStaticPool.jm_getInstance(), :jm_init, [this])
        JR.call(ProgressCanvasFactory.jm_getInstance(), :jm_addNormalPortion, [50, "Destroy Events"])
    end)
  end


  def jm_initApp(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(this, :jm_CombatGameCanvas_init, [])
        AllBinaryGameCanvas.jm_initApp(this, JR.lget(f, :abeClientInformation))
    end)
  end


  def jm_initConfigurablePortion(this, p_portion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :portion, p_portion)
        DestroyedLayerProcessor.jm_init()
        JR.call(ProgressCanvasFactory.jm_getInstance(), :jm_addNormalPortion, [JR.lget(f, :portion), "Basic Processors"])
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :gameFeatureFactory, GameFeatureFactory.jm_getInstance())
        if (JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :gameFeatureFactory), :DROPPED_ITEMS)]) && JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :gameFeatureFactory), :DROPPED_ITEMS_FROM_DEATH)])) do
            CombatGameCanvas.jstatic_set_basicLayerProcessor(JR.anew(2, nil))
            JR.aset(CombatGameCanvas.jstatic_basicLayerProcessor(), 0, DestroyedLayerProcessor.jm_getInstance())
            JR.aset(CombatGameCanvas.jstatic_basicLayerProcessor(), 1, DropLayerProcessor.jm_getInstance())
        else
            CombatGameCanvas.jstatic_set_basicLayerProcessor(JR.anew(1, nil))
            JR.aset(CombatGameCanvas.jstatic_basicLayerProcessor(), 0, DestroyedLayerProcessor.jm_getInstance())
        end
    end)
  end


  def jm_processPlayingGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        AllBinaryGameCanvas.jm_processPlayingGame(this)
        JR.lset(f, :index, JR.alength(CombatGameCanvas.jstatic_basicLayerProcessor()))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(JR.aget(CombatGameCanvas.jstatic_basicLayerProcessor(), JR.lget(f, :index)), :jm_process, [JR.get(this, :gameLayerManager)])
        end)
    end)
  end


  def jm_cleanupGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        AllBinaryGameCanvas.jm_cleanupGame(this)
        JR.lset(f, :index, JR.alength(CombatGameCanvas.jstatic_basicLayerProcessor()))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(JR.call(JR.aget(CombatGameCanvas.jstatic_basicLayerProcessor(), JR.lget(f, :index)), :jm_getList, []), :jm_clear, [])
        end)
        JR.call(GroupLayerManagerListener.jm_getInstance(), :jm_clear, [])
        JR.call(GroupLayerManagerListener.jm_getInstance(), :jm_log, [])
        JR.call(DestroyedEventHandler.jm_getInstance(), :jm_removeAllListeners, [])
        JR.call(this, :jm_cleanupManager, [])
    end)
  end


  def jm_cleanupManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameLayerManager), :jm_cleanup, [])
    end)
  end
end


