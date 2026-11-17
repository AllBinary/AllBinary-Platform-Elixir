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

defmodule RandomRotationFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> RandomRotationFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :myRandomFactory, nil)
    JR.put(this, :angleFactory, nil)
        JR.put(this, :myRandomFactory, MyRandomFactory.jm_getInstance())
        JR.put(this, :angleFactory, AngleFactory.jm_getInstance())
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
        throw({:jreturn, RandomRotationFactory.jstatic_instance()})
    end)
  end


  def jm_getInstanceList(this, p_vector, p_howMuch) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
      JR.lset(f, :howMuch, p_howMuch)
        JR.lset(f, :graphicsPipe, BasicGraphicsPipeline.jnew(JR.lget(f, :vector)))
        JR.call(JR.lget(f, :graphicsPipe), :jm_createMatrix, [])
        JR.call(JR.lget(f, :graphicsPipe), :jm_rotateToAngle, [JR.call(JR.get(this, :angleFactory), :jm_getAt, [JR.call(this, :jm_getNextRandomAngle, [JR.lget(f, :howMuch)])])])
        throw({:jreturn, JR.call(JR.lget(f, :graphicsPipe), :jm_getMatrix, [])})
    end)
  end


  def jm_getNextRandomAngle(this, p_howMuch) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :howMuch, p_howMuch)
        throw({:jreturn, JR.call(JR.get(this, :myRandomFactory), :jm_getNextInt, [JR.int32(JR.lget(f, :howMuch) * 10)])})
    end)
  end
end


