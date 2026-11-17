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
# package org.allbinary.media.audio

defmodule PlayerQueue do
  def jsuper(), do: JObject
def jstatic_TOTAL(), do: JR.static_get(__MODULE__, :TOTAL, fn -> "Sounds In Queue: " end)
  def jstatic_set_TOTAL(value), do: JR.static_put(__MODULE__, :TOTAL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :list, nil)
    JR.put(this, :max, 0)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :list, BasicArrayListD.jnew())
        
    nil
  end


  def jinit(this, p_max) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :max, p_max)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :max, JR.lget(f, :max))
    end)
  end

  def jnew(p_max) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_max)
    this
  end


  def jm_add(this, p_sound) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sound, p_sound)
        try do
            if !JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :sound)]) do
                JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :sound)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_put(JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :ADD))
        end
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :sound, NoSound.jm_getInstance())
        try do
            JR.lset(f, :played, false)
            if (JR.call(JR.get(this, :list), :jm_size, []) > 0) do
                JR.lset(f, :sound, JR.call(JR.get(this, :list), :jm_removeAt, [0]))
                if (JR.lget(f, :sound) != nil) do
                    JR.call(JR.call(JR.lget(f, :sound), :jm_getPlayerP, []), :jm_start, [])
                end
                JR.jwhile(fn -> (JR.call(JR.get(this, :list), :jm_size, []) > JR.get(this, :max)) end, fn ->
                    JR.call(JR.get(this, :list), :jm_removeAt, [0])
                end)
                JR.lset(f, :played, true)
            end
            throw({:jreturn, JR.lget(f, :played)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :resource, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
            if (JR.lget(f, :sound) != nil) do
                JR.lset(f, :resource, JR.call(JR.lget(f, :sound), :jm_getResource, []))
            end
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :EXCEPTION_LABEL)]), :jm_append, [JR.lget(f, :resource)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :PROCESS))
            throw({:jreturn, false})
        end
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :list), :jm_clear, [])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [PlayerQueue.jstatic_TOTAL()]), :jm_appendint, [JR.call(JR.get(this, :list), :jm_size, [])]), :jm_toString, [])})
    end)
  end
end


