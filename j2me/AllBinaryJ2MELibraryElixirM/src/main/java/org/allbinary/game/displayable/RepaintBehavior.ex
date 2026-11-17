# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

defmodule RepaintBehavior do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> RepaintBehavior.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :NAME, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :NAME, "RepaintBehavior")
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, RepaintBehavior.jstatic_instance()})
    end)
  end


  def jm_repaint(this, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        nil
    end)
  end


  def jm_onChangeRepaint(this, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL)]) do
            JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_process, [])
        else
            JR.lset(f, :thread, J.Thread.jnew(RepaintRunnable.jnew(JR.lget(f, :canvas)), JR.get(this, :NAME)))
            JR.call(JR.lget(f, :thread), :jm_start, [])
        end
    end)
  end
end


