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
# package org.allbinary.ag.weapon.media.audio

defmodule DropWeaponSound do
  def jsuper(), do: CompositeSound
def jstatic_soundInterface(), do: JR.static_get(__MODULE__, :soundInterface, fn -> DropWeaponSound.jnew() end)
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
        CompositeSound.jinit(this, "resource:/wav/mine.wav")
        DropWeaponSound.jinitfields(this)
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
        throw({:jreturn, DropWeaponSound.jstatic_soundInterface()})
    end)
  end
end


