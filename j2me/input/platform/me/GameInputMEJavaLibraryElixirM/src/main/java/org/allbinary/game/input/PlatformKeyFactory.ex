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

defmodule PlatformKeyFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
        if (PlatformKeyFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            PlatformKeyFactory.jstatic_set_instance(PlatformKeyFactory.jnew())
        end
        throw({:jreturn, PlatformKeyFactory.jstatic_instance()})
    end)
  end


  def jm_getString(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        throw({:jreturn, J2MEGameKey.jm_getString(JR.lget(f, :keyCode))})
    end)
  end


  def jm_isSubmission(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isSubmission, [JR.lget(f, :input)])})
    end)
  end


  def jm_isDelete(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isDelete, [JR.lget(f, :input)])})
    end)
  end


  def jm_isBackSpace(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isBackSpace, [JR.lget(f, :input)])})
    end)
  end


  def jm_isLeft(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isLeft, [JR.lget(f, :input)])})
    end)
  end


  def jm_isRight(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isRight, [JR.lget(f, :input)])})
    end)
  end


  def jm_isUp(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isUp, [JR.lget(f, :input)])})
    end)
  end


  def jm_isDown(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isDown, [JR.lget(f, :input)])})
    end)
  end


  def jm_isEnter(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(J2MEKeyFactory.jm_getInstance(), :jm_isEnter, [JR.lget(f, :input)])})
    end)
  end
end


