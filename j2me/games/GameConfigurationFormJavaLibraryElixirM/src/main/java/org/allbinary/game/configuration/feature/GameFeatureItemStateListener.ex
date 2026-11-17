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

defmodule GameFeatureItemStateListener do
  def jsuper(), do: JObject
def jstatic_toggleList(), do: JR.static_get(__MODULE__, :toggleList, fn -> BasicArrayListD.jnew() end)
  def jstatic_set_toggleList(value), do: JR.static_put(__MODULE__, :toggleList, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :gameOptionsForm, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_gameOptionsForm) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameOptionsForm, p_gameOptionsForm)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :gameOptionsForm, JR.lget(f, :gameOptionsForm))
        JR.lset(f, :gameFeatureFactory, GameFeatureFactory.jm_getInstance())
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :ARTIFICIAL_INTELLEGENCE_PROCESSOR))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :COLLIDABLE_INTERFACE_LAYER_PROCESSOR))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :DAMAGE_FLOATERS))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :DROPPED_ITEMS))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :GAME_INPUT_LAYER_PROCESSOR))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :HEALTH_BARS))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :SOUND))
        GameFeatureItemStateListener.jm_add(JR.get(JR.lget(f, :gameFeatureFactory), :TICKABLE_LAYER_PROCESSOR))
    end)
  end

  def jnew(p_gameOptionsForm) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameOptionsForm)
    this
  end


  def jm_add(p_gameFeature) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        if !JR.call(GameFeatureItemStateListener.jstatic_toggleList(), :jm_contains, [JR.lget(f, :gameFeature)]) do
            JR.call(GameFeatureItemStateListener.jstatic_toggleList(), :jm_add, [JR.lget(f, :gameFeature)])
        end
    end)
  end


  def jm_itemStateChanged(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        try do
            JR.lset(f, :itemLabel, JR.call(JR.lget(f, :item), :jm_getLabel, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :ITEM_LABEL)]), :jm_append, [JR.lget(f, :itemLabel)]), :jm_toString, []), this, "itemStateChanged"])
            if JR.instance_of(JR.lget(f, :item), GameConfigurationGauge) do
                JR.call(GameConfigurationUtil.jm_getInstance(), :jm_change, [JR.get(this, :gameOptionsForm), JR.lget(f, :item)])
            else
                if JR.instance_of(JR.lget(f, :item), ChoiceGroup) do
                JR.lset(f, :gameFeatureUtil, GameFeatureUtil.jm_getInstance())
                if JR.call(JR.lget(f, :gameFeatureUtil), :jm_isExclusive, [JR.lget(f, :itemLabel)]) do
                    JR.call(JR.lget(f, :gameFeatureUtil), :jm_updateExclusiveForChoiceGroup, [JR.lget(f, :item)])
                else
                    JR.call(JR.lget(f, :gameFeatureUtil), :jm_updateMultiple, [JR.lget(f, :item)])
                end
            end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "itemStateChanged", JR.lget(f, :e)])
        end
    end)
  end
end


