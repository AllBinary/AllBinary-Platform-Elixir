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
# package org.allbinary.graphics

defmodule RelativeRelationship do
  def jsuper(), do: JObject
def jstatic_NULL_RELATIVE_RELATIONSHIP(), do: JR.static_get(__MODULE__, :NULL_RELATIVE_RELATIONSHIP, fn -> RelativeRelationship.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, [])) end)
  def jstatic_set_NULL_RELATIVE_RELATIONSHIP(value), do: JR.static_put(__MODULE__, :NULL_RELATIVE_RELATIONSHIP, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :typesAllowedList, nil)
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
    JR.put(this, :z, 0)
        
        
        
        
    nil
  end


  def jinit(this, p_point, p_typesAllowedList) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
      JR.lset(f, :typesAllowedList, p_typesAllowedList)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :x, JR.call(JR.lget(f, :point), :jm_getX, []))
        JR.put(this, :y, JR.call(JR.lget(f, :point), :jm_getY, []))
        JR.put(this, :z, JR.call(JR.lget(f, :point), :jm_getZ, []))
        JR.put(this, :typesAllowedList, JR.lget(f, :typesAllowedList))
    end)
  end

  def jnew(p_point, p_typesAllowedList) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_point, p_typesAllowedList)
    this
  end


  def jm_getX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :x)})
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :y)})
    end)
  end


  def jm_getZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :z)})
    end)
  end


  def jm_getTypesAllowedList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :typesAllowedList)})
    end)
  end


  def jm_setTypesAllowedList(this, p_typesAllowedList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :typesAllowedList, p_typesAllowedList)
        JR.put(this, :typesAllowedList, JR.lget(f, :typesAllowedList))
    end)
  end
end


