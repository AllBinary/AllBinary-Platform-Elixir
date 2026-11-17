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
# package org.allbinary.logic.system.hardware

defmodule HardwareFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> HardwareFactory.jnew() end)
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
        throw({:jreturn, HardwareFactory.jstatic_instance()})
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


  def jm_getInstance(p_os) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :os, p_os)
        try do
            JR.lset(f, :operatingSystems, OperatingSystems.jm_getInstance())
            if (JR.call(JR.call(JR.lget(f, :os), :jm_getName, []), :jm_compareTo, [JR.get(JR.lget(f, :operatingSystems), :LINUX)]) == 0) do
                throw({:jreturn, LinuxHardware.jnew()})
            else
                if (JR.call(JR.call(JR.lget(f, :os), :jm_getName, []), :jm_indexOf, [JR.get(JR.lget(f, :operatingSystems), :WINDOWS)]) >= 0) do
                throw({:jreturn, WindowsHardware.jnew()})
            end
            end
            throw({:jexception, JR.exception("Exception", "No Hardware Imp for: " <> JR.call(JR.lget(f, :os), :jm_getName, []))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        end
    end)
  end
end


