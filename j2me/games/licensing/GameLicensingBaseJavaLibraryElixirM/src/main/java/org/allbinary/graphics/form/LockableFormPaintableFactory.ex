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

defmodule LockableFormPaintableFactory do
  def jsuper(), do: ItemPaintableFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :lockedIndex, 0)
        
    nil
  end


  def jinit(this, p_lockedIndex) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :lockedIndex, p_lockedIndex)
      ItemPaintableFactory.jinit(this)
      jinitfields(this)
        JR.put(this, :lockedIndex, JR.lget(f, :lockedIndex))
    end)
  end

  def jnew(p_lockedIndex) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_lockedIndex)
    this
  end


  def jm_getInstanceItemPaintable(this, p_paintableForm) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :paintableForm, p_paintableForm)
        throw({:jreturn, LockablePaintable.jnew(JR.get(this, :lockedIndex))})
    end)
  end
end


