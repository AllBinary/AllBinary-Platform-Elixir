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

defmodule VectorExplosionGenerator do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> VectorExplosionGenerator.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :RANDOM, nil)
    JR.put(this, :ROTATION, nil)
    JR.put(this, :vectorAnimationUtil, nil)
    JR.put(this, :randomRotationFactory, nil)
        JR.put(this, :RANDOM, VectorExplosionType.jnew())
        JR.put(this, :ROTATION, VectorExplosionType.jnew())
        JR.put(this, :vectorAnimationUtil, VectorAnimationUtil.jm_getInstance())
        JR.put(this, :randomRotationFactory, RandomRotationFactory.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, VectorExplosionGenerator.jstatic_instance()})
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


  def jm_createList(this, p_list, p_howMuch, p_type) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :howMuch, p_howMuch)
      JR.lset(f, :type, p_type)
        JR.lset(f, :point, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :points, JR.anew_of(JR.lget(f, :size), fn -> JR.anew(2, 0) end))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :point, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.aset(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 0, JR.call(JR.lget(f, :point), :jm_getX, []))
            JR.aset(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 1, JR.call(JR.lget(f, :point), :jm_getY, []))
        end)
        throw({:jreturn, JR.call(this, :jm_createListFromPoints, [JR.lget(f, :list), JR.lget(f, :points), JR.lget(f, :howMuch), JR.lget(f, :type)])})
    end)
  end


  def jm_getInstance(this, p_points, p_howMuch, p_type) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JR.lset(f, :howMuch, p_howMuch)
      JR.lset(f, :type, p_type)
        JR.lset(f, :pointsBasicArrayList, JR.call(this, :jm_getInstanceStartFrame, [JR.lget(f, :points), JR.lget(f, :howMuch), JR.lget(f, :type), true]))
        JR.lset(f, :tempBasicArrayList, JR.aget(JR.get(JR.lget(f, :pointsBasicArrayList), :objectArray), 0))
        JR.lset(f, :newPoints, JR.call(JR.get(this, :vectorAnimationUtil), :jm_toAnimationArrayFromListOfPointListWithPointsPerFrame, [JR.lget(f, :pointsBasicArrayList), JR.call(JR.lget(f, :tempBasicArrayList), :jm_size, [])]))
        throw({:jreturn, JR.lget(f, :newPoints)})
    end)
  end


  def jm_getInstanceStartFrame(this, p_points, p_howMuch, p_type, p_startFrame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JR.lset(f, :howMuch, p_howMuch)
      JR.lset(f, :type, p_type)
      JR.lset(f, :startFrame, p_startFrame)
        try do
            JR.lset(f, :pointsBasicArrayList, BasicArrayListS.jnew(JR.lget(f, :howMuch)))
            JR.call(JR.lget(f, :pointsBasicArrayList), :jm_add, [JR.call(this, :jm_createPointsBasicArrayList, [JR.lget(f, :points)])])
            JR.lset(f, :frameIndex, 0)
            JR.lset(f, :tempBasicArrayList, nil)
            JR.lset(f, :pointBasicArrayList, nil)
            JR.jwhile(fn -> (JR.lget(f, :frameIndex) < JR.lget(f, :howMuch)) end, fn ->
                JR.lset(f, :tempBasicArrayList, JR.aget(JR.get(JR.lget(f, :pointsBasicArrayList), :objectArray), JR.lget(f, :frameIndex)))
                JR.lset(f, :pointBasicArrayList, JR.call(this, :jm_createListFromPoints, [JR.lget(f, :tempBasicArrayList), JR.lget(f, :points), JR.lget(f, :howMuch), JR.lget(f, :type)]))
                JR.call(JR.lget(f, :pointsBasicArrayList), :jm_add, [JR.lget(f, :pointBasicArrayList)])
                JR.lpostinc(f, :frameIndex, 1)
            end)
            if !JR.lget(f, :startFrame) do
                JR.call(JR.lget(f, :pointsBasicArrayList), :jm_removeAt, [0])
            end
            throw({:jreturn, JR.lget(f, :pointsBasicArrayList)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        end
    end)
  end


  def jm_createListFromPoints(this, p_tempBasicArrayList, p_points, p_howMuch, p_type) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :tempBasicArrayList, p_tempBasicArrayList)
      JR.lset(f, :points, p_points)
      JR.lset(f, :howMuch, p_howMuch)
      JR.lset(f, :type, p_type)
        JR.lset(f, :index, 0)
        JR.lset(f, :pointBasicArrayList, BasicArrayListD.jnew())
        JR.lset(f, :sectionBasicArrayList, nil)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :points))) end, fn ->
            JR.lset(f, :sectionBasicArrayList, BasicArrayListD.jnew())
            JR.jwhile(fn -> (JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 0) != 1000) end, fn ->
                JR.call(JR.lget(f, :sectionBasicArrayList), :jm_add, [JR.aget(JR.get(JR.lget(f, :tempBasicArrayList), :objectArray), JR.lget(f, :index))])
                JR.lpostinc(f, :index, 1)
                if (JR.lget(f, :index) >= JR.alength(JR.lget(f, :points))) do
                    throw(:jbreak)
                end
            end)
            JR.lset(f, :sectionBasicArrayList, RandomTranslation.jm_getInstance(JR.lget(f, :sectionBasicArrayList), JR.lget(f, :howMuch)))
            if (JR.lget(f, :type) == JR.get(this, :ROTATION)) do
                JR.lset(f, :sectionBasicArrayList, JR.call(JR.get(this, :randomRotationFactory), :jm_getInstanceList, [JR.lget(f, :sectionBasicArrayList), JR.lget(f, :howMuch)]))
            end
            JR.lset(f, :size, JR.call(JR.lget(f, :sectionBasicArrayList), :jm_size, []))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.call(JR.lget(f, :pointBasicArrayList), :jm_add, [JR.aget(JR.get(JR.lget(f, :sectionBasicArrayList), :objectArray), JR.lget(f, :index2))])
            end)
            if (JR.lget(f, :index) >= JR.alength(JR.lget(f, :points))) do
                throw(:jbreak)
            else
                if (JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 0) == 1000) do
                JR.call(JR.lget(f, :pointBasicArrayList), :jm_add, [JR.aget(JR.get(JR.lget(f, :tempBasicArrayList), :objectArray), JR.lget(f, :index))])
                JR.lpostinc(f, :index, 1)
            end
            end
        end)
        throw({:jreturn, JR.lget(f, :pointBasicArrayList)})
    end)
  end


  def jm_createPointsBasicArrayList(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        if (JR.alength(JR.lget(f, :points)) == 0) do
            throw({:jexception, JR.exception("Exception", "Not Points Provided")})
        end
        JR.lset(f, :firstPointBasicArrayList, BasicArrayListS.jnew(JR.alength(JR.lget(f, :points))))
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :points))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :firstPointBasicArrayList), :jm_add, [JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 0), JR.aget(JR.aget(JR.lget(f, :points), JR.lget(f, :index)), 1)])])
        end)
        throw({:jreturn, JR.lget(f, :firstPointBasicArrayList)})
    end)
  end
end


