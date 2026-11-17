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
        JR.lset(f, :portion, 140)
        JR.lset(f, :loadingString, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.call(this, :jm_toString, [])]), :jm_append, [" Loading: "]), :jm_toString, []))
        JR.lset(f, :index, 0)
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.lset(f, :touchButtonBlankResource, TouchButtonBlankResource.jm_getInstance())
        JR.lset(f, :touchButtonGenericActionResource, TouchButtonGenericActionResource.jm_getInstance())
        JR.lset(f, :touchButtonStartResource, TouchButtonStartResource.jm_getInstance())
        JR.lset(f, :touchButtonUpResource, TouchButtonUpResource.jm_getInstance())
        JR.lset(f, :touchButtonDownResource, TouchButtonDownResource.jm_getInstance())
        JR.lset(f, :touchButtonTurnLeftResource, TouchButtonTurnLeftResource.jm_getInstance())
        JR.lset(f, :touchButtonTurnRightResource, TouchButtonTurnRightResource.jm_getInstance())
        JR.lset(f, :touchButtonStrafeLeftResource, TouchButtonStrafeLeftResource.jm_getInstance())
        JR.lset(f, :touchButtonStrafeRightResource, TouchButtonStrafeRightResource.jm_getInstance())
        JR.lset(f, :touchButtonBlankResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonBlankResource), :RESOURCE)]))
        JR.lset(f, :touchButtonGenericActionResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonGenericActionResource), :RESOURCE)]))
        JR.lset(f, :touchButtonStartResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonStartResource), :RESOURCE)]))
        JR.lset(f, :touchButtonUpResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonUpResource), :RESOURCE)]))
        JR.lset(f, :touchButtonDownResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonDownResource), :RESOURCE)]))
        JR.lset(f, :touchButtonTurnLeftResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonTurnLeftResource), :RESOURCE)]))
        JR.lset(f, :touchButtonTurnRightResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonTurnRightResource), :RESOURCE)]))
        JR.lset(f, :touchButtonStrafeLeftResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonStrafeLeftResource), :RESOURCE)]))
        JR.lset(f, :touchButtonStrafeRightResourceImage, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(JR.lget(f, :touchButtonStrafeRightResource), :RESOURCE)]))
        JR.lset(f, :nullAnimationFactory, NullAnimationFactory.jm_getFactoryInstance())
        if JR.call(JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []), :jm_isOverScan, []) do
            JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(TouchButtonStartResource.jm_getInstance(), :HINT)])
        end
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.lset(f, :imageCompleteUtil, ImageCompleteUtil.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonBlankResourceImage), JR.get(JR.lget(f, :touchButtonBlankResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonBlankResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonBlankResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonBlankResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonGenericActionResourceImage), JR.get(JR.lget(f, :touchButtonGenericActionResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonGenericActionResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonGenericActionResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonGenericActionResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonStartResourceImage), JR.get(JR.lget(f, :touchButtonStartResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStartResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonStartResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonUpResourceImage), JR.get(JR.lget(f, :touchButtonUpResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonUpResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonUpResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonUpResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonDownResourceImage), JR.get(JR.lget(f, :touchButtonDownResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonDownResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonDownResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonDownResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonTurnLeftResourceImage), JR.get(JR.lget(f, :touchButtonTurnLeftResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonTurnLeftResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonTurnLeftResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonTurnLeftResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonTurnRightResourceImage), JR.get(JR.lget(f, :touchButtonTurnRightResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonTurnRightResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonTurnRightResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonTurnRightResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonStrafeLeftResourceImage), JR.get(JR.lget(f, :touchButtonStrafeLeftResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStrafeLeftResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonStrafeLeftResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStrafeLeftResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [JR.lget(f, :portion), JR.lget(f, :loadingString), JR.lpostinc(f, :index, 1)])
        JR.call(JR.lget(f, :imageCompleteUtil), :jm_waitForImage, [JR.lget(f, :touchButtonStrafeRightResourceImage), JR.get(JR.lget(f, :touchButtonStrafeRightResource), :RESOURCE)])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStrafeRightResource), :RESOURCE), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonStrafeRightResourceImage), AnimationBehaviorFactory.jm_getInstance())])
        JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStrafeRightResource), :HINT), JR.lget(f, :nullAnimationFactory)])
        if JR.call(JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []), :jm_isOverScan, []) do
            JR.lset(f, :touchButtonStartHintResource, JR.call(JR.lget(f, :imageCache), :jm_getWithKey, [JR.get(TouchButtonStartResource.jm_getInstance(), :HINT)]))
            JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStartResource), :HINT), OneRowSpriteIndexedAnimationFactory.jm_createFactory(JR.lget(f, :touchButtonStartHintResource), AnimationBehaviorFactory.jm_getInstance())])
        else
            JR.call(this, :jm_add, [JR.get(JR.lget(f, :touchButtonStartResource), :HINT), JR.lget(f, :nullAnimationFactory)])
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


