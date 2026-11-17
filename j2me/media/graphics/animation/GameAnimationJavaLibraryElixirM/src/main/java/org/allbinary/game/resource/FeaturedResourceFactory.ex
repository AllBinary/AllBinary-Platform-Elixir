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

defmodule FeaturedResourceFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :list, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :ANIMATION_FEATURES, nil)
    JR.put(this, :IMAGE_LABEL, nil)
    JR.put(this, :IMAGE_GRAPHICS_ARRAY, nil)
    JR.put(this, :IMAGE_GRAPHICS_ROTATION, nil)
    JR.put(this, :SPRITE_QUARTER, nil)
    JR.put(this, :SPRITE_FULL, nil)
    JR.put(this, :IS_LOADING_LEVEL_LABEL, nil)
    JR.put(this, :IS_FEATURE, nil)
    JR.put(this, :GAME_FEATURE_CONTROLLED, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :ANIMATION_FEATURES, "Animation Features: Vector: ")
        JR.put(this, :IMAGE_LABEL, " Image: ")
        JR.put(this, :IMAGE_GRAPHICS_ARRAY, "Image Array: ")
        JR.put(this, :IMAGE_GRAPHICS_ROTATION, "Image Rotate: ")
        JR.put(this, :SPRITE_QUARTER, " Sprite Quarter: ")
        JR.put(this, :SPRITE_FULL, " Sprite Full: ")
        JR.put(this, :IS_LOADING_LEVEL_LABEL, " isLoadingLevel ")
        JR.put(this, :IS_FEATURE, " isFeature: ")
        JR.put(this, :GAME_FEATURE_CONTROLLED, "GameFeatureControlledInterface: ")
    nil
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


  def jm_init(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :featureInterface, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :isLoadingLevel, JR.call(JR.lget(f, :featureInterface), :jm_isLoadingLevel, [JR.lget(f, :level)]))
            JR.lset(f, :isFeature, JR.call(JR.lget(f, :featureInterface), :jm_isFeature, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :GAME_FEATURE_CONTROLLED)]), :jm_append, [JR.call(JR.lget(f, :featureInterface), :jm_toString, [])]), :jm_append, [JR.get(this, :IS_LOADING_LEVEL_LABEL)]), :jm_append, [JR.call(ResourceLoadingLevelFactory.jm_getInstance(), :jm_getLevelString, [JR.lget(f, :level)])]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COLON_SEP)]), :jm_appendboolean, [JR.lget(f, :isLoadingLevel)]), :jm_append, [JR.get(this, :IS_FEATURE)]), :jm_appendboolean, [JR.lget(f, :isFeature)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :INIT)])
            if (JR.lget(f, :isLoadingLevel) && JR.lget(f, :isFeature)) do
                JR.call(JR.lget(f, :featureInterface), :jm_init, [JR.lget(f, :level)])
            end
        end)
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :graphicsFeatureFactory, GraphicsFeatureFactory.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :ANIMATION_FEATURES)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :VECTOR_GRAPHICS)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :IMAGE_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_GRAPHICS)])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :INIT)])
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_GRAPHICS)]) do
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :IMAGE_GRAPHICS_ARRAY)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_TO_ARRAY_GRAPHICS)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :IMAGE_GRAPHICS_ROTATION)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_TO_ARRAY_GRAPHICS)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :SPRITE_QUARTER)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_QUARTER_ROTATION_GRAPHICS)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :SPRITE_FULL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_FULL_GRAPHICS)])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :INIT)])
        end
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :list), :jm_clear, [])
    end)
  end


  def jm_add(this, p_featureInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :featureInterface, p_featureInterface)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :featureInterface)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :ADD)])
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :featureInterface)])
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :list)})
    end)
  end
end


