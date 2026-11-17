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
# package org.allbinary.logic.util.cache

defmodule KeylessBasicArrayListCache do
  def jsuper(), do: IndexedBasicArrayListCache

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :basicArrayListUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :basicArrayListUtil, BasicArrayListUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      IndexedBasicArrayListCache.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            if (JR.get(this, :index) >= JR.call(JR.get(this, :list), :jm_size, [])) do
                JR.call(this, :jm_addDefault, [])
            end
            JR.lset(f, :list, JR.call(this, :jm_getAt, [JR.postinc(this, :index, 1)]))
            throw({:jreturn, JR.lget(f, :list)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :GET), JR.lget(f, :e)])
            throw({:jreturn, JR.call(JR.get(this, :basicArrayListUtil), :jm_getImmutableInstance, [])})
        end
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        IndexedBasicArrayListCache.jm_clear(this)
        JR.lset(f, :basicArrayList, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :list), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :basicArrayList, (JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index))))
            JR.call(JR.lget(f, :basicArrayList), :jm_clear, [])
        end)
    end)
  end


  def jm_log(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["S: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.get(this, :list), :jm_size, [])])
        JR.lset(f, :S_LABEL, " s: ")
        JR.lset(f, :basicArrayList, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :list), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :S_LABEL)])
            JR.lset(f, :basicArrayList, (JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index))))
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.lget(f, :basicArrayList), :jm_size, [])])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


