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
# package org.allbinary.game.combat.destroy.event

defmodule DestroyedEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :allBinaryGameCanvas, nil)
    JR.put(this, :allBinaryLayerInterface, nil)
        JR.put(this, :allBinaryGameCanvas, NullGameCanvas.jm_getInstance())
        JR.put(this, :allBinaryLayerInterface, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
    nil
  end


  def jinit(this, p_combatGameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :combatGameCanvas, p_combatGameCanvas)
        AllBinaryEventObject.jinit(this, DestroyedEventHandler.jm_getInstance())
        DestroyedEvent.jinitfields(this)
        JR.call(this, :jm_setAllBinaryGameCanvas, [JR.lget(f, :combatGameCanvas)])
    end)
  end

  def jnew(p_combatGameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_combatGameCanvas)
    this
  end


  def jm_getAllBinaryGameCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :allBinaryGameCanvas)})
    end)
  end


  def jm_getLayerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :allBinaryLayerInterface)})
    end)
  end


  def jm_setAllBinaryGameCanvas(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.put(this, :allBinaryGameCanvas, JR.lget(f, :allBinaryGameCanvas))
    end)
  end


  def jm_setLayerInterfaceForCircularStaticPool(this, p_allBinaryLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerInterface, p_allBinaryLayerInterface)
        JR.put(this, :allBinaryLayerInterface, JR.lget(f, :allBinaryLayerInterface))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["DestroyedEvent: \n"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["AllBinaryLayerInterface: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :allBinaryLayerInterface), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["\nAllBinaryGameCanvas: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(this, :jm_getAllBinaryGameCanvas, [])])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


