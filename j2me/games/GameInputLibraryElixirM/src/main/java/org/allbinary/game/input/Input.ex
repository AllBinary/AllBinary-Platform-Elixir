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
# package org.allbinary.game.input

defmodule Input do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :id, 0)
    JR.put(this, :name, nil)
        JR.put(this, :id, 0)
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_id, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JR.lset(f, :name, p_name)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setId, [JR.lget(f, :id)])
        JR.call(this, :jm_setName, [JR.lget(f, :name)])
    end)
  end

  def jnew(p_id, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_id, p_name)
    this
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end


  def jm_setId(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        JR.put(this, :id, JR.lget(f, :key))
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


  def jm_setName(this, p_keyName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyName, p_keyName)
        JR.put(this, :name, JR.lget(f, :keyName))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Name: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Id: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getId, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


