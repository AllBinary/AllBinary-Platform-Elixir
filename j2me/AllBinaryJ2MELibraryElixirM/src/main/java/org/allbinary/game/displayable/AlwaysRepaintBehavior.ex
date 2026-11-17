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

defmodule AlwaysRepaintBehavior do
  def jsuper(), do: RepaintBehavior
def jstatic_instanceC(), do: JR.static_get(__MODULE__, :instanceC, fn -> AlwaysRepaintBehavior.jnew() end)
  def jstatic_set_instanceC(value), do: JR.static_put(__MODULE__, :instanceC, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NAME, nil)
        JR.put(this, :NAME, "AlwaysRepaintBehavior")
    nil
  end

  def jinit(this) do
    RepaintBehavior.jinit(this)
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
        throw({:jreturn, AlwaysRepaintBehavior.jstatic_instanceC()})
    end)
  end


  def jm_repaint(this, p_canvas) do
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


  def jm_onChangeRepaint(this, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        nil
    end)
  end
end


