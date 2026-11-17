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

defmodule CommonPhoneStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CommonPhoneStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :UP, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :ZERO, nil)
    JR.put(this, :ONE, nil)
    JR.put(this, :TWO, nil)
    JR.put(this, :THREE, nil)
    JR.put(this, :FOUR, nil)
    JR.put(this, :FIVE, nil)
    JR.put(this, :SIX, nil)
    JR.put(this, :SEVEN, nil)
    JR.put(this, :EIGHT, nil)
    JR.put(this, :NINE, nil)
    JR.put(this, :POUND, nil)
    JR.put(this, :STAR, nil)
    JR.put(this, :FIRE, nil)
        JR.put(this, :UP, "UP")
        JR.put(this, :DOWN, "DOWN")
        JR.put(this, :LEFT, "LEFT")
        JR.put(this, :RIGHT, "RIGHT")
        JR.put(this, :ZERO, "0")
        JR.put(this, :ONE, "1")
        JR.put(this, :TWO, "2")
        JR.put(this, :THREE, "3")
        JR.put(this, :FOUR, "4")
        JR.put(this, :FIVE, "5")
        JR.put(this, :SIX, "6")
        JR.put(this, :SEVEN, "7")
        JR.put(this, :EIGHT, "8")
        JR.put(this, :NINE, "9")
        JR.put(this, :POUND, "\#")
        JR.put(this, :STAR, "*")
        JR.put(this, :FIRE, "FIRE")
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
        throw({:jreturn, CommonPhoneStrings.jstatic_instance()})
    end)
  end
end


