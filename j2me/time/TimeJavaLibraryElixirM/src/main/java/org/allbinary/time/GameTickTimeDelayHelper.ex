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
# package org.allbinary.time

defmodule GameTickTimeDelayHelper do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeDelta, 0)
    JR.put(this, :startTime, 0)
    JR.put(this, :lastStartTime, 0)
        JR.put(this, :timeDelta, 0)
        
        
    nil
  end


  def jinit(this, p_startTime) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :startTime, p_startTime)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :startTime, JR.lget(f, :startTime))
        JR.put(this, :lastStartTime, 0)
    end)
  end

  def jnew(p_startTime) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_startTime)
    this
  end


  def jm_setStartTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :startTime, :os.system_time(:millisecond))
        throw({:jreturn, JR.get(this, :startTime)})
    end)
  end


  def jm_loop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :lastStartTime) == J.Long.jstatic_MIN_VALUE()) do
            JR.put(this, :timeDelta, 0)
        else
            JR.put(this, :timeDelta, JR.int64(:os.system_time(:millisecond) - JR.get(this, :lastStartTime)))
        end
    end)
  end


  def jm_getTimeFromStart(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int64(JR.get(this, :startTime) - JR.get(this, :lastStartTime))})
    end)
  end
end


