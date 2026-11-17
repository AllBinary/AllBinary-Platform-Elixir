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

defmodule J2MEGameKey do
  def jsuper(), do: Input

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_key, p_keyName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
      JR.lset(f, :keyName, p_keyName)
        Input.jinit(this, JR.lget(f, :key), JR.lget(f, :keyName))
        J2MEGameKey.jinitfields(this)
        JR.lset(f, :id, JR.call(this, :jm_getId, []))
        if (JR.lget(f, :id) >= 0) do
            JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
            JR.call(JR.lget(f, :inputFactory), :jm_add, [JR.lget(f, :id), this])
        end
    end)
  end

  def jnew(p_key, p_keyName) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_key, p_keyName)
    this
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["J2MEGameKey: "]), :jm_append, [Input.jm_toString(this)]), :jm_toString, [])})
    end)
  end


  def jm_getString(p_keyCode) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.lset(f, :input, JR.call(InputFactory.jm_getInstance(), :jm_getInstanceById, [JR.lget(f, :keyCode)]))
        if (JR.lget(f, :input) != nil) do
            throw({:jreturn, JR.call(JR.lget(f, :input), :jm_getName, [])})
        else
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end
end


