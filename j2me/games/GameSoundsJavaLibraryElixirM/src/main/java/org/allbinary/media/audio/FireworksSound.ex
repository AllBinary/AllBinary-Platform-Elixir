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
# package org.allbinary.media.audio

#Use 8hz16bitmono for most J2ME
defmodule FireworksSound do
  def jsuper(), do: CompositeSound
def jstatic_soundInterface(), do: JR.static_get(__MODULE__, :soundInterface, fn -> FireworksSound.jnew() end)
  def jstatic_set_soundInterface(value), do: JR.static_put(__MODULE__, :soundInterface, value)

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
        CompositeSound.jinit(this, "resource:/wav/fireworks.wav")
        FireworksSound.jinitfields(this)
    end)
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
        throw({:jreturn, FireworksSound.jstatic_soundInterface()})
    end)
  end
end


