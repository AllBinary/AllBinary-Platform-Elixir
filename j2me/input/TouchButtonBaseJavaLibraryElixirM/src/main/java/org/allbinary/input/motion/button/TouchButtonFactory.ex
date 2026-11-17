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
# package org.allbinary.input.motion.button

defmodule TouchButtonFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> TouchButtonFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :LIST, nil)
    JR.put(this, :list, nil)
    JR.put(this, :savedList, nil)
    JR.put(this, :saved, false)
        JR.put(this, :LIST, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
        JR.put(this, :list, JR.get(this, :LIST))
        JR.put(this, :savedList, JR.get(this, :LIST))
        JR.put(this, :saved, false)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TouchButtonFactory.jstatic_SINGLETON()})
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


  def jm_defaultList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :list, JR.get(this, :LIST))
        JR.call(this, :jm_toggle, [false, JR.get(this, :LIST)])
    end)
  end


  def jm_toggle(this, p_save, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :save, p_save)
      JR.lset(f, :list, p_list)
        if (JR.lget(f, :list) != JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, [])) do
            JR.put(this, :savedList, JR.lget(f, :list))
            if !JR.get(this, :saved) do
                JR.put(this, :list, JR.get(this, :savedList))
            end
        else
            if JR.lget(f, :save) do
                if !JR.get(this, :saved) do
                    JR.put(this, :saved, true)
                    JR.put(this, :savedList, JR.get(this, :list))
                    JR.put(this, :list, JR.get(this, :LIST))
                else
                    nil
                end
            else
                JR.put(this, :list, JR.get(this, :savedList))
                JR.put(this, :saved, false)
            end
        end
    end)
  end


  def jm_setList(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        if (JR.lget(f, :list) == nil) do
            throw({:jexception, JR.exception("Exception", "Null List")})
        end
        JR.put(this, :list, JR.lget(f, :list))
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :list)})
    end)
  end
end


