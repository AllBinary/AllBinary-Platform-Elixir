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

defmodule GroupFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GroupFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :NULL_GROUP_ARRAY, nil)
    JR.put(this, :list, nil)
    JR.put(this, :index, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :NULL_GROUP_ARRAY, JR.anew(0, nil))
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :index, 0)
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
        throw({:jreturn, GroupFactory.jstatic_instance()})
    end)
  end


  def jm_getNextGroup(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :group, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.get(this, :index)))
        JR.postinc(this, :index, 1)
        throw({:jreturn, JR.lget(f, :group)})
    end)
  end


  def jm_getNextGroupByName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.lset(f, :group, JR.call(this, :jm_getNextGroup, []))
        JR.call(JR.lget(f, :group), :jm_setName, [JR.lget(f, :name)])
        throw({:jreturn, JR.lget(f, :group)})
    end)
  end


  def jm_init(this, p_groups, p_nameArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groups, p_groups)
      JR.lset(f, :nameArray, p_nameArray)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.lset(f, :TEAM, "Team ")
        JR.call(JR.get(this, :list), :jm_clear, [])
        JR.put(this, :index, 0)
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :name, nil)
        JR.jwhile(fn -> (JR.lget(f, :size) < JR.int32(JR.lget(f, :groups))) end, fn ->
            JR.lset(f, :name, JR.get(JR.lget(f, :stringUtil), :EMPTY_STRING))
            if (JR.lget(f, :size) < JR.alength(JR.lget(f, :nameArray))) do
                JR.lset(f, :name, JR.aget(JR.lget(f, :nameArray), JR.lget(f, :size)))
            else
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.lset(f, :name, JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :TEAM)]), :jm_appendint, [JR.lget(f, :size)]), :jm_toString, []))
            end
            JR.call(JR.get(this, :list), :jm_add, [Group.jnew(JR.lget(f, :name), JR.int16((JR.int32(JR.lget(f, :size) + 3))))])
            JR.lpostinc(f, :size, 1)
        end)
    end)
  end
end


