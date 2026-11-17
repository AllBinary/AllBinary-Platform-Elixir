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

defmodule RectangleCollisionPointUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
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


  def jm_allPointsInside(p_rectX1, p_rectY1, p_rectX2, p_rectY2, p_list) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectX1, p_rectX1)
      JR.lset(f, :rectY1, p_rectY1)
      JR.lset(f, :rectX2, p_rectX2)
      JR.lset(f, :rectY2, p_rectY2)
      JR.lset(f, :list, p_list)
        JR.lset(f, :rectangleCollisionUtil, RectangleCollisionUtil.jm_getInstance())
        JR.lset(f, :point, nil)
        JR.lset(f, :index, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :point, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            if !JR.call(JR.lget(f, :rectangleCollisionUtil), :jm_isInside, [JR.lget(f, :rectX1), JR.lget(f, :rectY1), JR.lget(f, :rectX2), JR.lget(f, :rectY2), JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, [])]) do
                throw({:jreturn, false})
            end
        end)
        throw({:jreturn, true})
    end)
  end


  def jm_allPointsInsideCell(p_rectX1, p_rectY1, p_rectX2, p_rectY2, p_list, p_xCellSize, p_yCellSize) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectX1, p_rectX1)
      JR.lset(f, :rectY1, p_rectY1)
      JR.lset(f, :rectX2, p_rectX2)
      JR.lset(f, :rectY2, p_rectY2)
      JR.lset(f, :list, p_list)
      JR.lset(f, :xCellSize, p_xCellSize)
      JR.lset(f, :yCellSize, p_yCellSize)
        JR.lset(f, :rectangleCollisionUtil, RectangleCollisionUtil.jm_getInstance())
        JR.lset(f, :point, nil)
        JR.lset(f, :index, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :point, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            if !JR.call(JR.lget(f, :rectangleCollisionUtil), :jm_isInside, [JR.lget(f, :rectX1), JR.lget(f, :rectY1), JR.lget(f, :rectX2), JR.lget(f, :rectY2), (JR.call(JR.lget(f, :point), :jm_getX, []) * JR.lget(f, :xCellSize)), (JR.call(JR.lget(f, :point), :jm_getY, []) * JR.lget(f, :yCellSize))]) do
                throw({:jreturn, false})
            end
        end)
        throw({:jreturn, true})
    end)
  end
end


