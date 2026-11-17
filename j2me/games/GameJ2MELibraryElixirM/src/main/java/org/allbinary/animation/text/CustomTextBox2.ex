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
# package org.allbinary.animation.text

defmodule CustomTextBox2 do
  def jsuper(), do: CustomTextBox

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_cmdListener, p_label, p_text, p_maxSize, p_constraints, p_font, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :label, p_label)
      JR.lset(f, :text, p_text)
      JR.lset(f, :maxSize, p_maxSize)
      JR.lset(f, :constraints, p_constraints)
      JR.lset(f, :font, p_font)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        CustomTextBox.jinit(this, JR.lget(f, :cmdListener), JR.lget(f, :label), JR.lget(f, :text), JR.lget(f, :maxSize), JR.lget(f, :constraints), JR.lget(f, :font), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        CustomTextBox2.jinitfields(this)
        JR.call(JR.call(this, :jm_getTextFieldItem, []), :jm_setFocus, [true])
    end)
  end

  def jnew(p_cmdListener, p_label, p_text, p_maxSize, p_constraints, p_font, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cmdListener, p_label, p_text, p_maxSize, p_constraints, p_font, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end
end


