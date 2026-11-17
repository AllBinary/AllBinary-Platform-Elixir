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
# package org.allbinary.string

defmodule CommonStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CommonStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EMPTY, nil)
    JR.put(this, :CREATE_IMAGE, nil)
    JR.put(this, :PLEASE_WAIT, nil)
    JR.put(this, :PLEASE_WAIT_FOR_SERVER, nil)
    JR.put(this, :PERIODS, nil)
    JR.put(this, :LOADING, nil)
    JR.put(this, :CONSTRUCTOR, nil)
    JR.put(this, :START, nil)
    JR.put(this, :END, nil)
    JR.put(this, :EXCEPTION, nil)
    JR.put(this, :EXCEPTION_LABEL, nil)
    JR.put(this, :CLEANUP, nil)
    JR.put(this, :INIT, nil)
    JR.put(this, :CLOSE, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :DIRECTION_NAME, nil)
    JR.put(this, :CREATE, nil)
    JR.put(this, :REMOVE, nil)
    JR.put(this, :UPDATE, nil)
    JR.put(this, :DELETE, nil)
    JR.put(this, :delete, nil)
    JR.put(this, :LOAD, nil)
    JR.put(this, :SAVE, nil)
    JR.put(this, :ADD, nil)
    JR.put(this, :DROP, nil)
    JR.put(this, :INSERT, nil)
    JR.put(this, :VISIT, nil)
    JR.put(this, :START_METHOD_NAME, nil)
    JR.put(this, :END_METHOD_NAME, nil)
    JR.put(this, :GET, nil)
    JR.put(this, :PROCESS, nil)
    JR.put(this, :GET_INSTANCE, nil)
    JR.put(this, :GET_LIST, nil)
    JR.put(this, :RUN, nil)
    JR.put(this, :START_RUNNABLE, nil)
    JR.put(this, :RUNNING, nil)
    JR.put(this, :END_RUNNABLE, nil)
    JR.put(this, :DISABLE, nil)
    JR.put(this, :ENABLE, nil)
    JR.put(this, :SUCCESS, nil)
    JR.put(this, :FAILURE, nil)
    JR.put(this, :NOT_IMPLEMENTED, nil)
    JR.put(this, :UNKNOWN, nil)
    JR.put(this, :ON_EVENT, nil)
    JR.put(this, :IS_VALID, nil)
    JR.put(this, :TOSTRING, nil)
    JR.put(this, :ADD_LISTENER, nil)
    JR.put(this, :REMOVE_LISTENER, nil)
    JR.put(this, :SIZE, nil)
        JR.put(this, :EMPTY, "Empty")
        JR.put(this, :CREATE_IMAGE, "createImage")
        JR.put(this, :PLEASE_WAIT, "Please Wait")
        JR.put(this, :PLEASE_WAIT_FOR_SERVER, "Please Wait Getting Data From Server...")
        JR.put(this, :PERIODS, "...")
        JR.put(this, :LOADING, "Loading...")
        JR.put(this, :CONSTRUCTOR, "Constructor")
        JR.put(this, :START, "Start")
        JR.put(this, :END, "End")
        JR.put(this, :EXCEPTION, "Exception")
        JR.put(this, :EXCEPTION_LABEL, "Exception: ")
        JR.put(this, :CLEANUP, "cleanup")
        JR.put(this, :INIT, "init")
        JR.put(this, :CLOSE, "close")
        JR.put(this, :UP, "up")
        JR.put(this, :DOWN, "down")
        JR.put(this, :LEFT, "left")
        JR.put(this, :RIGHT, "right")
        JR.put(this, :DIRECTION_NAME, JR.afrom([JR.get(this, :DOWN), JR.get(this, :LEFT), JR.get(this, :RIGHT), JR.get(this, :UP)]))
        JR.put(this, :CREATE, "Create")
        JR.put(this, :REMOVE, "Remove")
        JR.put(this, :UPDATE, "Update")
        JR.put(this, :DELETE, "Delete")
        JR.put(this, :delete, "delete")
        JR.put(this, :LOAD, "load")
        JR.put(this, :SAVE, "save")
        JR.put(this, :ADD, "Add")
        JR.put(this, :DROP, "Drop")
        JR.put(this, :INSERT, "Insert")
        JR.put(this, :VISIT, "visit")
        JR.put(this, :START_METHOD_NAME, JR.get(this, :START))
        JR.put(this, :END_METHOD_NAME, "end")
        JR.put(this, :GET, "get")
        JR.put(this, :PROCESS, "process")
        JR.put(this, :GET_INSTANCE, "getInstance")
        JR.put(this, :GET_LIST, "getList")
        JR.put(this, :RUN, "run")
        JR.put(this, :START_RUNNABLE, "Start Runnable")
        JR.put(this, :RUNNING, "Running")
        JR.put(this, :END_RUNNABLE, "End Runnable")
        JR.put(this, :DISABLE, "disable")
        JR.put(this, :ENABLE, "enable")
        JR.put(this, :SUCCESS, "Command Success")
        JR.put(this, :FAILURE, "Command Failed")
        JR.put(this, :NOT_IMPLEMENTED, "Not Implemented")
        JR.put(this, :UNKNOWN, "Unknown")
        JR.put(this, :ON_EVENT, "onEvent")
        JR.put(this, :IS_VALID, "isValid")
        JR.put(this, :TOSTRING, "toString")
        JR.put(this, :ADD_LISTENER, "addListener")
        JR.put(this, :REMOVE_LISTENER, "removeListener")
        JR.put(this, :SIZE, "size")
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
        throw({:jreturn, CommonStrings.jstatic_instance()})
    end)
  end
end


