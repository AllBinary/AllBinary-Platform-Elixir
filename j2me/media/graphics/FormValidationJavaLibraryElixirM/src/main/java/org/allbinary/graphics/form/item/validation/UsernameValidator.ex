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
# package org.allbinary.graphics.form.item.validation

defmodule UsernameValidator do
  def jsuper(), do: TextFieldItemValidator

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_textFieldItem, p_min, p_max, p_allowOnEmpty) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :textFieldItem, p_textFieldItem)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
      JR.lset(f, :allowOnEmpty, p_allowOnEmpty)
        TextFieldItemValidator.jinit(this, JR.lget(f, :textFieldItem), JR.lget(f, :min), JR.lget(f, :max), JR.lget(f, :allowOnEmpty))
        UsernameValidator.jinitfields(this)
    end)
  end

  def jnew(p_textFieldItem, p_min, p_max, p_allowOnEmpty) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_textFieldItem, p_min, p_max, p_allowOnEmpty)
    this
  end
end


