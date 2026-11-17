# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.font

defmodule UpdateMyFontProcessor do
  def jsuper(), do: MyFontProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :updateMeasurementProcessor, nil)
        
    nil
  end


  def jinit(this, p_keyValueDrawCharArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :keyValueDrawCharArray, p_keyValueDrawCharArray)
      MyFontProcessor.jinit(this)
      jinitfields(this)
        JR.put(this, :updateMeasurementProcessor, JR.lget(f, :keyValueDrawCharArray))
    end)
  end

  def jnew(p_keyValueDrawCharArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_keyValueDrawCharArray)
    this
  end


  def jm_process(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :updateMeasurementProcessor), :jm_updateMeasurement, [JR.lget(f, :graphics)])
    end)
  end
end


