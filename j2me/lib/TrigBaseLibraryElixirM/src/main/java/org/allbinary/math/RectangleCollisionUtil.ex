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
# package org.allbinary.math

defmodule RectangleCollisionUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> RectangleCollisionUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, RectangleCollisionUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isCollision(this, p_rectX1, p_rectY1, p_rectX2, p_rectY2, p_rect2X1, p_rect2Y1, p_rect2X2, p_rect2Y2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectX1, p_rectX1)
      JR.lset(f, :rectY1, p_rectY1)
      JR.lset(f, :rectX2, p_rectX2)
      JR.lset(f, :rectY2, p_rectY2)
      JR.lset(f, :rect2X1, p_rect2X1)
      JR.lset(f, :rect2Y1, p_rect2Y1)
      JR.lset(f, :rect2X2, p_rect2X2)
      JR.lset(f, :rect2Y2, p_rect2Y2)
        if ((((JR.lget(f, :rect2X1) >= JR.lget(f, :rectX2)) || (JR.lget(f, :rect2Y1) >= JR.lget(f, :rectY2))) || (JR.lget(f, :rect2X2) <= JR.lget(f, :rectX1))) || (JR.lget(f, :rect2Y2) <= JR.lget(f, :rectY1))) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end


  def jm_isInside(this, p_rectX1, p_rectY1, p_rectX2, p_rectY2, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectX1, p_rectX1)
      JR.lset(f, :rectY1, p_rectY1)
      JR.lset(f, :rectX2, p_rectX2)
      JR.lset(f, :rectY2, p_rectY2)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        if ((((JR.lget(f, :x) >= JR.lget(f, :rectX2)) || (JR.lget(f, :y) >= JR.lget(f, :rectY2))) || (JR.lget(f, :x) <= JR.lget(f, :rectX1))) || (JR.lget(f, :y) <= JR.lget(f, :rectY1))) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end
end


