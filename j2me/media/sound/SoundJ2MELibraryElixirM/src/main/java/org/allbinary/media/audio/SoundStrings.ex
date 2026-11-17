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
# package org.allbinary.media.audio

defmodule SoundStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SoundStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :STOP_ALL, nil)
    JR.put(this, :CLOSE_ALL, nil)
    JR.put(this, :SOUND, nil)
    JR.put(this, :INIT_SOUND, nil)
    JR.put(this, :STOPPING_SOUND, nil)
    JR.put(this, :CLOSING_SOUND, nil)
        JR.put(this, :STOP_ALL, "stopAll")
        JR.put(this, :CLOSE_ALL, "closeAll")
        JR.put(this, :SOUND, " Sound: ")
        JR.put(this, :INIT_SOUND, "Initializing Sound: ")
        JR.put(this, :STOPPING_SOUND, "Stopping Sound: ")
        JR.put(this, :CLOSING_SOUND, "Closing Sound: ")
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
        throw({:jreturn, SoundStrings.jstatic_instance()})
    end)
  end
end


