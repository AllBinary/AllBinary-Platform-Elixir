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

defmodule FormPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :form, nil)
        
    nil
  end


  def jinit(this, p_form) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :form, p_form)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :form, JR.lget(f, :form))
    end)
  end

  def jnew(p_form) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_form)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :form), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_getForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :form)})
    end)
  end
end


