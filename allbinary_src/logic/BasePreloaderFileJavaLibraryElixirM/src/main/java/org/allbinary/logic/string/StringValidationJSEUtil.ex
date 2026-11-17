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
# package org.allbinary.logic.string

defmodule StringValidationJSEUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
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


  def jm_isBlank(p_string) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        JR.lset(f, :len, byte_size(JR.lget(f, :string)))
        JR.lset(f, :i, 0)
        JR.jfor(fn -> (JR.lget(f, :i) < JR.lget(f, :len)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
            JR.lset(f, :c, JR.char_at(JR.lget(f, :string), JR.lget(f, :i)))
            if (J.Character.jm_isWhitespace(JR.lget(f, :c)) == false) do
                throw({:jreturn, false})
            end
        end)
        throw({:jreturn, true})
    end)
  end
end


