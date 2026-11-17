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
# package org.allbinary.data.tree.dom

defmodule DomData do
  def jsuper(), do: JObject
def jstatic_ID(), do: JR.static_get(__MODULE__, :ID, fn -> "id" end)
  def jstatic_set_ID(value), do: JR.static_put(__MODULE__, :ID, value)
def jstatic_CHILD(), do: JR.static_get(__MODULE__, :CHILD, fn -> "child" end)
  def jstatic_set_CHILD(value), do: JR.static_put(__MODULE__, :CHILD, value)
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "name" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)
def jstatic_VALUE(), do: JR.static_get(__MODULE__, :VALUE, fn -> "value" end)
  def jstatic_set_VALUE(value), do: JR.static_put(__MODULE__, :VALUE, value)
def jstatic_INDEX(), do: JR.static_get(__MODULE__, :INDEX, fn -> "index" end)
  def jstatic_set_INDEX(value), do: JR.static_put(__MODULE__, :INDEX, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


