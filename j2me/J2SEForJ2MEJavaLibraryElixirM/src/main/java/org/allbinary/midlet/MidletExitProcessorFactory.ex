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
# package org.allbinary.midlet

defmodule MidletExitProcessorFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MidletExitProcessorFactory.jnew() end)
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
        throw({:jreturn, MidletExitProcessorFactory.jstatic_instance()})
    end)
  end


  def jm_getExitInstance(this, p_midlet) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midlet, p_midlet)
        if (AppletUtil.jm_isAppletLoader(JR.lget(f, :midlet)) || J2MEUtil.jm_isJ2ME()) do
            throw({:jreturn, Processor.jm_getInstance()})
        else
            throw({:jreturn, MidletExitProcessor.jnew(JR.lget(f, :midlet))})
        end
    end)
  end
end


