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

defmodule RandomTranslation do
  def jsuper(), do: JObject

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


  def jm_getInstance(p_vector, p_howMuch) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
      JR.lset(f, :howMuch, p_howMuch)
        JR.lset(f, :myRandomFactory, MyRandomFactory.jm_getInstance())
        JR.lset(f, :x, -JR.call(JR.lget(f, :myRandomFactory), :jm_getNextInt, [JR.lget(f, :howMuch)]))
        JR.lset(f, :y, JR.call(JR.lget(f, :myRandomFactory), :jm_getNextInt, [JR.lget(f, :howMuch)]))
        JR.lset(f, :graphicsPipe, BasicGraphicsPipeline.jnew(JR.lget(f, :vector)))
        JR.call(JR.lget(f, :graphicsPipe), :jm_createMatrix, [])
        JR.call(JR.lget(f, :graphicsPipe), :jm_translate, [JR.lget(f, :x), JR.lget(f, :y)])
        throw({:jreturn, JR.call(JR.lget(f, :graphicsPipe), :jm_getMatrix, [])})
    end)
  end
end


