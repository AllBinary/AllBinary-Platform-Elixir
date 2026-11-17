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

defmodule TerrainEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicTerrainInfo, nil)
        JR.put(this, :basicTerrainInfo, BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO())
    nil
  end


  def jinit(this, p_basicTerrainInfo) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicTerrainInfo, p_basicTerrainInfo)
        AllBinaryEventObject.jinit(this, JR.lget(f, :basicTerrainInfo))
        TerrainEvent.jinitfields(this)
        JR.call(this, :jm_setBasicTerrainInfo, [JR.get(this, :basicTerrainInfo)])
    end)
  end

  def jnew(p_basicTerrainInfo) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicTerrainInfo)
    this
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["TerrainEvent: \n"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["LayerInterface: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :basicTerrainInfo), :jm_toString, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getBasicTerrainInfo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicTerrainInfo)})
    end)
  end


  def jm_setBasicTerrainInfo(this, p_basicTerrainInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicTerrainInfo, p_basicTerrainInfo)
        JR.put(this, :basicTerrainInfo, JR.lget(f, :basicTerrainInfo))
    end)
  end


  def jm_setBasicTerrainInfoForCircularStaticPool(this, p_basicTerrainInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicTerrainInfo, p_basicTerrainInfo)
        JR.put(this, :basicTerrainInfo, JR.lget(f, :basicTerrainInfo))
    end)
  end
end


