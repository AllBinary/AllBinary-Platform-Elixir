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

defmodule GamePersistanceStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GamePersistanceStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SAVED_GAME_RECORD_ID, nil)
    JR.put(this, :SAVED_GAME_CONFIGURATION_RECORD_ID, nil)
    JR.put(this, :DEFAULT_INPUT_MAPPING_RECORD_ID, nil)
    JR.put(this, :SAVED_INPUT_CONFIGURATION_RECORD_ID, nil)
        JR.put(this, :SAVED_GAME_RECORD_ID, "_SG")
        JR.put(this, :SAVED_GAME_CONFIGURATION_RECORD_ID, "_SGC")
        JR.put(this, :DEFAULT_INPUT_MAPPING_RECORD_ID, "_DIM")
        JR.put(this, :SAVED_INPUT_CONFIGURATION_RECORD_ID, "_SIC")
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
        throw({:jreturn, GamePersistanceStrings.jstatic_instance()})
    end)
  end
end


