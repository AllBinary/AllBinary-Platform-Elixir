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
# package org.allbinary.game.paint

defmodule MainGameDemoStatePaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ownershipPaintableInterface, nil)
    JR.put(this, :menuPaintableInterface, nil)
        
        
    nil
  end


  def jinit(this, p_ownershipPaintableInterface, p_menuPaintableInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownershipPaintableInterface, p_ownershipPaintableInterface)
      JR.lset(f, :menuPaintableInterface, p_menuPaintableInterface)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :ownershipPaintableInterface, JR.lget(f, :ownershipPaintableInterface))
        JR.put(this, :menuPaintableInterface, JR.lget(f, :menuPaintableInterface))
    end)
  end

  def jnew(p_ownershipPaintableInterface, p_menuPaintableInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownershipPaintableInterface, p_menuPaintableInterface)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :menuPaintableInterface), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :ownershipPaintableInterface), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_getOwnershipPaintableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :ownershipPaintableInterface)})
    end)
  end


  def jm_getMenuPaintableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :menuPaintableInterface)})
    end)
  end
end


