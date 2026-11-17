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

defmodule VectorMirrorGenerator do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> VectorMirrorGenerator.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :vectorAnimationUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :vectorAnimationUtil, VectorAnimationUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, VectorMirrorGenerator.jstatic_instance()})
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


  def jm_getInstance(this, p_points, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JR.lset(f, :width, p_width)
        try do
            JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
            JR.lset(f, :pointBasicArrayList, nil)
            JR.lset(f, :nextPoints, nil)
            JR.lset(f, :size2, 0)
            JR.lset(f, :size, JR.alength(JR.lget(f, :points)))
            JR.lset(f, :pointsBasicArrayList, BasicArrayListS.jnew(JR.lget(f, :size)))
            JR.lset(f, :frame, 0)
            JR.jfor(fn -> (JR.lget(f, :frame) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :frame, 1) end, fn ->
                JR.lset(f, :nextPoints, JR.aget(JR.lget(f, :points), JR.lget(f, :frame)))
                JR.lset(f, :size2, JR.alength(JR.lget(f, :nextPoints)))
                JR.lset(f, :pointBasicArrayList, BasicArrayListS.jnew(JR.lget(f, :size2)))
                JR.lset(f, :index, 0)
                JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                    JR.call(JR.lget(f, :pointBasicArrayList), :jm_add, [JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.aget(JR.aget(JR.lget(f, :nextPoints), JR.lget(f, :index)), 0), JR.aget(JR.aget(JR.lget(f, :nextPoints), JR.lget(f, :index)), 1)])])
                end)
                JR.call(JR.lget(f, :pointsBasicArrayList), :jm_add, [JR.lget(f, :pointBasicArrayList)])
            end)
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :points))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.call(JR.lget(f, :pointsBasicArrayList), :jm_add, [JR.call(this, :jm_getInstance, [JR.aget(JR.get(JR.lget(f, :pointsBasicArrayList), :objectArray), JR.lget(f, :index)), JR.lget(f, :width)])])
            end)
            JR.lset(f, :newPoints, JR.call(JR.get(this, :vectorAnimationUtil), :jm_toAnimationArrayFromListOfPointList, [JR.lget(f, :pointsBasicArrayList)]))
            throw({:jreturn, JR.lget(f, :newPoints)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
            throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY_ARRAY)})
        end
    end)
  end


  def jm_getInstance(this, p_pointBasicArrayList, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pointBasicArrayList, p_pointBasicArrayList)
      JR.lset(f, :width, p_width)
        JR.lset(f, :graphicsPipe, BasicGraphicsPipeline.jnew(JR.lget(f, :pointBasicArrayList)))
        JR.call(JR.lget(f, :graphicsPipe), :jm_createMatrix, [])
        JR.call(JR.lget(f, :graphicsPipe), :jm_mirror, [JR.lget(f, :width)])
        throw({:jreturn, JR.call(JR.lget(f, :graphicsPipe), :jm_getMatrix, [])})
    end)
  end
end


