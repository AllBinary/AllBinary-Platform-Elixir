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
# package org.allbinary.animation.resource

defmodule BaseResourceAnimationInterfaceFactoryInterfaceFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :hashtable, nil)
    JR.put(this, :rectangleHashtable, nil)
    JR.put(this, :rectangleArrayOfArraysHashtable, nil)
    JR.put(this, :name, nil)
    JR.put(this, :initialized, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        
        
        JR.put(this, :initialized, false)
    nil
  end


  def jinit(this, p_name, p_hashtable, p_rectangleHashtable, p_rectangleArrayHashtable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :rectangleHashtable, p_rectangleHashtable)
      JR.lset(f, :rectangleArrayHashtable, p_rectangleArrayHashtable)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :hashtable, JR.lget(f, :hashtable))
        JR.put(this, :rectangleHashtable, JR.lget(f, :rectangleHashtable))
        JR.put(this, :rectangleArrayOfArraysHashtable, JR.lget(f, :rectangleArrayHashtable))
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end

  def jnew(p_name, p_hashtable, p_rectangleHashtable, p_rectangleArrayHashtable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_hashtable, p_rectangleHashtable, p_rectangleArrayHashtable)
    this
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_init(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Available List of Animations: "]), :jm_append, [JR.call(JR.get(this, :hashtable), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :INIT)])
        JR.call(this, :jm_setInitialized, [true])
    end)
  end


  def jm_initImageCache(this, p_imageCache, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :level, p_level)
        nil
    end)
  end


  def jm_add(this, p_resource, p_animationInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :animationInterfaceFactoryInterface, p_animationInterfaceFactoryInterface)
        if JR.call(JR.get(this, :hashtable), :jm_containsKey, [JR.lget(f, :resource)]) do
            throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Resource Already Created: "]), :jm_append, [JR.lget(f, :resource)]), :jm_toString, []))})
        end
        JR.call(JR.get(this, :hashtable), :jm_put, [JR.lget(f, :resource), JR.lget(f, :animationInterfaceFactoryInterface)])
    end)
  end


  def jm_getBasicAnimationInterfaceFactoryInstance(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :basicAnimationInterfaceFactoryInterfaceCanBeNull, JR.call(JR.get(this, :hashtable), :jm_get, [JR.lget(f, :resource)]))
        if (JR.lget(f, :basicAnimationInterfaceFactoryInterfaceCanBeNull) == nil) do
            throw({:jreturn, NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY()})
        end
        throw({:jreturn, JR.lget(f, :basicAnimationInterfaceFactoryInterfaceCanBeNull)})
    end)
  end


  def jm_getRectangle(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :rectangleCanBeNull, JR.call(JR.get(this, :rectangleHashtable), :jm_get, [JR.lget(f, :resource)]))
        if (JR.lget(f, :rectangleCanBeNull) == nil) do
            throw({:jreturn, RectangleFactory.jstatic_SINGLETON()})
        end
        throw({:jreturn, JR.lget(f, :rectangleCanBeNull)})
    end)
  end


  def jm_addRectangle(this, p_resource, p_rectangle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :rectangle, p_rectangle)
        JR.call(JR.get(this, :rectangleHashtable), :jm_put, [JR.lget(f, :resource), JR.lget(f, :rectangle)])
    end)
  end


  def jm_getRectangleArrayOfArrays(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :valueCanBeNull, JR.call(JR.get(this, :rectangleArrayOfArraysHashtable), :jm_get, [JR.lget(f, :resource)]))
        if (JR.lget(f, :valueCanBeNull) != nil) do
            JR.lset(f, :rectangleArrayOfArrays, JR.lget(f, :valueCanBeNull))
            throw({:jreturn, JR.lget(f, :rectangleArrayOfArrays)})
        else
            throw({:jreturn, RectangleFactory.jstatic_ARRAY_OF_ARRAYS()})
        end
    end)
  end


  def jm_addRectangleArrayOfArrays(this, p_resource, p_rectangleArrayOfArrays) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :rectangleArrayOfArrays, p_rectangleArrayOfArrays)
        JR.call(JR.get(this, :rectangleArrayOfArraysHashtable), :jm_put, [JR.lget(f, :resource), JR.lget(f, :rectangleArrayOfArrays)])
    end)
  end


  def jm_isFeature(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_isLoadingLevel(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        if (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL), :jm_getLevel, [])) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.class_name(this)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SEMICOLON)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_append, [JR.get(this, :name)]), :jm_toString, [])})
    end)
  end


  def jm_getHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hashtable)})
    end)
  end


  def jm_getRectangleHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rectangleHashtable)})
    end)
  end


  def jm_getRectangleArrayOfArraysHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rectangleArrayOfArraysHashtable)})
    end)
  end


  def jm_setInitialized(this, p_initialized) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initialized, p_initialized)
        JR.put(this, :initialized, JR.lget(f, :initialized))
    end)
  end


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initialized)})
    end)
  end
end


