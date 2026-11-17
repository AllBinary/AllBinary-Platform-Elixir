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
# package org.allbinary.bounds

defmodule LayerBounds do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :rectangle, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_rectangle) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
    end)
  end

  def jnew(p_rectangle) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_rectangle)
    this
  end


  def jm_getRectangleP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rectangle)})
    end)
  end


  def jm_visit(this, p_boundsVisitorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :boundsVisitorInterface, p_boundsVisitorInterface)
        nil
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onBoundsChangeEvent(this, p_boundsChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :boundsChangeEvent, p_boundsChangeEvent)
        JR.put(this, :rectangle, JR.call(JR.lget(f, :boundsChangeEvent), :jm_getRectangle, []))
    end)
  end
end


