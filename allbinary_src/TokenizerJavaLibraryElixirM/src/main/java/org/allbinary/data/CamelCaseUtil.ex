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
# package org.allbinary.data

defmodule CamelCaseUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CamelCaseUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonSeps, nil)
        JR.put(this, :commonSeps, CommonSeps.jm_getInstance())
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
        throw({:jreturn, CamelCaseUtil.jstatic_instance()})
    end)
  end


  def jm_getAsCamelCase(this, p_string, p_stringBuilder) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
      JR.lset(f, :stringBuilder, p_stringBuilder)
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        JR.call(JR.lget(f, :stringBuilder), :jm_delete, [0, JR.call(JR.lget(f, :stringBuilder), :jm_length, [])])
        JR.lset(f, :list, BasicArrayListD.jnew())
        JR.lset(f, :tokenizer, Tokenizer.jnew(JR.get(JR.get(this, :commonSeps), :UNDERSCORE)))
        JR.call(JR.lget(f, :tokenizer), :jm_getTokensFromString, [JR.lget(f, :string), JR.lget(f, :list)])
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :word, nil)
        JR.lset(f, :i, 0)
        JR.jfor(fn -> (JR.lget(f, :i) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
            JR.lset(f, :word, JR.call(JR.lget(f, :list), :jm_get, [JR.lget(f, :i)]))
            JR.lset(f, :word, (if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :word)]), do: JR.lget(f, :word), else: JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_appendchar, [J.Character.jm_toUpperCase(JR.char_at(JR.lget(f, :word), 0))]), :jm_append, [String.downcase(JR.substring(JR.lget(f, :word), 1))]), :jm_toString, [])))
            JR.call(JR.lget(f, :stringBuilder), :jm_append, [JR.lget(f, :word)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuilder), :jm_toString, [])})
    end)
  end
end


