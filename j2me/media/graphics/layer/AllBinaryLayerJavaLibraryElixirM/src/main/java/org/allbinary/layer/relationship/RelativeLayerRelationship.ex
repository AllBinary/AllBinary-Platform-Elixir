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
# package org.allbinary.layer.relationship

defmodule RelativeLayerRelationship do
  def jsuper(), do: RelativeRelationship

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :layer, nil)
        JR.put(this, :layer, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
    nil
  end


  def jinit(this, p_layer, p_point, p_typesAllowedList) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
      JR.lset(f, :point, p_point)
      JR.lset(f, :typesAllowedList, p_typesAllowedList)
        RelativeRelationship.jinit(this, JR.lget(f, :point), JR.lget(f, :typesAllowedList))
        RelativeLayerRelationship.jinitfields(this)
        JR.put(this, :layer, JR.lget(f, :layer))
    end)
  end

  def jnew(p_layer, p_point, p_typesAllowedList) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layer, p_point, p_typesAllowedList)
    this
  end


  def jm_getX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(JR.get(this, :layer), :jm_getXP, []) + RelativeRelationship.jm_getX(this))})
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(JR.get(this, :layer), :jm_getYP, []) + RelativeRelationship.jm_getY(this))})
    end)
  end


  def jm_getZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(JR.get(this, :layer), :jm_getZP, []) + RelativeRelationship.jm_getZ(this))})
    end)
  end
end


