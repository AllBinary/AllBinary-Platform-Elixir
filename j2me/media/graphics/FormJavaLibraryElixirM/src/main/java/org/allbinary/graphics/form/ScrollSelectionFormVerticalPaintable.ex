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

defmodule ScrollSelectionFormVerticalPaintable do
  def jsuper(), do: ItemIndexPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :scrollSelectionForm, nil)
        
    nil
  end


  def jinit(this, p_scrollSelectionForm) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :scrollSelectionForm, p_scrollSelectionForm)
      ItemIndexPaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :scrollSelectionForm, JR.lget(f, :scrollSelectionForm))
    end)
  end

  def jnew(p_scrollSelectionForm) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_scrollSelectionForm)
    this
  end


  def jm_paint(this, p_graphics, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, JR.call(JR.get(this, :scrollSelectionForm), :jm_paintItemVertical, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :dx), JR.lget(f, :dy)])})
    end)
  end
end


