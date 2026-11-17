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
# package org.allbinary.logic.system.hardware.components

defmodule ComponentFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ComponentFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :VGA, nil)
    JR.put(this, :IDE, nil)
    JR.put(this, :SCSI, nil)
    JR.put(this, :BRIDGE, nil)
    JR.put(this, :ETHERNET, nil)
    JR.put(this, :USB, nil)
    JR.put(this, :MULTIMEDIA, nil)
    JR.put(this, :PCI, nil)
    JR.put(this, :RAID, nil)
    JR.put(this, :SMBUS, nil)
    JR.put(this, :PIC, nil)
    JR.put(this, :Class, nil)
    JR.put(this, :UNKNOWN, nil)
        JR.put(this, :VGA, Component.jnew("VGA"))
        JR.put(this, :IDE, Component.jnew("IDE"))
        JR.put(this, :SCSI, Component.jnew("SCSI"))
        JR.put(this, :BRIDGE, Component.jnew("bridge"))
        JR.put(this, :ETHERNET, Component.jnew("Ethernet"))
        JR.put(this, :USB, Component.jnew("USB"))
        JR.put(this, :MULTIMEDIA, Component.jnew("Multimedia"))
        JR.put(this, :PCI, Component.jnew("PCI"))
        JR.put(this, :RAID, Component.jnew("RAID"))
        JR.put(this, :SMBUS, Component.jnew("SMBus"))
        JR.put(this, :PIC, Component.jnew("PIC"))
        JR.put(this, :Class, Component.jnew("Class"))
        JR.put(this, :UNKNOWN, Component.jnew(JR.get(CommonStrings.jm_getInstance(), :UNKNOWN)))
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
        throw({:jreturn, ComponentFactory.jstatic_instance()})
    end)
  end
end


