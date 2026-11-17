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
# package org.allbinary.animation

defmodule BaseAnimationInterfaceFactoryInterfaceComposite do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicAnimationInterfaceFactoryInterfaceArray, nil)
        
    nil
  end


  def jinit(this, p_basicAnimationInterfaceFactoryInterfaceArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicAnimationInterfaceFactoryInterfaceArray, p_basicAnimationInterfaceFactoryInterfaceArray)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :basicAnimationInterfaceFactoryInterfaceArray, JR.lget(f, :basicAnimationInterfaceFactoryInterfaceArray))
    end)
  end

  def jnew(p_basicAnimationInterfaceFactoryInterfaceArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicAnimationInterfaceFactoryInterfaceArray)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        throw({:jreturn, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0])})
    end)
  end


  def jm_getBasicAnimationInterfaceFactoryInterfaceArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicAnimationInterfaceFactoryInterfaceArray)})
    end)
  end


  def jm_setBasicAnimationInterfaceFactoryInterfaceArray(this, p_basicAnimationInterfaceFactoryInterfaceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicAnimationInterfaceFactoryInterfaceArray, p_basicAnimationInterfaceFactoryInterfaceArray)
        JR.put(this, :basicAnimationInterfaceFactoryInterfaceArray, JR.lget(f, :basicAnimationInterfaceFactoryInterfaceArray))
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


