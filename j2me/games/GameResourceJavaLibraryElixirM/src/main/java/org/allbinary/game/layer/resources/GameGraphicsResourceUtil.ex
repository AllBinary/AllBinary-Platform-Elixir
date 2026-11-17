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

defmodule GameGraphicsResourceUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :SPRITE, nil)
    JR.put(this, :QUARTER, nil)
    JR.put(this, :name, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :SPRITE, "_sprite")
        JR.put(this, :QUARTER, "_quarter")
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameGraphicsResourceUtil.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameGraphicsResourceUtil.jstatic_set_instance(GameGraphicsResourceUtil.jnew())
        end
        throw({:jreturn, GameGraphicsResourceUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        try do
            JR.put(this, :name, JR.call(this, :jm_getString, []))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :graphicsFeatureFactory, GraphicsFeatureFactory.jm_getInstance())
        JR.lset(f, :graphicsFeature, JR.get(JR.lget(f, :graphicsFeatureFactory), :NONE))
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_TO_ARRAY_GRAPHICS)]) do
            JR.lset(f, :graphicsFeature, JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_TO_ARRAY_GRAPHICS))
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_FULL_GRAPHICS)]) do
            JR.lset(f, :graphicsFeature, JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_FULL_GRAPHICS))
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_QUARTER_ROTATION_GRAPHICS)]) do
            JR.lset(f, :graphicsFeature, JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_QUARTER_ROTATION_GRAPHICS))
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_ROTATION_ON_THE_FLY)]) do
            JR.lset(f, :graphicsFeature, JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_ROTATION_ON_THE_FLY))
        end
        end
        end
        end
        throw({:jreturn, JR.call(this, :jm_getStringForFeature, [JR.lget(f, :graphicsFeature)])})
    end)
  end


  def jm_getStringForFeature(this, p_graphicsFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphicsFeature, p_graphicsFeature)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :graphicsFeatureFactory, GraphicsFeatureFactory.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :VECTOR_GRAPHICS)]) do
            nil
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_GRAPHICS)]) do
            if ((JR.lget(f, :graphicsFeature) == JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_TO_ARRAY_GRAPHICS)) || (JR.lget(f, :graphicsFeature) == JR.get(JR.lget(f, :graphicsFeatureFactory), :IMAGE_ROTATION_ON_THE_FLY))) do
                nil
            else
                if (JR.lget(f, :graphicsFeature) == JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_FULL_GRAPHICS)) do
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :SPRITE)])
            else
                if (JR.lget(f, :graphicsFeature) == JR.get(JR.lget(f, :graphicsFeatureFactory), :SPRITE_QUARTER_ROTATION_GRAPHICS)) do
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :QUARTER)])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :SPRITE)])
            else
                throw({:jexception, JR.exception("Exception", "None/Unknown Sub Image Resource Type Specified")})
            end
            end
            end
        else
            if JR.call(OpenGLFeatureUtil.jm_getInstance(), :jm_isAnyThreed, []) do
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CanvasStrings.jm_getInstance(), :OBJ_MODEL)])
        else
            throw({:jexception, JR.exception("Exception", "None/Unknown Main Image Resource Type Specified")})
        end
        end
        end
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end
end


