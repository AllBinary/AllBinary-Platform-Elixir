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
# package org.allbinary.input.motion.button

defmodule TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory do
  def jsuper(), do: BaseResourceAnimationInterfaceFactoryInterfaceFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_createFactory() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew("TouchButton Animations")})
    end)
  end


  def jinit(this, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        BaseResourceAnimationInterfaceFactoryInterfaceFactory.jinit(this, JR.lget(f, :name), JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []), JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []), JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew(p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name)
    this
  end


  def jm_init(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.call(this, :jm_initImageCache, [ImageCacheFactory.jm_getInstance(), JR.lget(f, :level)])
    end)
  end


  def jm_initImageCache(this, p_imageCache, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :level, p_level)
        if JR.call(this, :jm_isInitialized, []) do
            throw({:jreturn, nil})
        end
        BaseResourceAnimationInterfaceFactoryInterfaceFactory.jm_init(this, JR.lget(f, :level))
    end)
  end


  def jm_isLoadingLevel(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        if (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_TOUCH), :jm_getLevel, [])) do
            throw({:jreturn, true})
        else
            throw({:jreturn, BaseResourceAnimationInterfaceFactoryInterfaceFactory.jm_isLoadingLevel(this, JR.lget(f, :level))})
        end
    end)
  end


  def jm_isFeature(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if !JR.call(Features.jm_getInstance(), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)]) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end
end


