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
# package org.allbinary.midlet

#J2MEForJ2ME
defmodule ProgressMidlet do
  def jsuper(), do: AllBinaryMidlet

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :abeClientInformation, nil)
        
    nil
  end


  def jinit(this, p_clientInformationFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :clientInformationFactory, p_clientInformationFactory)
      AllBinaryMidlet.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_preInit, [])
        JR.put(this, :abeClientInformation, JR.call(JR.lget(f, :clientInformationFactory), :jm_getInstance, []))
    end)
  end

  def jnew(p_clientInformationFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_clientInformationFactory)
    this
  end


  def jm_preInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_exitProgress(this, p_isProgress) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isProgress, p_isProgress)
        JR.lset(f, :processor, JR.call(MidletExitProcessorFactory.jm_getInstance(), :jm_getExitInstance, [this]))
        try do
            JR.lset(f, :primaryThreadPool, PrimaryThreadPool.jm_getInstance())
            JR.lset(f, :runnable, ExitRunnable.jnew(this, JR.lget(f, :processor), JR.lget(f, :isProgress)))
            JR.call(JR.lget(f, :primaryThreadPool), :jm_runTask, [JR.lget(f, :runnable)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "exit", JR.lget(f, :e)])
            try do
                JR.call(JR.lget(f, :processor), :jm_process, [])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e2, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "exit", JR.lget(f, :e)])
            end
        end
    end)
  end
end


