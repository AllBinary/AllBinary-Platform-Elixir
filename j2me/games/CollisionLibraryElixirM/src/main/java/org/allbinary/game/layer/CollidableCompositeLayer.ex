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

defmodule CollidableCompositeLayer do
  def jsuper(), do: AllBinaryGameLayer
def jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER(), do: JR.static_get(__MODULE__, :NULL_COLLIDABLE_COMPOSITE_LAYER, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_COLLIDABLE_COMPOSITE_LAYER(value), do: JR.static_put(__MODULE__, :NULL_COLLIDABLE_COMPOSITE_LAYER, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :collidableInferface, nil)
        JR.put(this, :collidableInferface, JR.call(CollidableNeverCollideBehaviorFactory.jm_getInstance(), :jm_createBehavior, []))
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            CollidableCompositeLayer.jstatic_set_NULL_COLLIDABLE_COMPOSITE_LAYER(CollidableCompositeLayer.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), RectangleFactory.jstatic_SINGLETON(), ViewPositionBase.jstatic_NULL_VIEW_POSITION(), CollidableNeverCollideBehaviorFactory.jm_getInstance()))
        end
        throw({:jreturn, CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER()})
    end)
  end


  def jinit(this, p_name, p_layerInfo, p_viewPosition, p_collidableBaseBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :layerInfo, p_layerInfo)
      JR.lset(f, :viewPosition, p_viewPosition)
      JR.lset(f, :collidableBaseBehaviorFactory, p_collidableBaseBehaviorFactory)
        AllBinaryGameLayer.jinit(this, JR.lget(f, :name), JR.lget(f, :layerInfo), JR.lget(f, :viewPosition))
        CollidableCompositeLayer.jinitfields(this)
        if (JR.lget(f, :collidableBaseBehaviorFactory) != CollidableNeverCollideBehaviorFactory.jm_getInstance()) do
            JR.call(this, :jm_setCollidableInferface, [JR.call(JR.lget(f, :collidableBaseBehaviorFactory), :jm_createBehavior, [])])
        end
    end)
  end

  def jnew(p_name, p_layerInfo, p_viewPosition, p_collidableBaseBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_layerInfo, p_viewPosition, p_collidableBaseBehaviorFactory)
    this
  end


  def jm_getArtificialIntelligenceInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
        throw({:jreturn, ArtificialIntelligence.jm_getInstance()})
    end)
  end


  def jm_getCollidableInferface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :collidableInferface)})
    end)
  end


  def jm_setCollidableInferface(this, p_collidableInferface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableInferface, p_collidableInferface)
        JR.put(this, :collidableInferface, JR.lget(f, :collidableInferface))
    end)
  end


  def jm_implmentsCollidableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_toStringAppend(this, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringBuffer, p_stringBuffer)
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        AllBinaryGameLayer.jm_toStringAppend(this, JR.lget(f, :stringBuffer))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :NEW_LINE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.call(this, :jm_getCollidableInferface, []), :jm_toString, [])])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(this, :jm_toStringAppend, [JR.lget(f, :stringBuffer)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


