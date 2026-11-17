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

defmodule ExitRunnable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :midlet, nil)
    JR.put(this, :processor, nil)
    JR.put(this, :isProgress, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        
    nil
  end


  def jinit(this, p_midlet, p_processor, p_isProgress) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :midlet, p_midlet)
      JR.lset(f, :processor, p_processor)
      JR.lset(f, :isProgress, p_isProgress)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :midlet, JR.lget(f, :midlet))
        JR.put(this, :isProgress, JR.lget(f, :isProgress))
        JR.put(this, :processor, JR.lget(f, :processor))
    end)
  end

  def jnew(p_midlet, p_processor, p_isProgress) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_midlet, p_processor, p_isProgress)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.call(JR.get(this, :midlet), :jm_destroyAppInRunnable, [false, JR.get(this, :isProgress)])
            JR.call(JR.get(this, :midlet), :jm_setDisplay, [NullCanvas.jstatic_NULL_CANVAS()])
            JR.call(JR.get(this, :midlet), :jm_notifyDestroyed, [])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.call(JR.get(this, :processor), :jm_process, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
            try do
                JR.call(JR.get(this, :processor), :jm_process, [])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e2, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
            end
        end
    end)
  end
end


