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
# package org.allbinary.game.terrain

defmodule BasicTerrainInfo do
  def jsuper(), do: JObject
def jstatic_NULL_BASIC_TERRAIN_INFO(), do: JR.static_get(__MODULE__, :NULL_BASIC_TERRAIN_INFO, fn -> BasicTerrainInfo.jnew(JR.get(AngleFactory.jm_getInstance(), :NOT_ANGLE)) end)
  def jstatic_set_NULL_BASIC_TERRAIN_INFO(value), do: JR.static_put(__MODULE__, :NULL_BASIC_TERRAIN_INFO, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :angle, nil)
        
    nil
  end


  def jinit(this, p_angle) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :angle, JR.lget(f, :angle))
    end)
  end

  def jnew(p_angle) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angle)
    this
  end


  def jm_getAngle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :angle)})
    end)
  end


  def jm_setAngle(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.put(this, :angle, JR.lget(f, :angle))
    end)
  end
end


