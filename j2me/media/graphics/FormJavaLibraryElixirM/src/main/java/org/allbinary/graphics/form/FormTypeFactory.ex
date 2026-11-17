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

defmodule FormTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> FormTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :UNK, nil)
    JR.put(this, :NULL_FORM_TYPE, nil)
    JR.put(this, :TEMP_HORIZONTAL_FORM, nil)
    JR.put(this, :HORIZONTAL_FORM, nil)
    JR.put(this, :VERTICAL_CENTER_FORM, nil)
        JR.put(this, :UNK, "Unknown FormType")
        JR.put(this, :NULL_FORM_TYPE, FormType.jnew(JR.get(StringUtil.jm_getInstance(), :NULL_STRING)))
        JR.put(this, :TEMP_HORIZONTAL_FORM, FormType.jnew("TempHorizontal"))
        JR.put(this, :HORIZONTAL_FORM, FormType.jnew("Horizontal"))
        JR.put(this, :VERTICAL_CENTER_FORM, FormType.jnew("Vertical"))
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
        throw({:jreturn, FormTypeFactory.jstatic_instance()})
    end)
  end


  def jm_getFormType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :formType, nil)
        if JR.call(JR.lget(f, :displayInfo), :jm_isPortrait, []) do
            JR.lset(f, :formType, JR.get(this, :VERTICAL_CENTER_FORM))
        else
            JR.lset(f, :formType, JR.get(this, :HORIZONTAL_FORM))
        end
        throw({:jreturn, JR.lget(f, :formType)})
    end)
  end
end


