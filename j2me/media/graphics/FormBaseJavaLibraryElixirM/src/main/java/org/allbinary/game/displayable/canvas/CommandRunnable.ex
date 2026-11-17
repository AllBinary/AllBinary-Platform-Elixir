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
# package org.allbinary.game.displayable.canvas

defmodule CommandRunnable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :commandFormInputProcessor, nil)
    JR.put(this, :command, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_commandFormInputProcessor, p_command) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandFormInputProcessor, p_commandFormInputProcessor)
      JR.lset(f, :command, p_command)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :commandFormInputProcessor, JR.lget(f, :commandFormInputProcessor))
        JR.put(this, :command, JR.lget(f, :command))
    end)
  end

  def jnew(p_commandFormInputProcessor, p_command) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandFormInputProcessor, p_command)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.lset(f, :canvas, JR.call(JR.get(this, :commandFormInputProcessor), :jm_getCanvas, []))
            JR.lset(f, :commandListener, JR.call(JR.lget(f, :canvas), :jm_getCustomCommandListener, []))
            JR.call(JR.lget(f, :commandListener), :jm_commandAction, [JR.get(this, :command), JR.lget(f, :canvas)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end
end


