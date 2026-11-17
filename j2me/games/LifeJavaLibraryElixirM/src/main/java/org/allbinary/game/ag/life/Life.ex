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
# package org.allbinary.game.ag.life

defmodule Life do
  def jsuper(), do: JObject
def jstatic_NO_LIFE(), do: JR.static_get(__MODULE__, :NO_LIFE, fn -> Life.jm_createLife() end)
  def jstatic_set_NO_LIFE(value), do: JR.static_put(__MODULE__, :NO_LIFE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :lives, 0)
    JR.put(this, :startLives, 0)
    JR.put(this, :maxlives, 0)
        
        
        
    nil
  end


  def jm_createLife() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        try do
            throw({:jreturn, Life.jnew(JR.int16(0), JR.int16(0))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
    end)
  end


  def jinit(this, p_lives, p_maxlives) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
      JR.lset(f, :maxlives, p_maxlives)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :maxlives, JR.lget(f, :maxlives))
        if (JR.lget(f, :lives) > JR.get(this, :maxlives)) do
            throw({:jexception, JR.exception("Exception", "To Many Lives")})
        end
        JR.put(this, :lives, JR.lget(f, :lives))
        JR.put(this, :startLives, JR.lget(f, :lives))
    end)
  end

  def jnew(p_lives, p_maxlives) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_lives, p_maxlives)
    this
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lives)})
    end)
  end


  def jm_set(this, p_lives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
        JR.put(this, :lives, JR.lget(f, :lives))
    end)
  end


  def jm_reset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :lives, JR.get(this, :startLives))
    end)
  end


  def jm_add(this, p_lives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
        if !JR.call(this, :jm_reachedLimit, []) do
            if (JR.int32(JR.get(this, :lives) + JR.lget(f, :lives)) <= JR.int32(JR.call(this, :jm_getMaxlives, []))) do
                JR.put(this, :lives, JR.int16((JR.int32(JR.get(this, :lives) + JR.lget(f, :lives)))))
            else
                JR.put(this, :lives, JR.call(this, :jm_getMaxlives, []))
            end
        end
    end)
  end


  def jm_isAlive(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.int32(JR.get(this, :lives)) <= 0) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end


  def jm_getMaxlives(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxlives)})
    end)
  end


  def jm_reachedLimit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if ((JR.get(this, :lives) > JR.get(this, :maxlives)) || (JR.int32(JR.get(this, :lives)) < 0)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_deaths(this, p_lives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
        if !JR.call(this, :jm_reachedLimit, []) do
            if (JR.int32(JR.get(this, :lives) - JR.lget(f, :lives)) >= 0) do
                JR.put(this, :lives, JR.int16((JR.int32(JR.get(this, :lives) - JR.lget(f, :lives)))))
            else
                JR.put(this, :lives, 0)
            end
        end
    end)
  end


  def jm_getStartLives(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startLives)})
    end)
  end


  def jm_setStartLives(this, p_startLives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :startLives, p_startLives)
        JR.put(this, :startLives, JR.lget(f, :startLives))
    end)
  end
end


