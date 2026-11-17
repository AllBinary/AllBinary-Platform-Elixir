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
# package org.allbinary.game.input.event

defmodule DownGameKeyEventHandlerBase do
  def jsuper(), do: BasicEventHandler
def jstatic_TOTAL_LISTENERS(), do: JR.static_get(__MODULE__, :TOTAL_LISTENERS, fn -> " Total PlayerGameInput Listeners: " end)
  def jstatic_set_TOTAL_LISTENERS(value), do: JR.static_put(__MODULE__, :TOTAL_LISTENERS, value)
def jstatic_LISTENER_LABEL(), do: JR.static_get(__MODULE__, :LISTENER_LABEL, fn -> " PlayerGameInput Listener: " end)
  def jstatic_set_LISTENER_LABEL(value), do: JR.static_put(__MODULE__, :LISTENER_LABEL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
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


  def jm_addListener(this, p_playerGameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerGameInput, p_playerGameInput)
        if !JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :playerGameInput)]) do
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :playerGameInput)])
        end
    end)
  end


  def jm_removeAllListeners(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :list), :jm_clear, [])
        BasicEventHandler.jm_removeAllListeners(this)
    end)
  end


  def jm_removeListenerSingleThreaded(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :eventListenerInterface)])
        BasicEventHandler.jm_removeListenerSingleThreaded(this, JR.lget(f, :eventListenerInterface))
    end)
  end


  def jm_removeListener(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :eventListenerInterface)])
        BasicEventHandler.jm_removeListener(this, JR.lget(f, :eventListenerInterface))
    end)
  end


  def jm_fireEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        JR.lset(f, :index, JR.call(JR.get(this, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            try do
                JR.lset(f, :playerGameInput, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
                JR.call(JR.lget(f, :playerGameInput), :jm_onDownGameKeyEvent, [JR.lget(f, :eventObject)])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(EventStrings.jm_getInstance(), :FIRE_EVENT), JR.lget(f, :e)])
            end
        end)
        BasicEventHandler.jm_fireEvent(this, JR.lget(f, :eventObject))
    end)
  end


  def jm_process(this, p_eventObject, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.lset(f, :downGameKeyEventListenerInterface, JR.lget(f, :eventListenerInterface))
        JR.call(JR.lget(f, :downGameKeyEventListenerInterface), :jm_onDownGameKeyEvent, [JR.lget(f, :eventObject)])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [BasicEventHandler.jm_toString(this)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [DownGameKeyEventHandlerBase.jstatic_TOTAL_LISTENERS()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.get(this, :list), :jm_size, [])])
        JR.lset(f, :eventListenerInterface, nil)
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn ->
            try do
                JR.lset(f, :eventListenerInterface, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :index)]))
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [DownGameKeyEventHandlerBase.jstatic_LISTENER_LABEL()])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :eventListenerInterface), :jm_toString, [])])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :TOSTRING), JR.lget(f, :e)])
            end
            JR.lpostinc(f, :index, 1)
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


