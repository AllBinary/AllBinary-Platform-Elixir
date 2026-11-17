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
# package org.allbinary.canvas

defmodule CustomGameMenuUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_add(p_canvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        if AppletUtil.jm_isAppletLoader(JR.lget(f, :canvas)) do
            nil
        else
            if J2MEUtil.jm_isHTML() do
            nil
        else
            JR.call(JR.lget(f, :canvas), :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :EXIT_COMMAND)])
        end
        end
    end)
  end
end


