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

defmodule ImageArrayRotationAnimationCacheable do
  def jsuper(), do: AdjustedImageArrayRotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_anyType, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        AdjustedImageArrayRotationAnimation.jinit(this, JR.call((JR.lget(f, :anyType)), :jm_getImageArray, []), JR.call((JR.lget(f, :anyType)), :jm_getAngleInfoP, []), JR.call((JR.lget(f, :anyType)), :jm_getTotalAngle, []), JR.call((JR.lget(f, :anyType)), :jm_getDx, []), JR.call((JR.lget(f, :anyType)), :jm_getDy, []), JR.lget(f, :animationBehavior))
        ImageArrayRotationAnimationCacheable.jinitfields(this)
    end)
  end

  def jnew(p_anyType, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType, p_animationBehavior)
    this
  end


  def jm_getKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end
end


