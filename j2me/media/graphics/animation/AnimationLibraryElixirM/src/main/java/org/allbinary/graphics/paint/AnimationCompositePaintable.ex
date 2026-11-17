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

defmodule AnimationCompositePaintable do
  def jsuper(), do: InitUpdatePaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
        
    nil
  end


  def jinit(this, p_animationInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      InitUpdatePaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
    end)
  end

  def jnew(p_animationInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), 0, 0])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), 0, 0, 0])
    end)
  end
end


