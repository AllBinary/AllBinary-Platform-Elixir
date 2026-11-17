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
# package org.allbinary.direction

defmodule Direction do
  def jsuper(), do: JObject
def jstatic_directionArray(), do: JR.static_get(__MODULE__, :directionArray, fn -> JR.anew(13, nil) end)
  def jstatic_set_directionArray(value), do: JR.static_put(__MODULE__, :directionArray, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :otherName, nil)
    JR.put(this, :value, 0)
    JR.put(this, :frameFactor, 0)
        
        
        
        
    nil
  end


  def jinit(this, p_name, p_otherName, p_value, p_frameFactor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :otherName, p_otherName)
      JR.lset(f, :value, p_value)
      JR.lset(f, :frameFactor, p_frameFactor)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :otherName, JR.lget(f, :otherName))
        JR.put(this, :value, JR.lget(f, :value))
        JR.put(this, :frameFactor, JR.lget(f, :frameFactor))
        JR.aset(Direction.jstatic_directionArray(), JR.lget(f, :value), this)
    end)
  end

  def jnew(p_name, p_otherName, p_value, p_frameFactor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_otherName, p_value, p_frameFactor)
    this
  end


  def jm_getInstance(p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
        throw({:jreturn, JR.aget(Direction.jstatic_directionArray(), JR.lget(f, :direction))})
    end)
  end


  def jm_getValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end


  def jm_getFrameFactor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :frameFactor)})
    end)
  end


  def jm_getOtherName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :otherName)})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Direction: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Or: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getOtherName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Value: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :value)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


