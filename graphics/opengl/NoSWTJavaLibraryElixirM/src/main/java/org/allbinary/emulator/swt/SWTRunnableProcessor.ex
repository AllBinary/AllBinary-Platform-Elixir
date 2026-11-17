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
# package org.allbinary.emulator.swt

defmodule SWTRunnableProcessor do
  def jsuper(), do: SWTProcessor
def jstatic_instanceR(), do: JR.static_get(__MODULE__, :instanceR, fn -> SWTRunnableProcessor.jnew() end)
  def jstatic_set_instanceR(value), do: JR.static_put(__MODULE__, :instanceR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    SWTProcessor.jinit(this)
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
        throw({:jreturn, SWTRunnableProcessor.jstatic_instanceR()})
    end)
  end


  def jm_process(this, p_display) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :display, p_display)
        nil
    end)
  end
end


