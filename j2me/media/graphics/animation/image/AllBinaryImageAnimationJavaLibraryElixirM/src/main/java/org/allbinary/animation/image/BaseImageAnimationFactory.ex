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
# package org.allbinary.animation.image

defmodule BaseImageAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationFactoryImageScaleUtil, nil)
    JR.put(this, :image, nil)
    JR.put(this, :animationBehaviorFactory, nil)
    JR.put(this, :sequenceArray, nil)
    JR.put(this, :animationFactoryInitializationVisitor, nil)
    JR.put(this, :scaleProperties, nil)
        JR.put(this, :animationFactoryImageScaleUtil, AnimationFactoryImageScaleUtil.jm_getInstance())
        
        
        
        
        JR.put(this, :scaleProperties, ScaleProperties.jstatic_instance())
    nil
  end


  def jm_createFactoryBase(p_image, p_sequenceArray, p_width, p_height, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :sequenceArray, p_sequenceArray)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        throw({:jreturn, BaseImageAnimationFactory.jnew(JR.lget(f, :image), JR.lget(f, :sequenceArray), JR.lget(f, :width), JR.lget(f, :height), 0, 0, JR.lget(f, :animationBehaviorFactory))})
    end)
  end


  def jinit(this, p_image, p_sequenceArray, p_width, p_height, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :sequenceArray, p_sequenceArray)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :animationFactoryInitializationVisitor, AnimationFactoryInitializationVisitor.jnew())
        JR.put(this, :image, JR.lget(f, :image))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :width, JR.lget(f, :width))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :height, JR.lget(f, :height))
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
        JR.put(this, :sequenceArray, JR.lget(f, :sequenceArray))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dx, JR.lget(f, :dx))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_image, p_sequenceArray, p_width, p_height, p_dx, p_dy, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_sequenceArray, p_width, p_height, p_dx, p_dy, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        throw({:jreturn, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [JR.lget(f, :instanceId)])})
    end)
  end


  def jm_getImage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :image)})
    end)
  end


  def jm_getSequenceArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sequenceArray)})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        JR.put(this, :scaleProperties, JR.lget(f, :scaleProperties))
        if JR.get(JR.get(this, :scaleProperties), :shouldScale) do
            JR.put(JR.get(this, :scaleProperties), :scaleWidth, JR.int32(((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width) * JR.get(JR.get(this, :scaleProperties), :scaleX)))))
            JR.put(JR.get(this, :scaleProperties), :scaleHeight, JR.int32(((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :height) * JR.get(JR.get(this, :scaleProperties), :scaleY)))))
        else
            nil
        end
    end)
  end


  def jm_getAnimationFactoryInitializationVisitorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationFactoryInitializationVisitor)})
    end)
  end


  def jm_getScalePropertiesP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scaleProperties)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [.jm_toString(this)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.get(this, :image), :jm_getHeight, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :animationFactoryInitializationVisitor), :jm_toString, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


