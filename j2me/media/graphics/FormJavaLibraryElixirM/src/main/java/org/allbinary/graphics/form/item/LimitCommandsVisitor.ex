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
# package org.allbinary.graphics.form.item

defmodule LimitCommandsVisitor do
  def jsuper(), do: Visitor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :isNotSmallDisplay, false)
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Visitor.jinit(this)
      jinitfields(this)
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :isNotSmallDisplay, (((JR.call(JR.lget(f, :displayInfo), :jm_isPortrait, []) && (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) > JR.get(ScreenInfo.jm_getInstance(), :SMALL_WIDTH)))) || ((!JR.call(JR.lget(f, :displayInfo), :jm_isPortrait, []) && (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) > JR.get(ScreenInfo.jm_getInstance(), :SMALL_HEIGHT))))))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_visit(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.lset(f, :command, JR.lget(f, :anyType))
        JR.lset(f, :booleanFactory, BooleanFactory.jm_getInstance())
        if (((JR.get(this, :isNotSmallDisplay) || (JR.call(JR.lget(f, :command), :jm_getPriority, []) == 1)) || (JR.lget(f, :command) == JR.get(GameCommandsFactory.jm_getInstance(), :EXIT_COMMAND))) || (JR.lget(f, :command) == JR.get(GameCommandsFactory.jm_getInstance(), :EXIT_WITHOUT_PROGRESS_COMMAND))) do
            throw({:jreturn, JR.get(JR.lget(f, :booleanFactory), :TRUE)})
        else
            throw({:jreturn, JR.get(JR.lget(f, :booleanFactory), :FALSE)})
        end
    end)
  end
end


