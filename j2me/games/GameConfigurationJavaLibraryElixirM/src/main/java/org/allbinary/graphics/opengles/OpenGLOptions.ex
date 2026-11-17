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
# package org.allbinary.graphics.opengles

defmodule OpenGLOptions do
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


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL_OPTIONS)]) do
            JR.lset(f, :openGLMultipleList, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :openGLMultipleList), :jm_add, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL)])
            JR.call(GameFeatureChoiceGroups.jm_getMultipleInstance(), :jm_add, ["OpenGL (Complete Restart)", JR.lget(f, :openGLMultipleList)])
            JR.lset(f, :openGLVersionSelectorMultipleList, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :openGLVersionSelectorMultipleList), :jm_add, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL_AUTO_SELECT)])
            JR.call(JR.lget(f, :openGLVersionSelectorMultipleList), :jm_add, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL_MINIMUM)])
            JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_add, ["OpenGL Version Selector", JR.lget(f, :openGLVersionSelectorMultipleList)])
            JR.lset(f, :openGLImageColorMultipleList, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :openGLImageColorMultipleList), :jm_add, [JR.get(JR.lget(f, :openGLFeatureFactory), :IMAGE_COLOR_DEPTH_4444)])
            JR.call(JR.lget(f, :openGLImageColorMultipleList), :jm_add, [JR.get(JR.lget(f, :openGLFeatureFactory), :IMAGE_COLOR_DEPTH_8888)])
            JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_add, ["OpenGL Image Color RGBA", JR.lget(f, :openGLImageColorMultipleList)])
        end
    end)
  end
end


