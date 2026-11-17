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
# package org.allbinary.vector

defmodule PointsUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PointsUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, PointsUtil.jstatic_instance()})
    end)
  end


  def jm_adjustXY(this, p_points, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :size, JR.alength(JR.lget(f, :points)))
        JR.lset(f, :newPoints, JR.anew_of(JR.lget(f, :size), fn -> JR.anew_of(0, fn -> JR.anew(0, 0) end) end))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :size2, JR.alength(JR.aget(JR.lget(f, :points), JR.lget(f, :index))))
            JR.aset(JR.lget(f, :newPoints), JR.lget(f, :index), JR.anew_of(JR.lget(f, :size2), fn -> JR.anew(2, 0) end))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                if (JR.aget(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :index2)), 0) != 1000) do
                    JR.aset(JR.aget(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index)), JR.lget(f, :index2)), 0, (JR.aget(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :index2)), 0) + JR.lget(f, :x)))
                    JR.aset(JR.aget(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index)), JR.lget(f, :index2)), 1, (JR.aget(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :index2)), 1) + JR.lget(f, :y)))
                else
                    JR.aset(JR.aget(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index)), JR.lget(f, :index2)), 0, 1000)
                    JR.aset(JR.aget(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index)), JR.lget(f, :index2)), 1, 1000)
                end
            end)
        end)
        throw({:jreturn, JR.lget(f, :newPoints)})
    end)
  end


  def jm_adjust(this, p_points, p_both) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JR.lset(f, :both, p_both)
        throw({:jreturn, JR.call(this, :jm_adjust, [JR.lget(f, :points), JR.lget(f, :both), JR.lget(f, :both)])})
    end)
  end


  def jm_adjust(this, p_points, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :newPoints, JR.anew_of(JR.alength(JR.lget(f, :points)), fn -> JR.anew(2, 0) end))
        JR.lset(f, :index2, 0)
        JR.jfor(fn -> (JR.lget(f, :index2) < JR.alength(JR.lget(f, :points))) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
            if (JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index2)), 0) != 1000) do
                JR.aset(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index2)), 0, (JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index2)), 0) + JR.lget(f, :x)))
                JR.aset(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index2)), 1, (JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index2)), 1) + JR.lget(f, :y)))
            else
                JR.aset(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index2)), 0, 1000)
                JR.aset(JR.aget(JR.lget(f, :newPoints), JR.lget(f, :index2)), 1, 1000)
            end
        end)
        throw({:jreturn, JR.lget(f, :newPoints)})
    end)
  end
end


