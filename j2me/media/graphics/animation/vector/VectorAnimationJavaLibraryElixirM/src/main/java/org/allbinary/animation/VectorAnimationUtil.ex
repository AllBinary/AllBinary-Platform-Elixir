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
# package org.allbinary.animation

defmodule VectorAnimationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> VectorAnimationUtil.jnew() end)
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
        throw({:jreturn, VectorAnimationUtil.jstatic_instance()})
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


  def jm_toAnimationArrayFromListOfPointListWithPointsPerFrame(this, p_vector, p_pointsPerFrame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
      JR.lset(f, :pointsPerFrame, p_pointsPerFrame)
        JR.lset(f, :size, JR.call(JR.lget(f, :vector), :jm_size, []))
        JR.lset(f, :points, JR.anew_of(JR.lget(f, :size), fn -> JR.anew_of(JR.lget(f, :pointsPerFrame), fn -> JR.anew(2, 0) end) end))
        JR.lset(f, :nextBasicArrayList, nil)
        JR.lset(f, :framePoints, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextBasicArrayList, JR.aget(JR.get(JR.lget(f, :vector), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :framePoints, JR.call(this, :jm_toFrameArrayFromPointBasicArrayList, [JR.lget(f, :nextBasicArrayList)]))
            JR.lset(f, :pointIndex, 0)
            JR.jfor(fn -> (JR.lget(f, :pointIndex) < JR.alength(JR.lget(f, :framePoints))) end, fn -> JR.lpostinc(f, :pointIndex, 1) end, fn ->
                JR.aset(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :pointIndex)), 0, JR.aget(JR.aget(JR.lget(f, :framePoints), JR.lget(f, :pointIndex)), 0))
                JR.aset(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :pointIndex)), 1, JR.aget(JR.aget(JR.lget(f, :framePoints), JR.lget(f, :pointIndex)), 1))
            end)
        end)
        throw({:jreturn, JR.lget(f, :points)})
    end)
  end


  def jm_toAnimationArrayFromListOfPointList(this, p_vector) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
        JR.lset(f, :size, JR.call(JR.lget(f, :vector), :jm_size, []))
        JR.lset(f, :points, JR.anew_of(JR.lget(f, :size), fn -> JR.anew_of(0, fn -> JR.anew(0, 0) end) end))
        JR.lset(f, :nextBasicArrayList, nil)
        JR.lset(f, :framePoints, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextBasicArrayList, JR.aget(JR.get(JR.lget(f, :vector), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :framePoints, JR.call(this, :jm_toFrameArrayFromPointBasicArrayList, [JR.lget(f, :nextBasicArrayList)]))
            JR.aset(JR.lget(f, :points), JR.lget(f, :index), JR.anew_of(JR.alength(JR.lget(f, :framePoints)), fn -> JR.anew(2, 0) end))
            JR.lset(f, :pointIndex, 0)
            JR.jfor(fn -> (JR.lget(f, :pointIndex) < JR.alength(JR.lget(f, :framePoints))) end, fn -> JR.lpostinc(f, :pointIndex, 1) end, fn ->
                JR.aset(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :pointIndex)), 0, JR.aget(JR.aget(JR.lget(f, :framePoints), JR.lget(f, :pointIndex)), 0))
                JR.aset(JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), JR.lget(f, :pointIndex)), 1, JR.aget(JR.aget(JR.lget(f, :framePoints), JR.lget(f, :pointIndex)), 1))
            end)
        end)
        throw({:jreturn, JR.lget(f, :points)})
    end)
  end


  def jm_toFrameArrayFromPointBasicArrayList(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :points, JR.anew_of(JR.call(JR.lget(f, :list), :jm_size, []), fn -> JR.anew(2, 0) end))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextPoint, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.aset(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 0, JR.call(JR.lget(f, :nextPoint), :jm_getX, []))
            JR.aset(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 1, JR.call(JR.lget(f, :nextPoint), :jm_getY, []))
        end)
        throw({:jreturn, JR.lget(f, :points)})
    end)
  end
end


