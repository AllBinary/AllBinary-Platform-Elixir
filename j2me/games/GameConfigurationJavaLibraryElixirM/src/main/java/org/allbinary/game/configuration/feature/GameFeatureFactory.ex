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

defmodule GameFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SOUND, nil)
    JR.put(this, :MUSIC, nil)
    JR.put(this, :SCREEN_SHAKE, nil)
    JR.put(this, :POST_IMAGE_LOADING_MODIFICATION, nil)
    JR.put(this, :HEALTH_BARS, nil)
    JR.put(this, :DAMAGE_FLOATERS, nil)
    JR.put(this, :GAME_INPUT_LAYER_PROCESSOR, nil)
    JR.put(this, :ARTIFICIAL_INTELLEGENCE_PROCESSOR, nil)
    JR.put(this, :COLLIDABLE_INTERFACE_LAYER_PROCESSOR, nil)
    JR.put(this, :TICKABLE_LAYER_PROCESSOR, nil)
    JR.put(this, :CHEATING, nil)
    JR.put(this, :DROPPED_ITEMS, nil)
    JR.put(this, :DROPPED_ITEMS_FROM_DEATH, nil)
    JR.put(this, :TEST_DESTROYED_LAYER_PROCESSOR, nil)
    JR.put(this, :COLLISIONS_WITH_SOURCE, nil)
    JR.put(this, :COLLISIONS_FORCED_TWO_DIMENSIONAL, nil)
        JR.put(this, :SOUND, GameFeature.jnew("Sound"))
        JR.put(this, :MUSIC, GameFeature.jnew("Music"))
        JR.put(this, :SCREEN_SHAKE, Feature.jnew("Screen Shake"))
        JR.put(this, :POST_IMAGE_LOADING_MODIFICATION, Feature.jnew("Post Image Loading Modification (Scaling, Rotation, or Other)"))
        JR.put(this, :HEALTH_BARS, GameFeature.jnew("Health Bars"))
        JR.put(this, :DAMAGE_FLOATERS, GameFeature.jnew("Damage Floaters"))
        JR.put(this, :GAME_INPUT_LAYER_PROCESSOR, GameFeature.jnew("Game Input Layer Processor"))
        JR.put(this, :ARTIFICIAL_INTELLEGENCE_PROCESSOR, GameFeature.jnew("Artificial Intelligence Layer Processor"))
        JR.put(this, :COLLIDABLE_INTERFACE_LAYER_PROCESSOR, GameFeature.jnew("Collidable Interface Layer Processor"))
        JR.put(this, :TICKABLE_LAYER_PROCESSOR, GameFeature.jnew("Tickable Layer Processor"))
        JR.put(this, :CHEATING, GameFeature.jnew("Cheating"))
        JR.put(this, :DROPPED_ITEMS, GameFeature.jnew("Drops"))
        JR.put(this, :DROPPED_ITEMS_FROM_DEATH, GameFeature.jnew("Drops from Dead"))
        JR.put(this, :TEST_DESTROYED_LAYER_PROCESSOR, GameFeature.jnew("Destroyed Layer Processor"))
        JR.put(this, :COLLISIONS_WITH_SOURCE, GameFeature.jnew("Allow Collisions With Source"))
        JR.put(this, :COLLISIONS_FORCED_TWO_DIMENSIONAL, GameFeature.jnew("Collisions Forced Two Dimensional"))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameFeatureFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


