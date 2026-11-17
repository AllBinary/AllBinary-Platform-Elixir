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
# package org.allbinary.graphics.paint

defmodule PaintableComposite do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :paintableArray, nil)
        
    nil
  end


  def jinit(this, p_paintableArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :paintableArray, p_paintableArray)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :paintableArray, JR.lget(f, :paintableArray))
    end)
  end

  def jnew(p_paintableArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_paintableArray)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :paintableArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(JR.get(this, :paintableArray), JR.lget(f, :index)), :jm_paint, [JR.lget(f, :graphics)])
        end)
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :paintableArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(JR.get(this, :paintableArray), JR.lget(f, :index)), :jm_paintThreed, [JR.lget(f, :graphics)])
        end)
    end)
  end
end


