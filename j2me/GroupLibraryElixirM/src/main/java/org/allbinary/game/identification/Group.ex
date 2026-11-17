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
# package org.allbinary.game.identification

defmodule Group do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :teamId, 0)
    JR.put(this, :string, nil)
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        
        JR.put(this, :string, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_teamName, p_teamId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :teamName, p_teamName)
      JR.lset(f, :teamId, p_teamId)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :teamId, JR.lget(f, :teamId))
        JR.call(this, :jm_setName, [JR.lget(f, :teamName)])
    end)
  end

  def jnew(p_teamName, p_teamId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_teamName, p_teamId)
    this
  end


  def jm_getGroupName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_setName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.put(this, :name, JR.lget(f, :name))
        JR.lset(f, :groupCommonFactory, GroupCommonFactory.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :groupCommonFactory), :GROUP_NAME_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :name)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :groupCommonFactory), :ID_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendshort, [JR.get(this, :teamId)])
        JR.put(this, :string, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
    end)
  end


  def jm_getGroupId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :teamId)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :string)})
    end)
  end
end


