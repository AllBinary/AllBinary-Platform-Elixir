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
# package org.allbinary.logic.string.tokens

defmodule Tokenizer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :sep, nil)
    JR.put(this, :endSep, nil)
        
        JR.put(this, :endSep, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_sep) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :sep, p_sep)
      JObject.jinit(this)
      jinitfields(this)
        if (JR.call(TsUtil.jm_getInstance(), :jm_compareTo, [JR.lget(f, :sep), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]) == 0) do
            throw({:jexception, JR.exception("Exception", "Sep provided is not valid")})
        end
        JR.put(this, :sep, JR.lget(f, :sep))
    end)
  end

  def jnew(p_sep) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_sep)
    this
  end


  def jm_setSep(this, p_sep) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sep, p_sep)
        JR.put(this, :sep, JR.lget(f, :sep))
    end)
  end


  def jm_setEndSep(this, p_endSep) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :endSep, p_endSep)
        JR.put(this, :endSep, JR.lget(f, :endSep))
    end)
  end


  def jm_getInsideSep(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        JR.lset(f, :tokenList, BasicArrayListD.jnew())
        JR.lset(f, :index, 0)
        JR.lset(f, :size, byte_size(JR.lget(f, :string)))
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn ->
            JR.lset(f, :index, JR.index_of(JR.lget(f, :string), JR.get(this, :sep)))
            if (JR.lget(f, :index) != -1) do
                JR.lset(f, :end, JR.index_of(JR.lget(f, :string), JR.get(this, :endSep)))
                if (JR.lget(f, :end) != -1) do
                    JR.call(JR.lget(f, :tokenList), :jm_add, [JR.substring(JR.lget(f, :string), JR.int32(JR.lget(f, :index) + byte_size(JR.get(this, :sep))), JR.int32(JR.lget(f, :end) - (JR.int32(byte_size(JR.get(this, :endSep)) - 1))))])
                    JR.lset(f, :index, JR.int32(JR.lget(f, :end) + byte_size(JR.get(this, :endSep))))
                else
                    nil
                end
            else
                throw(:jbreak)
            end
        end)
        throw({:jreturn, JR.lget(f, :tokenList)})
    end)
  end


  def jm_getTokensFromString(this, p_string, p_tokenVector) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
      JR.lset(f, :tokenVector, p_tokenVector)
        JR.lset(f, :index, 0)
        JR.lset(f, :end, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < byte_size(JR.lget(f, :string))) end, fn ->
            JR.lset(f, :end, JR.index_of(JR.lget(f, :string), JR.get(this, :sep)))
            if (JR.lget(f, :end) != -1) do
                JR.call(JR.lget(f, :tokenVector), :jm_add, [JR.substring(JR.lget(f, :string), JR.lget(f, :index), JR.lget(f, :end))])
                JR.lset(f, :index, JR.int32(JR.lget(f, :end) + byte_size(JR.get(this, :sep))))
            else
                JR.call(JR.lget(f, :tokenVector), :jm_add, [JR.substring(JR.lget(f, :string), JR.lget(f, :index), byte_size(JR.lget(f, :string)))])
                throw(:jbreak)
            end
        end)
        throw({:jreturn, JR.lget(f, :tokenVector)})
    end)
  end


  def jm_getTokens(this, p_stringVector) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringVector, p_stringVector)
        JR.lset(f, :tokenHashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.lset(f, :string, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.lset(f, :end, 0)
        JR.lset(f, :size, JR.call(JR.lget(f, :stringVector), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :string, JR.aget(JR.get(JR.lget(f, :stringVector), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :end, JR.index_of(JR.lget(f, :string), JR.get(this, :sep)))
            if (JR.lget(f, :end) >= 0) do
                JR.call(JR.lget(f, :tokenHashtable), :jm_put, [JR.substring(JR.lget(f, :string), 0, JR.lget(f, :end)), JR.substring(JR.lget(f, :string), JR.int32(JR.lget(f, :end) + 1), byte_size(JR.lget(f, :string)))])
            end
        end)
        throw({:jreturn, JR.lget(f, :tokenHashtable)})
    end)
  end
end


