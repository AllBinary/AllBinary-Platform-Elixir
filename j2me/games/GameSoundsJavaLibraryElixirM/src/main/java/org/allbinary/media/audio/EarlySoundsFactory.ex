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

defmodule EarlySoundsFactory do
  def jsuper(), do: BaseSoundsFactory
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> EarlySoundsFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    BaseSoundsFactory.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getSoundInterfaceArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :soundInterfaceArray, JR.anew(2, nil))
        JR.lset(f, :index, 0)
        JR.aset(JR.lget(f, :soundInterfaceArray), JR.lpostinc(f, :index, 1), SelectSound.jm_getInstance())
        JR.aset(JR.lget(f, :soundInterfaceArray), JR.lpostinc(f, :index, 1), ErrorSound.jm_getInstance())
        throw({:jreturn, JR.lget(f, :soundInterfaceArray)})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, EarlySoundsFactory.jstatic_instance()})
    end)
  end
end


