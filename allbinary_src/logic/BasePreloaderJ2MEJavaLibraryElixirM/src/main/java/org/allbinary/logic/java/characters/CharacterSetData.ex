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
# package org.allbinary.logic.java.characters

defmodule CharacterSetData do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CharacterSetData.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :US_ASCII, nil)
    JR.put(this, :ISO_8859_1, nil)
    JR.put(this, :UTF_8, nil)
    JR.put(this, :UTF_16, nil)
    JR.put(this, :UTF_16BE, nil)
    JR.put(this, :UTF_16LE, nil)
        JR.put(this, :US_ASCII, "US-ASCII")
        JR.put(this, :ISO_8859_1, "ISO-8859-1")
        JR.put(this, :UTF_8, "UTF-8")
        JR.put(this, :UTF_16, "UTF-16")
        JR.put(this, :UTF_16BE, "UTF-16BE")
        JR.put(this, :UTF_16LE, "UTF-16LE")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CharacterSetData.jstatic_instance()})
    end)
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


