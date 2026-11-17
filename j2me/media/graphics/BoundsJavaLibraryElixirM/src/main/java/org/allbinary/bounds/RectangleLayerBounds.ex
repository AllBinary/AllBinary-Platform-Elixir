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
# package org.allbinary.bounds

defmodule RectangleLayerBounds do
  def jsuper(), do: LayerBounds

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_rectangle) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
        LayerBounds.jinit(this, JR.lget(f, :rectangle))
        RectangleLayerBounds.jinitfields(this)
    end)
  end

  def jnew(p_rectangle) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_rectangle)
    this
  end


  def jm_visit(this, p_boundsVisitorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :boundsVisitorInterface, p_boundsVisitorInterface)
        if (JR.call(JR.lget(f, :boundsVisitorInterface), :jm_getX, []) > JR.call(JR.get(this, :rectangle), :jm_getMaxX, [])) do
            JR.call(JR.lget(f, :boundsVisitorInterface), :jm_maxX, [])
        end
        if (JR.call(JR.lget(f, :boundsVisitorInterface), :jm_getY, []) > JR.call(JR.get(this, :rectangle), :jm_getMaxY, [])) do
            JR.call(JR.lget(f, :boundsVisitorInterface), :jm_maxY, [])
        end
        if (JR.call(JR.lget(f, :boundsVisitorInterface), :jm_getX, []) < JR.call(JR.call(JR.get(this, :rectangle), :jm_getPoint, []), :jm_getX, [])) do
            JR.call(JR.lget(f, :boundsVisitorInterface), :jm_minX, [])
        end
        if (JR.call(JR.lget(f, :boundsVisitorInterface), :jm_getY, []) < JR.call(JR.call(JR.get(this, :rectangle), :jm_getPoint, []), :jm_getY, [])) do
            JR.call(JR.lget(f, :boundsVisitorInterface), :jm_minY, [])
        end
    end)
  end
end


