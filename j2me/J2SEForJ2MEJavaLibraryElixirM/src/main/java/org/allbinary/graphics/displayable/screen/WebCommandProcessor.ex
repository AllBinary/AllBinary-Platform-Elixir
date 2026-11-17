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
# package org.allbinary.graphics.displayable.screen

defmodule WebCommandProcessor do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> WebCommandProcessor.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :aboutCommandProcessor, nil)
    JR.put(this, :list, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :aboutCommandProcessor, AboutCommandProcessor.jm_getInstance())
        JR.put(this, :list, BasicArrayListD.jnew())
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
        throw({:jreturn, WebCommandProcessor.jstatic_instance()})
    end)
  end


  def jm_process(this, p_midletCommandListener, p_command, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midletCommandListener, p_midletCommandListener)
      JR.lset(f, :command, p_command)
      JR.lset(f, :canvas, p_canvas)
        try do
            if (Desktop.jm_isDesktopSupported() && JR.call(Desktop.jm_getDesktop(), :jm_isSupported, [JR.get(Desktop.jstatic_Action(), :BROWSE)])) do
                JR.call(Desktop.jm_getDesktop(), :jm_browse, [URI.jnew(JR.call(JR.get(this, :list), :jm_removeAt, [0]))])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :PROCESS), JR.lget(f, :e)])
        end
    end)
  end
end


