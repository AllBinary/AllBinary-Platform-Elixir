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
# package org.allbinary.graphics.pipeline

defmodule BasicGraphicsPipeline do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :pointBasicArrayList, nil)
    JR.put(this, :noDecimalTrigTable, nil)
        
        JR.put(this, :noDecimalTrigTable, NoDecimalTrigTable.jm_getInstance())
    nil
  end


  def jinit(this, p_points) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :pointBasicArrayList, JR.lget(f, :points))
    end)
  end

  def jnew(p_points) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_points)
    this
  end


  def jm_setInitMatrix(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        JR.put(this, :pointBasicArrayList, JR.lget(f, :points))
    end)
  end


  def jm_createMatrix(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_translate(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :newBasicArrayList, BasicArrayListD.jnew())
        JR.lset(f, :size, JR.call(JR.get(this, :pointBasicArrayList), :jm_size, []))
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :secondPoint, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :secondPoint, JR.aget(JR.get(JR.get(this, :pointBasicArrayList), :objectArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :secondPoint), :jm_getX, []) != 1000) do
                JR.call(JR.lget(f, :newBasicArrayList), :jm_add, [JR.call(JR.lget(f, :pointFactory), :jm_createXY, [(JR.call(JR.lget(f, :secondPoint), :jm_getX, []) + JR.lget(f, :x)), (JR.call(JR.lget(f, :secondPoint), :jm_getY, []) + JR.lget(f, :y))])])
            else
                JR.call(JR.lget(f, :newBasicArrayList), :jm_add, [JR.lget(f, :secondPoint)])
            end
        end)
        JR.put(this, :pointBasicArrayList, JR.lget(f, :newBasicArrayList))
    end)
  end


  def jm_rotateToAngle(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.call(this, :jm_rotate, [JR.int32(JR.call(JR.lget(f, :angle), :jm_getValue, []))])
    end)
  end


  def jm_rotate(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.lset(f, :newBasicArrayList, BasicArrayListD.jnew())
        JR.lset(f, :secondPoint, nil)
        JR.lset(f, :y, 0)
        JR.lset(f, :secondX, 0)
        JR.lset(f, :secondY, 0)
        JR.lset(f, :point, nil)
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :size, JR.call(JR.get(this, :pointBasicArrayList), :jm_size, []))
        JR.lset(f, :sin, 0)
        JR.lset(f, :cos, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :secondPoint, JR.aget(JR.get(JR.get(this, :pointBasicArrayList), :objectArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :secondPoint), :jm_getX, []) != 1000) do
                JR.lset(f, :sin, JR.call(JR.get(this, :noDecimalTrigTable), :jm_sin, [JR.lget(f, :angle)]))
                JR.lset(f, :cos, JR.call(JR.get(this, :noDecimalTrigTable), :jm_cos, [JR.lget(f, :angle)]))
                JR.lset(f, :y, (JR.call(JR.lget(f, :secondPoint), :jm_getY, []) * JR.lget(f, :sin)))
                JR.lset(f, :secondX, (((JR.call(JR.lget(f, :secondPoint), :jm_getX, []) * JR.lget(f, :cos))) - JR.lget(f, :y)))
                JR.lset(f, :secondY, (((JR.call(JR.lget(f, :secondPoint), :jm_getX, []) * JR.lget(f, :sin))) + ((JR.call(JR.lget(f, :secondPoint), :jm_getY, []) * JR.lget(f, :cos)))))
                JR.lset(f, :point, JR.call(JR.lget(f, :pointFactory), :jm_createXY, [div(JR.int32(JR.lget(f, :secondX)), 10000), div(JR.int32(JR.lget(f, :secondY)), 10000)]))
                JR.call(JR.lget(f, :newBasicArrayList), :jm_add, [JR.lget(f, :point)])
            else
                JR.call(JR.lget(f, :newBasicArrayList), :jm_add, [JR.lget(f, :secondPoint)])
            end
        end)
        JR.put(this, :pointBasicArrayList, JR.lget(f, :newBasicArrayList))
    end)
  end


  def jm_mirror(this, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :halfWidth, (Bitwise.bsr(JR.lget(f, :width), 1)))
        JR.lset(f, :newBasicArrayList, BasicArrayListD.jnew())
        JR.lset(f, :secondPoint, nil)
        JR.lset(f, :newX, 0)
        JR.lset(f, :point, nil)
        JR.lset(f, :size, JR.call(JR.get(this, :pointBasicArrayList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :secondPoint, JR.aget(JR.get(JR.get(this, :pointBasicArrayList), :objectArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :secondPoint), :jm_getX, []) != 1000) do
                JR.lset(f, :newX, 0)
                if (JR.call(JR.lget(f, :secondPoint), :jm_getX, []) > JR.lget(f, :halfWidth)) do
                    JR.lset(f, :newX, (JR.lget(f, :halfWidth) - ((JR.call(JR.lget(f, :secondPoint), :jm_getX, []) - JR.lget(f, :halfWidth)))))
                else
                    JR.lset(f, :newX, (JR.lget(f, :halfWidth) + ((JR.lget(f, :halfWidth) - JR.call(JR.lget(f, :secondPoint), :jm_getX, [])))))
                end
                JR.lset(f, :point, JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :newX), JR.call(JR.lget(f, :secondPoint), :jm_getY, [])]))
                JR.call(JR.lget(f, :newBasicArrayList), :jm_add, [JR.lget(f, :point)])
            else
                JR.call(JR.lget(f, :newBasicArrayList), :jm_add, [JR.lget(f, :secondPoint)])
            end
        end)
        JR.put(this, :pointBasicArrayList, JR.lget(f, :newBasicArrayList))
    end)
  end


  def jm_getMatrix(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :pointBasicArrayList)})
    end)
  end
end


