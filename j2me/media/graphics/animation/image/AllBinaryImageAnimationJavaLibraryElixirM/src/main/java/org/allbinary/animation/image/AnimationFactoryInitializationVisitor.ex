# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.image

defmodule AnimationFactoryInitializationVisitor do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :originalDx, 0)
    JR.put(this, :originalDy, 0)
        JR.put(this, :width, 0)
        JR.put(this, :height, 0)
        JR.put(this, :dx, 0)
        JR.put(this, :dy, 0)
        JR.put(this, :originalDx, 0)
        JR.put(this, :originalDy, 0)
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


  def jm_visit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(PositionStrings.jm_getInstance(), :DX_LABEL)]), :jm_appendfloat, [(JR.get(this, :dx) * 1.0)])
        JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(PositionStrings.jm_getInstance(), :DY_LABEL)]), :jm_appendfloat, [(JR.get(this, :dy) * 1.0)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :WIDTH_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :width)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :height)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


