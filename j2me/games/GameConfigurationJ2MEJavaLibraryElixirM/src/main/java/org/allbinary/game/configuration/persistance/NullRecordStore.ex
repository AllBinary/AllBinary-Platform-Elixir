# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.configuration.persistance

defmodule NullRecordStore do
  def jsuper(), do: RecordStore
def jstatic_NULL_RECORD_STORE(), do: JR.static_get(__MODULE__, :NULL_RECORD_STORE, fn -> NullRecordStore.jnew() end)
  def jstatic_set_NULL_RECORD_STORE(value), do: JR.static_put(__MODULE__, :NULL_RECORD_STORE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    RecordStore.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


