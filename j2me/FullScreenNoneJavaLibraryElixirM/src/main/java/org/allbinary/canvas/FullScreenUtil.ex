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
# package org.allbinary.canvas

defmodule FullScreenUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> FullScreenUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, FullScreenUtil.jstatic_instance()})
    end)
  end


  def jm_initOnRun(this, p_fullScreenInterface, p_commandListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fullScreenInterface, p_fullScreenInterface)
      JR.lset(f, :commandListener, p_commandListener)
        if (JR.lget(f, :commandListener) != nil) do
            JR.call(this, :jm_init, [JR.lget(f, :fullScreenInterface)])
        end
    end)
  end


  def jm_init(this, p_fullScreenInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fullScreenInterface, p_fullScreenInterface)
        nil
    end)
  end


  def jm_isScreenChange(this, p_isFullScreen) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isFullScreen, p_isFullScreen)
        JR.lset(f, :mainFeatureFactory, MainFeatureFactory.jm_getInstance())
        JR.lset(f, :features, Features.jm_getInstance())
        if (JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :FULL_SCREEN)]) != JR.lget(f, :isFullScreen)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isScreenChangeCanvas(this, p_fullScreenInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fullScreenInterface, p_fullScreenInterface)
        throw({:jreturn, JR.call(this, :jm_isScreenChange, [false])})
    end)
  end
end


