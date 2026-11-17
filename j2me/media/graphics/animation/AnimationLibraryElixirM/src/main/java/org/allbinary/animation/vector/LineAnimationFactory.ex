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
# package org.allbinary.animation.vector

defmodule LineAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColor, nil)
        
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end

  def jnew(p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        throw({:jreturn, LineAnimation.jnew(JR.get(this, :basicColor))})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        nil
    end)
  end
end


