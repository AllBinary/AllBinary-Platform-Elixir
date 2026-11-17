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

defmodule LayerPlacer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :enumerationUtil, nil)
    JR.put(this, :layerInterfaceVisitor, nil)
    JR.put(this, :dimension, nil)
        JR.put(this, :enumerationUtil, EnumerationUtil.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_layerInterfaceVisitor, p_dimension) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterfaceVisitor, p_layerInterfaceVisitor)
      JR.lset(f, :dimension, p_dimension)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :layerInterfaceVisitor, JR.lget(f, :layerInterfaceVisitor))
        JR.put(this, :dimension, JR.lget(f, :dimension))
    end)
  end

  def jnew(p_layerInterfaceVisitor, p_dimension) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterfaceVisitor, p_dimension)
    this
  end


  def jm_processList(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :layerPlacementInterface, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :layerPlacementInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(this, :jm_process, [JR.lget(f, :layerPlacementInterface)])
        end)
    end)
  end


  def jm_process(this, p_layerPlacementInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerPlacementInterface, p_layerPlacementInterface)
        JR.lset(f, :relativePoint, JR.call(this, :jm_getPoint, [JR.lget(f, :layerPlacementInterface)]))
        JR.lset(f, :layerInterfaceFactory, LayerInterfaceFactory.jm_getInstance())
        JR.lset(f, :hashtable, JR.call(JR.lget(f, :layerPlacementInterface), :jm_getInstance, []))
        JR.lset(f, :enumeration, JR.call(JR.lget(f, :hashtable), :jm_keys, []))
        JR.lset(f, :point, nil)
        JR.lset(f, :layerHashtable, nil)
        JR.lset(f, :x, 0)
        JR.lset(f, :y, 0)
        JR.lset(f, :z, 0)
        JR.lset(f, :layerInterface, nil)
        JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.lset(f, :point, JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)]))
            JR.lset(f, :layerHashtable, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :point)]))
            JR.lset(f, :x, (JR.call(JR.lget(f, :point), :jm_getX, []) + JR.call(JR.lget(f, :relativePoint), :jm_getX, [])))
            JR.lset(f, :y, (JR.call(JR.lget(f, :point), :jm_getY, []) + JR.call(JR.lget(f, :relativePoint), :jm_getY, [])))
            JR.lset(f, :z, (JR.call(JR.lget(f, :point), :jm_getZ, []) + JR.call(JR.lget(f, :relativePoint), :jm_getZ, [])))
            JR.lset(f, :layerInterface, JR.call(JR.lget(f, :layerInterfaceFactory), :jm_getNexInstance, [JR.lget(f, :layerHashtable), JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)]))
            JR.call(JR.get(this, :layerInterfaceVisitor), :jm_visit, [JR.lget(f, :layerInterface)])
        end)
    end)
  end


  def jm_getPoint(this, p_layerPlacementInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerPlacementInterface, p_layerPlacementInterface)
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :layerPlacementType, JR.call(JR.lget(f, :layerPlacementInterface), :jm_getLayerType, []))
        if (JR.lget(f, :layerPlacementType) == JR.get(LayerPlacementTypeFactory.jm_getInstance(), :MAP)) do
            JR.lset(f, :width, JR.call(JR.lget(f, :layerPlacementInterface), :jm_getWidth, []))
            JR.lset(f, :height, JR.call(JR.lget(f, :layerPlacementInterface), :jm_getHeight, []))
            JR.lset(f, :x, ((((JR.call(JR.get(this, :dimension), :jm_getX, []) - JR.lget(f, :width))) / 2)))
            JR.lset(f, :y, ((((JR.call(JR.get(this, :dimension), :jm_getY, []) - JR.lget(f, :height))) / 2)))
            throw({:jreturn, JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :x), JR.lget(f, :y)])})
        else
            if (JR.lget(f, :layerPlacementType) == JR.get(LayerPlacementTypeFactory.jm_getInstance(), :UP)) do
            JR.lset(f, :width, JR.call(JR.lget(f, :layerPlacementInterface), :jm_getWidth, []))
            JR.lset(f, :height, JR.call(JR.lget(f, :layerPlacementInterface), :jm_getHeight, []))
            JR.lset(f, :x, ((((JR.call(JR.get(this, :dimension), :jm_getX, []) - JR.lget(f, :width))) / 2)))
            JR.lset(f, :y, -JR.lget(f, :height))
            throw({:jreturn, JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :x), JR.lget(f, :y)])})
        else
            throw({:jexception, JR.exception("Exception", "PlacementType Not Recognized")})
        end
        end
    end)
  end
end


