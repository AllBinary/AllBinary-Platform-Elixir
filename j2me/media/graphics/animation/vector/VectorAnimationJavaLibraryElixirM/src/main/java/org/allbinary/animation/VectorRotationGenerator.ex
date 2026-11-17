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

defmodule VectorRotationGenerator do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> VectorRotationGenerator.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :vectorAnimationUtil, nil)
    JR.put(this, :angleFactory, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :vectorAnimationUtil, VectorAnimationUtil.jm_getInstance())
        JR.put(this, :angleFactory, AngleFactory.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, VectorRotationGenerator.jstatic_instance()})
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


  def jm_getInstance(this, p_vectorRotationInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vectorRotationInfo, p_vectorRotationInfo)
        throw({:jreturn, JR.call(this, :jm_getInstanceFrames, [JR.call(JR.lget(f, :vectorRotationInfo), :jm_getWidth, []), JR.call(JR.lget(f, :vectorRotationInfo), :jm_getHeight, []), JR.call(JR.lget(f, :vectorRotationInfo), :jm_getPoints, []), JR.call(JR.lget(f, :vectorRotationInfo), :jm_getTotalFrames, [])])})
    end)
  end


  def jm_getInstanceFrames(this, p_width, p_height, p_points, p_frames) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :points, p_points)
      JR.lset(f, :frames, p_frames)
        try do
            JR.lset(f, :totalAngle, JR.get(JR.get(this, :angleFactory), :TOTAL_ANGLE))
            JR.lset(f, :angleIncrement, div(JR.int32(JR.lget(f, :totalAngle)), JR.lget(f, :frames)))
            JR.lset(f, :pointsBasicArrayList, BasicArrayListS.jnew(div(JR.int32(JR.lget(f, :totalAngle)), JR.lget(f, :angleIncrement))))
            JR.lset(f, :pointBasicArrayList, BasicArrayListS.jnew(JR.alength(JR.lget(f, :points))))
            JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
            JR.lset(f, :size, JR.alength(JR.lget(f, :points)))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.call(JR.lget(f, :pointBasicArrayList), :jm_add, [JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 0), JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 1)])])
            end)
            JR.lset(f, :index, 0)
            JR.jwhile(fn -> (JR.lget(f, :index) < JR.int32(JR.lget(f, :totalAngle))) end, fn ->
                JR.call(JR.lget(f, :pointsBasicArrayList), :jm_add, [JR.call(this, :jm_getListAtAngle, [JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :pointBasicArrayList), JR.call(JR.get(this, :angleFactory), :jm_getAt, [JR.lget(f, :index)])])])
                JR.lset(f, :index, JR.int32(JR.lget(f, :index) + JR.lget(f, :angleIncrement)))
            end)
            JR.lset(f, :newPoints, JR.call(JR.get(this, :vectorAnimationUtil), :jm_toAnimationArrayFromListOfPointListWithPointsPerFrame, [JR.lget(f, :pointsBasicArrayList), JR.call(JR.lget(f, :pointBasicArrayList), :jm_size, [])]))
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


  def jm_getListAtAngle(this, p_width, p_height, p_pointBasicArrayList, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :pointBasicArrayList, p_pointBasicArrayList)
      JR.lset(f, :angle, p_angle)
        JR.lset(f, :graphicsPipe, BasicGraphicsPipeline.jnew(JR.lget(f, :pointBasicArrayList)))
        JR.call(JR.lget(f, :graphicsPipe), :jm_createMatrix, [])
        JR.call(JR.lget(f, :graphicsPipe), :jm_translate, [-(Bitwise.bsr(JR.lget(f, :width), 1)), -(Bitwise.bsr(JR.lget(f, :height), 1))])
        JR.call(JR.lget(f, :graphicsPipe), :jm_rotateToAngle, [JR.lget(f, :angle)])
        JR.call(JR.lget(f, :graphicsPipe), :jm_translate, [(Bitwise.bsr(JR.lget(f, :width), 1)), (Bitwise.bsr(JR.lget(f, :height), 1))])
        throw({:jreturn, JR.call(JR.lget(f, :graphicsPipe), :jm_getMatrix, [])})
    end)
  end
end


