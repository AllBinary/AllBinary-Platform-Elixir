# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

defmodule NoSound do
  def jsuper(), do: Sound
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> NoSound.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NoSound.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        Sound.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        NoSound.jinitfields(this)
        JR.call(this, :jm_setPlayerP, [NoPlayer.jstatic_NO_PLAYER()])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


