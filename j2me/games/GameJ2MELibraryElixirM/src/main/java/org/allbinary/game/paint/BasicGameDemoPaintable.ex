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

defmodule BasicGameDemoPaintable do
  def jsuper(), do: StatePaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :mainDemoStatePaintable, nil)
    JR.put(this, :ownershipPaintable, nil)
    JR.put(this, :helpPaintableInterface, nil)
    JR.put(this, :currentStatePaintable, nil)
        
        
        
        JR.put(this, :currentStatePaintable, NullPaintable.jm_getInstance())
    nil
  end


  def jinit(this, p_mainDemoStatePaintable, p_ownershipPaintable, p_helpPaintableInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :mainDemoStatePaintable, p_mainDemoStatePaintable)
      JR.lset(f, :ownershipPaintable, p_ownershipPaintable)
      JR.lset(f, :helpPaintableInterface, p_helpPaintableInterface)
      StatePaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :mainDemoStatePaintable, JR.lget(f, :mainDemoStatePaintable))
        JR.call(this, :jm_setCurrentStatePaintable, [NullPaintable.jm_getInstance()])
        JR.put(this, :ownershipPaintable, JR.lget(f, :ownershipPaintable))
        JR.put(this, :helpPaintableInterface, JR.lget(f, :helpPaintableInterface))
    end)
  end

  def jnew(p_mainDemoStatePaintable, p_ownershipPaintable, p_helpPaintableInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_mainDemoStatePaintable, p_ownershipPaintable, p_helpPaintableInterface)
    this
  end


  def jm_setState(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        if (JR.lget(f, :state) == 0) do
            JR.call(this, :jm_setCurrentStatePaintable, [JR.call(this, :jm_getMainDemoStatePaintable, [])])
        else
            if (JR.lget(f, :state) == 1) do
            JR.call(this, :jm_setCurrentStatePaintable, [JR.get(this, :helpPaintableInterface)])
        else
            JR.call(this, :jm_setCurrentStatePaintable, [JR.get(this, :ownershipPaintable)])
        end
        end
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.call(this, :jm_getCurrentStatePaintable, []), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_getHelpPaintableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :helpPaintableInterface)})
    end)
  end


  def jm_setCurrentStatePaintable(this, p_currentStatePaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentStatePaintable, p_currentStatePaintable)
        JR.put(this, :currentStatePaintable, JR.lget(f, :currentStatePaintable))
    end)
  end


  def jm_getCurrentStatePaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentStatePaintable)})
    end)
  end


  def jm_getMainDemoStatePaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :mainDemoStatePaintable)})
    end)
  end
end


