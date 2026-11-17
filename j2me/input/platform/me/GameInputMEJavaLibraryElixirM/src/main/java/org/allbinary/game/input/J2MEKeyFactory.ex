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

defmodule J2MEKeyFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> J2MEKeyFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameKeyFactory, nil)
        JR.put(this, :gameKeyFactory, GameKeyFactory.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, J2MEKeyFactory.jstatic_instance()})
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


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameKeyArray, JR.afrom([JR.get(JR.get(this, :gameKeyFactory), :DOWN), JR.get(JR.get(this, :gameKeyFactory), :FIRE), JR.get(JR.get(this, :gameKeyFactory), :GAME_A), JR.get(JR.get(this, :gameKeyFactory), :GAME_B), JR.get(JR.get(this, :gameKeyFactory), :GAME_C), JR.get(JR.get(this, :gameKeyFactory), :GAME_D), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM0), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM1), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM2), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM3), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM4), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM5), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM6), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM7), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM8), JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM9), JR.get(JR.get(this, :gameKeyFactory), :KEY_POUND), JR.get(JR.get(this, :gameKeyFactory), :KEY_STAR), JR.get(JR.get(this, :gameKeyFactory), :LEFT), JR.get(JR.get(this, :gameKeyFactory), :LEVEL_DOWN), JR.get(JR.get(this, :gameKeyFactory), :LEVEL_UP), JR.get(JR.get(this, :gameKeyFactory), :NONE), JR.get(JR.get(this, :gameKeyFactory), :RIGHT), JR.get(JR.get(this, :gameKeyFactory), :UP)]))
        JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
        JR.lset(f, :index, JR.alength(JR.lget(f, :gameKeyArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(JR.lget(f, :inputFactory), :jm_add, [JR.call(JR.aget(JR.lget(f, :gameKeyArray), JR.lget(f, :index)), :jm_getId, []), JR.aget(JR.lget(f, :gameKeyArray), JR.lget(f, :index))])
        end)
    end)
  end


  def jm_isSubmission(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :FIRE)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isDelete(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :GAME_D)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isBackSpace(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, false})
    end)
  end


  def jm_isUp(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :UP)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isDown(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :DOWN)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isLeft(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :LEFT)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isRight(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :RIGHT)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isEnter(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(JR.get(this, :gameKeyFactory), :FIRE)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end
end


