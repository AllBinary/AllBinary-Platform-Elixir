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
# package org.allbinary.layer.event

defmodule LayerManagerEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :layerInterface, nil)
    JR.put(this, :crud, nil)
        JR.put(this, :layerInterface, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
        
    nil
  end


  def jinit(this, p_layerManager, p_crud) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :crud, p_crud)
        AllBinaryEventObject.jinit(this, JR.lget(f, :layerManager))
        LayerManagerEvent.jinitfields(this)
        JR.put(this, :crud, JR.lget(f, :crud))
    end)
  end

  def jnew(p_layerManager, p_crud) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerManager, p_crud)
    this
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


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["LayerManagerEvent: \n"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["LayerInterface: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.call(this, :jm_getLayerInterface, []), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["\nCRUD: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :crud)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


