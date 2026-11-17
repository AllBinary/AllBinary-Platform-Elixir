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

defmodule PersistanceStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PersistanceStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SAVING, nil)
    JR.put(this, :NUMBER_OF_RECORDS, nil)
    JR.put(this, :LOADING_ID, nil)
    JR.put(this, :LOAD_ALL, nil)
    JR.put(this, :DELETING_WITH_ID, nil)
    JR.put(this, :CLOSING_RECORDSTORE, nil)
    JR.put(this, :NOT_SAVING, nil)
    JR.put(this, :ERROR_LOADING, nil)
    JR.put(this, :ERROR_LOADING_ID, nil)
    JR.put(this, :ID, nil)
    JR.put(this, :GAME_ACTION_INPUT, nil)
        JR.put(this, :SAVING, "Saving: ")
        JR.put(this, :NUMBER_OF_RECORDS, "Number of records: ")
        JR.put(this, :LOADING_ID, "Loading data with id: ")
        JR.put(this, :LOAD_ALL, "loadAll")
        JR.put(this, :DELETING_WITH_ID, "Deleting data with id: ")
        JR.put(this, :CLOSING_RECORDSTORE, "Closing RecordStore")
        JR.put(this, :NOT_SAVING, "Not Saving: ")
        JR.put(this, :ERROR_LOADING, "Error Loading gameActionInput: ")
        JR.put(this, :ERROR_LOADING_ID, "Error Loading id: ")
        JR.put(this, :ID, " id: ")
        JR.put(this, :GAME_ACTION_INPUT, " GameActionInput: ")
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
        throw({:jreturn, PersistanceStrings.jstatic_instance()})
    end)
  end
end


