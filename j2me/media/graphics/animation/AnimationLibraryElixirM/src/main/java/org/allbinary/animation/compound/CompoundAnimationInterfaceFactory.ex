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
# package org.allbinary.animation.compound

defmodule CompoundAnimationInterfaceFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicAnimationInterfaceFactoryInterfaceArrayP, nil)
    JR.put(this, :animationBehaviorFactory, nil)
        
        
    nil
  end


  def jinit(this, p_basicAnimationInterfaceFactoryInterfaceArray, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicAnimationInterfaceFactoryInterfaceArray, p_basicAnimationInterfaceFactoryInterfaceArray)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :basicAnimationInterfaceFactoryInterfaceArrayP, JR.lget(f, :basicAnimationInterfaceFactoryInterfaceArray))
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
    end)
  end

  def jnew(p_basicAnimationInterfaceFactoryInterfaceArray, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicAnimationInterfaceFactoryInterfaceArray, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :size, JR.alength(JR.get(this, :basicAnimationInterfaceFactoryInterfaceArrayP)))
        JR.lset(f, :animationInterfaceArray, JR.call(this, :jm_createArray, [JR.lget(f, :size)]))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :animationInterfaceArray), JR.lget(f, :index), JR.call(JR.aget(JR.get(this, :basicAnimationInterfaceFactoryInterfaceArrayP), JR.lget(f, :index)), :jm_getInstance, [JR.lget(f, :instanceId)]))
        end)
        throw({:jreturn, JR.call(this, :jm_createAnimation, [JR.lget(f, :animationInterfaceArray)])})
    end)
  end


  def jm_createArray(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        throw({:jreturn, JR.get(NullAnimationFactory.jm_getFactoryInstance(), :EMPTY_ARRAY)})
    end)
  end


  def jm_createAnimation(this, p_animationInterfaceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
        throw({:jreturn, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0])})
    end)
  end


  def jm_getBasicAnimationInterfaceFactoryInterfaceArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicAnimationInterfaceFactoryInterfaceArrayP)})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        JR.lset(f, :size, JR.alength(JR.get(this, :basicAnimationInterfaceFactoryInterfaceArrayP)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.aget(JR.get(this, :basicAnimationInterfaceFactoryInterfaceArrayP), JR.lget(f, :index)), :jm_setInitialScale, [JR.lget(f, :scaleProperties)])
        end)
    end)
  end
end


