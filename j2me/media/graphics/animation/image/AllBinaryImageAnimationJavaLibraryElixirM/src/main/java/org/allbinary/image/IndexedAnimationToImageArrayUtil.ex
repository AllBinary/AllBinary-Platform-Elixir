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
# package org.allbinary.image

defmodule IndexedAnimationToImageArrayUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance(p_width, p_height, p_sequentialAnimationInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :sequentialAnimationInterface, p_sequentialAnimationInterface)
        JR.lset(f, :size, JR.call(JR.lget(f, :sequentialAnimationInterface), :jm_getAnimationSize, []))
        JR.lset(f, :imageArray, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :sequentialAnimationInterface), :jm_setFrame, [JR.lget(f, :index)])
            JR.aset(JR.lget(f, :imageArray), JR.lget(f, :index), JR.call(AnimationFrameToImageUtil.jm_getInstance(), :jm_getInstanceWH, [JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :sequentialAnimationInterface)]))
        end)
        throw({:jreturn, JR.lget(f, :imageArray)})
    end)
  end
end


