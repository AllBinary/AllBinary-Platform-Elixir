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
# package org.allbinary.logic.util.event.handler

defmodule BasicEventHandler do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :eventStrings, nil)
    JR.put(this, :eventListenerInterfaceList, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :eventStrings, EventStrings.jm_getInstance())
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :eventListenerInterfaceList, BasicArrayListD.jnew())
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_removeAllListeners(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :eventListenerInterfaceList, BasicArrayListD.jnew())
    end)
  end


  def jm_addListeners(this, p_vector) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
        JR.lset(f, :eventListenerInterface, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :vector), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :eventListenerInterface, JR.call(JR.lget(f, :vector), :jm_get, [JR.lget(f, :index)]))
            JR.call(this, :jm_addListenerInterface, [JR.lget(f, :eventListenerInterface)])
        end)
    end)
  end


  def jm_removeListeners(this, p_vector) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
        JR.lset(f, :eventListenerInterface, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :vector), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :eventListenerInterface, JR.call(JR.lget(f, :vector), :jm_get, [JR.lget(f, :index)]))
            JR.call(this, :jm_removeListener, [JR.lget(f, :eventListenerInterface)])
        end)
    end)
  end


  def jm_addListenerSingleThreaded(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        if !JR.call(JR.get(this, :eventListenerInterfaceList), :jm_contains, [JR.lget(f, :eventListenerInterface)]) do
            JR.call(JR.get(this, :eventListenerInterfaceList), :jm_add, [JR.lget(f, :eventListenerInterface)])
        end
    end)
  end


  def jm_addListenerInterface(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        if !JR.call(JR.get(this, :eventListenerInterfaceList), :jm_contains, [JR.lget(f, :eventListenerInterface)]) do
            JR.call(JR.get(this, :eventListenerInterfaceList), :jm_add, [JR.lget(f, :eventListenerInterface)])
        end
    end)
  end


  def jm_removeListenerSingleThreaded(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :eventListenerInterfaceList), :jm_remove, [JR.lget(f, :eventListenerInterface)])
    end)
  end


  def jm_removeListener(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :eventListenerInterfaceList), :jm_remove, [JR.lget(f, :eventListenerInterface)])
    end)
  end


  def jm_fireEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        JR.lset(f, :eventListenerInterface, nil)
        JR.lset(f, :index, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.call(JR.get(this, :eventListenerInterfaceList), :jm_size, [])) end, fn ->
            try do
                JR.lset(f, :eventListenerInterface, JR.call(JR.get(this, :eventListenerInterfaceList), :jm_get, [JR.lget(f, :index)]))
                JR.call(this, :jm_process, [JR.lget(f, :eventObject), JR.lget(f, :eventListenerInterface)])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :eventStrings), :FIRE_EVENT), JR.lget(f, :e)])
            end
            JR.lpostinc(f, :index, 1)
        end)
    end)
  end


  def jm_process(this, p_eventObject, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.lget(f, :eventListenerInterface), :jm_onEvent, [JR.lget(f, :eventObject)])
    end)
  end


  def jm_getEventListenerInterfaceListP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :eventListenerInterfaceList)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :eventStrings), :TOTAL_LISTENERS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.get(this, :eventListenerInterfaceList), :jm_size, [])])
        JR.lset(f, :eventListenerInterface, nil)
        JR.lset(f, :index, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.call(JR.get(this, :eventListenerInterfaceList), :jm_size, [])) end, fn ->
            try do
                JR.lset(f, :eventListenerInterface, JR.call(JR.get(this, :eventListenerInterfaceList), :jm_get, [JR.lget(f, :index)]))
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :eventStrings), :LISTENER_LABEL)])
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


