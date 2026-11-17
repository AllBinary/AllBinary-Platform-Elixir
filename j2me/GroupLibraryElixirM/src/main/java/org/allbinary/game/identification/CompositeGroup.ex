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

defmodule CompositeGroup do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :groupInterface, nil)
    JR.put(this, :list, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jinit(this, p_groupInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :groupInterface, JR.lget(f, :groupInterface))
    end)
  end

  def jnew(p_groupInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_groupInterface)
    this
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :list), :jm_clear, [])
    end)
  end


  def jm_add(this, p_groupInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :groupCommonFactory, GroupCommonFactory.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :groupCommonFactory), :ADDING_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :groupInterface), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :groupCommonFactory), :TO_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :groupInterface)])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :ADD)])
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :groupInterface)])
    end)
  end


  def jm_isInGroup(this, p_groupInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
        if JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :groupInterface)]) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_getGroup(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :groupInterface)})
    end)
  end
end


