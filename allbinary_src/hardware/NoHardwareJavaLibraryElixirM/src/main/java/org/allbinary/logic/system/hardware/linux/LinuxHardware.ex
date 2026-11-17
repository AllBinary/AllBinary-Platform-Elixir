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
# package org.allbinary.logic.system.hardware.linux

defmodule LinuxHardware do
  def jsuper(), do: JObject

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


  def jm_getMultimedia(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getBridge(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getCpu(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getEthernet(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getFireWire(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getHardDriveController(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getHardDrive(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getMachineAccessControlAddress(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getMonitor(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getUsb(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getVideo(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getComponent(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_compareTo(this, p_hardwareInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hardwareInterface, p_hardwareInterface)
        throw({:jreturn, true})
    end)
  end


  def jm_difference(this, p_hardwareInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hardwareInterface, p_hardwareInterface)
        throw({:jreturn, JR.get(StdUtil.jm_getInstance(), :NULL_TABLE)})
    end)
  end


  def jm_isNextHardware(this, p_nextLine) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :nextLine, p_nextLine)
        throw({:jreturn, false})
    end)
  end
end


