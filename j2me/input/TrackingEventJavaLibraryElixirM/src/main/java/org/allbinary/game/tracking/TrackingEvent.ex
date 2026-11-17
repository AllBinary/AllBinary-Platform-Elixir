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
# package org.allbinary.game.tracking

defmodule TrackingEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :layerInterface, nil)
        JR.put(this, :layerInterface, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
    nil
  end


  def jinit(this, p_allBinaryLayerInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerInterface, p_allBinaryLayerInterface)
        AllBinaryEventObject.jinit(this, JR.lget(f, :allBinaryLayerInterface))
        TrackingEvent.jinitfields(this)
        if (JR.lget(f, :allBinaryLayerInterface) != TrackingEventHandler.jm_getInstance()) do
            JR.call(this, :jm_setLayerInterface, [JR.lget(f, :allBinaryLayerInterface)])
        end
    end)
  end

  def jnew(p_allBinaryLayerInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_allBinaryLayerInterface)
    this
  end


  def jm_init(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(this, :jm_setSource, [JR.lget(f, :anyType)])
    end)
  end


  def jm_getLayerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :layerInterface)})
    end)
  end


  def jm_setLayerInterface(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.put(this, :layerInterface, JR.lget(f, :layerInterface))
    end)
  end


  def jm_setLayerInterfaceForCircularStaticPool(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.put(this, :layerInterface, JR.lget(f, :layerInterface))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["TrackingEvent: \n"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["LayerInterface: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :layerInterface), :jm_toString, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


