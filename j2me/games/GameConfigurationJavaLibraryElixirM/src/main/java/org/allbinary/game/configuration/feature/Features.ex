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

defmodule Features do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :list, nil)
    JR.put(this, :defaultList, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (Features.jstatic_SINGLETON() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            Features.jstatic_set_SINGLETON(Features.jnew())
        end
        throw({:jreturn, Features.jstatic_SINGLETON()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :defaultList, BasicArrayListD.jnew())
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_addDefault(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        JR.call(this, :jm_add, [JR.lget(f, :gameFeature)])
        if !JR.call(JR.get(this, :defaultList), :jm_contains, [JR.lget(f, :gameFeature)]) do
            JR.call(JR.get(this, :defaultList), :jm_add, [JR.lget(f, :gameFeature)])
        end
    end)
  end


  def jm_add(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        if !JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :gameFeature)]) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(JR.lget(f, :gameFeature), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :ADD)])
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :gameFeature)])
            JR.call(GameFeatureEventHandler.jm_getInstance(), :jm_fireEvent, [GameFeatureEvent.jnew(JR.lget(f, :gameFeature), JR.call(JR.lget(f, :gameFeature), :jm_toString, []))])
        end
    end)
  end


  def jm_removeDefault(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(JR.lget(f, :gameFeature), :jm_toString, [])]), :jm_toString, []), this, "removeDefault"])
        JR.call(this, :jm_remove, [JR.lget(f, :gameFeature)])
        JR.call(JR.get(this, :defaultList), :jm_remove, [JR.lget(f, :gameFeature)])
    end)
  end


  def jm_remove(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        if JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :gameFeature)]) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :REMOVE)])
            JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :gameFeature)])
            JR.call(GameFeatureEventHandler.jm_getInstance(), :jm_fireEvent, [GameFeatureEvent.jnew(JR.lget(f, :gameFeature), JR.call(JR.lget(f, :gameFeature), :jm_toString, []))])
        end
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :gameFeatureFactory, GameFeatureFactory.jm_getInstance())
            JR.lset(f, :inputFeatureFactory, InputFeatureFactory.jm_getInstance())
            JR.lset(f, :sensorFeatureFactory, SensorFeatureFactory.jm_getInstance())
            JR.lset(f, :touchFeatureFactory, TouchFeatureFactory.jm_getInstance())
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :gameFeatureFactory), :ARTIFICIAL_INTELLEGENCE_PROCESSOR)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :gameFeatureFactory), :COLLIDABLE_INTERFACE_LAYER_PROCESSOR)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :gameFeatureFactory), :GAME_INPUT_LAYER_PROCESSOR)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :gameFeatureFactory), :TICKABLE_LAYER_PROCESSOR)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :inputFeatureFactory), :MULTI_KEY_PRESS)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :inputFeatureFactory), :REMOVE_DUPLICATE_KEY_PRESSES)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :gameFeatureFactory), :SCREEN_SHAKE)])
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :gameFeatureFactory), :POST_IMAGE_LOADING_MODIFICATION)])
            JR.lset(f, :operatingSystemInterface, JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
            if JR.call(JR.lget(f, :operatingSystemInterface), :jm_isOverScan, []) do
                JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :sensorFeatureFactory), :NO_ORIENTATION)])
                JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :touchFeatureFactory), :HIDE_SCREEN_BUTTONS)])
            else
                JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :sensorFeatureFactory), :ORIENTATION_SENSORS)])
                JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :touchFeatureFactory), :AUTO_HIDE_SHOW_SCREEN_BUTTONS)])
            end
            JR.call(this, :jm_addDefault, [JR.get(JR.lget(f, :touchFeatureFactory), :TOUCH_ENABLED)])
            JR.call(this, :jm_addDefault, [JR.get(MainFeatureFactory.jm_getInstance(), :FULL_SCREEN)])
            JR.call(this, :jm_addDefault, [JR.get(MainFeatureFactory.jm_getInstance(), :LOAD_ONDEMAND)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE(JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :INIT), JR.lget(f, :e))
        end
    end)
  end


  def jm_isDefault(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        throw({:jreturn, JR.call(JR.get(this, :defaultList), :jm_contains, [JR.lget(f, :gameFeature)])})
    end)
  end


  def jm_isFeature(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :gameFeature)])})
    end)
  end


  def jm_toggle(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        if JR.call(this, :jm_isFeature, [JR.lget(f, :gameFeature)]) do
            JR.call(this, :jm_remove, [JR.lget(f, :gameFeature)])
        else
            JR.call(this, :jm_add, [JR.lget(f, :gameFeature)])
        end
    end)
  end
end


