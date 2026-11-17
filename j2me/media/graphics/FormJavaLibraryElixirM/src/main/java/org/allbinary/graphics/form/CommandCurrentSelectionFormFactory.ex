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
# package org.allbinary.graphics.form

defmodule CommandCurrentSelectionFormFactory do
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


  def jm_getInstance(p_title, p_items, p_rectangle, p_formType, p_border, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :formType, p_formType)
      JR.lset(f, :border, p_border)
      JR.lset(f, :moveForSmallScreen, p_moveForSmallScreen)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(TouchFeatureFactory.jm_getInstance(), :TOUCH_ENABLED)]) do
            JR.lset(f, :scrollSelectionForm, CommandCurrentSelectionForm.jnew(JR.lget(f, :title), JR.lget(f, :items), JR.lget(f, :border), JR.lget(f, :moveForSmallScreen), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor)))
            JR.call(JR.lget(f, :scrollSelectionForm), :jm_init, [JR.lget(f, :rectangle), JR.lget(f, :formType)])
            throw({:jreturn, JR.lget(f, :scrollSelectionForm)})
        else
            throw({:jreturn, ScrollSelectionFormNoneFactory.jm_getInstance()})
        end
    end)
  end
end


