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

defmodule CommonStateStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CommonStateStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :CONTEXT, nil)
    JR.put(this, :FINISH, nil)
    JR.put(this, :CREATE, nil)
    JR.put(this, :START, nil)
    JR.put(this, :RESTART, nil)
    JR.put(this, :RESUME, nil)
    JR.put(this, :PAUSE, nil)
    JR.put(this, :STOP, nil)
    JR.put(this, :DESTROY, nil)
    JR.put(this, :BIND, nil)
    JR.put(this, :ON_SAVE_INSTANCE_STATE, nil)
    JR.put(this, :ON_START_COMMAND, nil)
        JR.put(this, :CONTEXT, "Context: ")
        JR.put(this, :FINISH, "finish")
        JR.put(this, :CREATE, "onCreate")
        JR.put(this, :START, "onStart")
        JR.put(this, :RESTART, "onRestart")
        JR.put(this, :RESUME, "onResume")
        JR.put(this, :PAUSE, "onPause")
        JR.put(this, :STOP, "onStop")
        JR.put(this, :DESTROY, "onDestroy")
        JR.put(this, :BIND, "onBind")
        JR.put(this, :ON_SAVE_INSTANCE_STATE, "onSaveInstanceState")
        JR.put(this, :ON_START_COMMAND, "onStartCommand")
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
        throw({:jreturn, CommonStateStrings.jstatic_instance()})
    end)
  end
end


