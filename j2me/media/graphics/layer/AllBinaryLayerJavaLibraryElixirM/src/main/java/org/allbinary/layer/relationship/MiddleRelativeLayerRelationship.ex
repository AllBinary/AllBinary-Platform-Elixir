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

defmodule MiddleRelativeLayerRelationship do
  def jsuper(), do: RelativeLayerRelationship

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_layer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
        RelativeLayerRelationship.jinit(this, JR.lget(f, :layer), JR.call(PointFactory.jm_getInstance(), :jm_createXY, [JR.call(JR.lget(f, :layer), :jm_getHalfWidth, []), JR.call(JR.lget(f, :layer), :jm_getHalfHeight, [])]), JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
        MiddleRelativeLayerRelationship.jinitfields(this)
    end)
  end

  def jnew(p_layer) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layer)
    this
  end
end


