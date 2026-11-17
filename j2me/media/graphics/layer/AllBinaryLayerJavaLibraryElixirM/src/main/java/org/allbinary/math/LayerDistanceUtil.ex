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
# package org.allbinary.math

defmodule LayerDistanceUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LayerDistanceUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :mathUtil, nil)
        JR.put(this, :mathUtil, MathUtil.jm_getInstance())
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LayerDistanceUtil.jstatic_instance()})
    end)
  end


  def jm_getDistance(this, p_layerInterface, p_layerInterface2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :layerInterface2, p_layerInterface2)
        JR.lset(f, :dx, (((JR.call(JR.lget(f, :layerInterface), :jm_getXP, []) + JR.call(JR.lget(f, :layerInterface), :jm_getHalfWidth, []))) - ((JR.call(JR.lget(f, :layerInterface2), :jm_getXP, []) + JR.call(JR.lget(f, :layerInterface2), :jm_getHalfWidth, [])))))
        JR.lset(f, :dy, (((JR.call(JR.lget(f, :layerInterface), :jm_getYP, []) + JR.call(JR.lget(f, :layerInterface), :jm_getHalfHeight, []))) - ((JR.call(JR.lget(f, :layerInterface2), :jm_getYP, []) + JR.call(JR.lget(f, :layerInterface2), :jm_getHalfHeight, [])))))
        throw({:jreturn, JR.int32(JR.call(JR.get(this, :mathUtil), :jm_sqrt, [JR.int32((JR.int32(JR.lget(f, :dx) * JR.lget(f, :dx))) + (JR.int32(JR.lget(f, :dy) * JR.lget(f, :dy))))]))})
    end)
  end


  def jm_getDistance3D(this, p_layerInterface, p_layerInterface2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :layerInterface2, p_layerInterface2)
        JR.lset(f, :dx, (((JR.call(JR.lget(f, :layerInterface), :jm_getXP, []) + JR.call(JR.lget(f, :layerInterface), :jm_getHalfWidth, []))) - ((JR.call(JR.lget(f, :layerInterface2), :jm_getXP, []) + JR.call(JR.lget(f, :layerInterface2), :jm_getHalfWidth, [])))))
        JR.lset(f, :dy, (((JR.call(JR.lget(f, :layerInterface), :jm_getYP, []) + JR.call(JR.lget(f, :layerInterface), :jm_getHalfHeight, []))) - ((JR.call(JR.lget(f, :layerInterface2), :jm_getYP, []) + JR.call(JR.lget(f, :layerInterface2), :jm_getHalfHeight, [])))))
        JR.lset(f, :dz, (((JR.call(JR.lget(f, :layerInterface), :jm_getZP, []) + JR.call(JR.lget(f, :layerInterface), :jm_getHalfDepth, []))) - ((JR.call(JR.lget(f, :layerInterface2), :jm_getZP, []) + JR.call(JR.lget(f, :layerInterface2), :jm_getHalfDepth, [])))))
        throw({:jreturn, JR.int32(JR.call(JR.get(this, :mathUtil), :jm_sqrt, [JR.int32(JR.int32((JR.int32(JR.lget(f, :dx) * JR.lget(f, :dx))) + (JR.int32(JR.lget(f, :dy) * JR.lget(f, :dy)))) + (JR.int32(JR.lget(f, :dz) * JR.lget(f, :dz))))]))})
    end)
  end


  def jm_getDistanceAt(this, p_layerInterface, p_point) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :point, p_point)
        JR.lset(f, :dx, (JR.call(JR.lget(f, :layerInterface), :jm_getXP, []) - JR.call(JR.lget(f, :point), :jm_getX, [])))
        JR.lset(f, :dy, (JR.call(JR.lget(f, :layerInterface), :jm_getYP, []) - JR.call(JR.lget(f, :point), :jm_getY, [])))
        throw({:jreturn, JR.int32(JR.call(JR.get(this, :mathUtil), :jm_sqrt, [JR.int32((JR.int32(JR.lget(f, :dx) * JR.lget(f, :dx))) + (JR.int32(JR.lget(f, :dy) * JR.lget(f, :dy))))]))})
    end)
  end
end


