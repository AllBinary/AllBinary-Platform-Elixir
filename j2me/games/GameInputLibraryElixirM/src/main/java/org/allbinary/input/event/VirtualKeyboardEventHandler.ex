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
# package org.allbinary.input.event

defmodule VirtualKeyboardEventHandler do
  def jsuper(), do: BasicEventHandler
def jstatic_gameKeyEventHandler(), do: JR.static_get(__MODULE__, :gameKeyEventHandler, fn -> VirtualKeyboardEventHandler.jnew() end)
  def jstatic_set_gameKeyEventHandler(value), do: JR.static_put(__MODULE__, :gameKeyEventHandler, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SHOW_EVENT, nil)
    JR.put(this, :HIDE_EVENT, nil)
        JR.put(this, :SHOW_EVENT, VirtualKeyboardEvent.jnew(JR.get(BooleanFactory.jm_getInstance(), :TRUE)))
        JR.put(this, :HIDE_EVENT, VirtualKeyboardEvent.jnew(JR.get(BooleanFactory.jm_getInstance(), :FALSE)))
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      BasicEventHandler.jinit(this)
      jinitfields(this)
        nil
    end)
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
        throw({:jreturn, VirtualKeyboardEventHandler.jstatic_gameKeyEventHandler()})
    end)
  end


  def jm_process(this, p_eventObject, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.lset(f, :virtualKeyboardEventListenerInterface, JR.lget(f, :eventListenerInterface))
        JR.call(JR.lget(f, :virtualKeyboardEventListenerInterface), :jm_onVirtualKeyboardEvent, [JR.lget(f, :eventObject)])
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            J.Thread.jm_sleep(120)
            JR.call(this, :jm_fireEvent, [JR.get(this, :SHOW_EVENT)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "open", JR.lget(f, :e)])
        end
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            J.Thread.jm_sleep(120)
            JR.call(this, :jm_fireEvent, [JR.get(this, :HIDE_EVENT)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :CLOSE), JR.lget(f, :e)])
        end
    end)
  end
end


