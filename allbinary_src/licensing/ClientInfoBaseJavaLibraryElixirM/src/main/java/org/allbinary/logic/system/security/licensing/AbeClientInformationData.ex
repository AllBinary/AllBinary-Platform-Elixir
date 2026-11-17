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
# package org.allbinary.logic.system.security.licensing

defmodule AbeClientInformationData do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AbeClientInformationData.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :KEY, nil)
    JR.put(this, :NAME, nil)
    JR.put(this, :VERSION, nil)
    JR.put(this, :SPECIALNAME, nil)
    JR.put(this, :LICENSEID, nil)
    JR.put(this, :LICENSE_TYPE, nil)
    JR.put(this, :PREVIOUSLICENSEID, nil)
    JR.put(this, :OSNAME, nil)
    JR.put(this, :OSARCH, nil)
    JR.put(this, :OSVERSION, nil)
    JR.put(this, :OS, nil)
    JR.put(this, :HARDWARE, nil)
    JR.put(this, :LICENSESERVERS, nil)
    JR.put(this, :NEWLICENSE, nil)
    JR.put(this, :ISNEW, nil)
    JR.put(this, :SPECIAL, nil)
        JR.put(this, :KEY, "KEY")
        JR.put(this, :NAME, "NAME")
        JR.put(this, :VERSION, "VERSION")
        JR.put(this, :SPECIALNAME, "SPECIALNAME")
        JR.put(this, :LICENSEID, "LICENSEID")
        JR.put(this, :LICENSE_TYPE, "LICENSETYPE")
        JR.put(this, :PREVIOUSLICENSEID, "PREVIOUSLICENSEID")
        JR.put(this, :OSNAME, "OSNAME")
        JR.put(this, :OSARCH, "OSARCH")
        JR.put(this, :OSVERSION, "OSVERSION")
        JR.put(this, :OS, "OS")
        JR.put(this, :HARDWARE, "HARDWARE")
        JR.put(this, :LICENSESERVERS, "LICENSESERVERS")
        JR.put(this, :NEWLICENSE, "NEWLICENSE")
        JR.put(this, :ISNEW, "ISNEW")
        JR.put(this, :SPECIAL, "SPECIAL")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AbeClientInformationData.jstatic_instance()})
    end)
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
end


