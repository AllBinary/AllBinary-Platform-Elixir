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

defmodule CommonLabels do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CommonLabels.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :WIDTH_LABEL, nil)
    JR.put(this, :HEIGHT_LABEL, nil)
    JR.put(this, :END_LABEL, nil)
    JR.put(this, :TOTAL_LABEL, nil)
    JR.put(this, :INDEX_LABEL, nil)
    JR.put(this, :START_LABEL, nil)
    JR.put(this, :COMMAND_LABEL, nil)
    JR.put(this, :NAME_LABEL, nil)
    JR.put(this, :START, nil)
    JR.put(this, :ELAPSED, nil)
    JR.put(this, :CURRENT, nil)
    JR.put(this, :NEXT, nil)
    JR.put(this, :ITEM_LABEL, nil)
    JR.put(this, :RESULT_, nil)
    JR.put(this, :COLON_SEP, nil)
        JR.put(this, :WIDTH_LABEL, " Width: ")
        JR.put(this, :HEIGHT_LABEL, " Height: ")
        JR.put(this, :END_LABEL, "End: ")
        JR.put(this, :TOTAL_LABEL, "Total: ")
        JR.put(this, :INDEX_LABEL, "index: ")
        JR.put(this, :START_LABEL, "Start: ")
        JR.put(this, :COMMAND_LABEL, "Command: ")
        JR.put(this, :NAME_LABEL, "Name: ")
        JR.put(this, :START, JR.get(this, :START_LABEL))
        JR.put(this, :ELAPSED, " Elapsed: ")
        JR.put(this, :CURRENT, " Current: ")
        JR.put(this, :NEXT, "Next")
        JR.put(this, :ITEM_LABEL, "Item: ")
        JR.put(this, :RESULT_, "Result: ")
        JR.put(this, :COLON_SEP, ": ")
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
        throw({:jreturn, CommonLabels.jstatic_instance()})
    end)
  end
end


