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

defmodule CommandTextItem do
  def jsuper(), do: ABTextItem

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :command, nil)
        
    nil
  end


  def jinit(this, p_command, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
      JR.lset(f, :layout, p_layout)
      JR.lset(f, :altText, p_altText)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ABTextItem.jinit(this, JR.call(JR.lget(f, :command), :jm_getLabel, []), JR.lget(f, :layout), JR.lget(f, :altText), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        CommandTextItem.jinitfields(this)
        JR.put(this, :command, JR.lget(f, :command))
    end)
  end

  def jnew(p_command, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_command, p_layout, p_altText, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_isFocusable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_getCommand(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :command)})
    end)
  end
end


