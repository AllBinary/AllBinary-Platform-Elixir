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
# package org.allbinary.game.layer

defmodule AllBinaryGameLayerManager do
  def jsuper(), do: AllBinaryLayerManager
def jstatic_NULL_ALLBINARY_LAYER_MANAGER(), do: JR.static_get(__MODULE__, :NULL_ALLBINARY_LAYER_MANAGER, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_ALLBINARY_LAYER_MANAGER(value), do: JR.static_put(__MODULE__, :NULL_ALLBINARY_LAYER_MANAGER, value)
def jstatic_ID(), do: JR.static_get(__MODULE__, :ID, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [22]) end)
  def jstatic_set_ID(value), do: JR.static_put(__MODULE__, :ID, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :backgroundBasicColor, nil)
    JR.put(this, :foregroundBasicColor, nil)
    JR.put(this, :gameInfo, nil)
    JR.put(this, :playerGameInputCompositeInterface, nil)
        
        
        
        JR.put(this, :playerGameInputCompositeInterface, NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE())
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            AllBinaryGameLayerManager.jstatic_set_NULL_ALLBINARY_LAYER_MANAGER(AllBinaryGameLayerManager.jnew(JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE), GameInfo.jstatic_NONE()))
        end
        throw({:jreturn, AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER()})
    end)
  end


  def jinit(this, p_backgroundBasicColor, p_foregroundBasicColor, p_gameInfo) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
      JR.lset(f, :gameInfo, p_gameInfo)
      AllBinaryLayerManager.jinit(this)
      jinitfields(this)
        JR.put(this, :backgroundBasicColor, JR.lget(f, :backgroundBasicColor))
        JR.put(this, :foregroundBasicColor, JR.lget(f, :foregroundBasicColor))
        JR.lset(f, :itemColorFactory, ItemColorFactory.jm_getInstance())
        JR.put(JR.lget(f, :itemColorFactory), :INVERT_PAINT, JR.call(JR.get(this, :backgroundBasicColor), :jm_intValue, []))
        JR.put(JR.lget(f, :itemColorFactory), :PAINT, JR.call(JR.get(this, :foregroundBasicColor), :jm_intValue, []))
        JR.put(this, :gameInfo, JR.lget(f, :gameInfo))
    end)
  end

  def jnew(p_backgroundBasicColor, p_foregroundBasicColor, p_gameInfo) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_backgroundBasicColor, p_foregroundBasicColor, p_gameInfo)
    this
  end


  def jm_getLayerManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, this})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getBackgroundBasicColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :backgroundBasicColor)})
    end)
  end


  def jm_setBackgroundBasicColor(this, p_backgroundBasicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
        JR.put(this, :backgroundBasicColor, JR.lget(f, :backgroundBasicColor))
        JR.put(ItemColorFactory.jm_getInstance(), :INVERT_PAINT, JR.call(JR.get(this, :backgroundBasicColor), :jm_intValue, []))
    end)
  end


  def jm_getForegroundBasicColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :foregroundBasicColor)})
    end)
  end


  def jm_setForegroundBasicColor(this, p_foregroundBasicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        JR.put(this, :foregroundBasicColor, JR.lget(f, :foregroundBasicColor))
        JR.put(ItemColorFactory.jm_getInstance(), :PAINT, JR.call(JR.get(this, :foregroundBasicColor), :jm_intValue, []))
    end)
  end


  def jm_getGameInfo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInfo)})
    end)
  end


  def jm_setGameInfo(this, p_gameInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
        JR.put(this, :gameInfo, JR.lget(f, :gameInfo))
    end)
  end


  def jm_setLayerProcessorList(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :layerProcessorInterfaceArray, JR.anew(JR.call(JR.lget(f, :list), :jm_size, []), nil))
        JR.lset(f, :size, JR.alength(JR.lget(f, :layerProcessorInterfaceArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :layerProcessorInterfaceArray), JR.lget(f, :index), JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
        end)
        JR.call(this, :jm_setLayerProcessorArray, [JR.lget(f, :layerProcessorInterfaceArray)])
    end)
  end


  def jm_setPlayerGameInputCompositeInterface(this, p_playerGameInputCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerGameInputCompositeInterface, p_playerGameInputCompositeInterface)
        JR.put(this, :playerGameInputCompositeInterface, JR.lget(f, :playerGameInputCompositeInterface))
    end)
  end


  def jm_getPlayerGameInputCompositeInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :playerGameInputCompositeInterface)})
    end)
  end
end


