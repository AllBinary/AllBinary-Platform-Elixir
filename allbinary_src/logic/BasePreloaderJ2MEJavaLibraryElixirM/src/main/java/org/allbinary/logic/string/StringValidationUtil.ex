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

defmodule StringValidationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> StringValidationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :stringUtil, nil)
    JR.put(this, :tsUtil, nil)
        JR.put(this, :stringUtil, StringUtil.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, StringValidationUtil.jstatic_instance()})
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


  def jm_containsSpaces(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        if (JR.index_of(JR.lget(f, :value), ?\s) >= 0) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isNumber(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.lset(f, :numberOfDecimalPoints, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < byte_size(JR.lget(f, :value))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :digit, JR.char_at(JR.lget(f, :value), JR.lget(f, :index)))
            if (!JR.call(this, :jm_isNumberFromChar, [JR.lget(f, :digit)]) && (JR.lget(f, :digit) != ?.)) do
                throw({:jreturn, false})
            end
            if (JR.lget(f, :digit) == ?.) do
                JR.lpostinc(f, :numberOfDecimalPoints, 1)
                if (JR.lget(f, :numberOfDecimalPoints) > 1) do
                    throw({:jreturn, false})
                end
            end
        end)
        throw({:jreturn, true})
    end)
  end


  def jm_isNumberFromChar(this, p_digit) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :digit, p_digit)
        if ((((((((((JR.lget(f, :digit) != ?0) && (JR.lget(f, :digit) != ?1)) && (JR.lget(f, :digit) != ?2)) && (JR.lget(f, :digit) != ?3)) && (JR.lget(f, :digit) != ?4)) && (JR.lget(f, :digit) != ?5)) && (JR.lget(f, :digit) != ?6)) && (JR.lget(f, :digit) != ?7)) && (JR.lget(f, :digit) != ?8)) && (JR.lget(f, :digit) != ?9)) do
            throw({:jreturn, false})
        end
        throw({:jreturn, true})
    end)
  end


  def jm_isValidRequired(this, p_value, p_min, p_max) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
        if ((byte_size(JR.lget(f, :value)) < JR.lget(f, :min)) || (byte_size(JR.lget(f, :value)) > JR.lget(f, :max))) do
            throw({:jreturn, false})
        end
        throw({:jreturn, true})
    end)
  end


  def jm_isValidRequiredNumber(this, p_value, p_min, p_max) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
        if ((JR.call(this, :jm_isEmpty, [JR.lget(f, :value)]) || (byte_size(JR.lget(f, :value)) < JR.lget(f, :min))) || (byte_size(JR.lget(f, :value)) > JR.lget(f, :max))) do
            throw({:jreturn, false})
        end
        if !JR.call(this, :jm_isNumber, [JR.lget(f, :value)]) do
            throw({:jreturn, false})
        end
        throw({:jreturn, true})
    end)
  end


  def jm_isValidNotRequired(this, p_value, p_min, p_max) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
        if (byte_size(JR.lget(f, :value)) > 0) do
            if ((byte_size(JR.lget(f, :value)) < JR.lget(f, :min)) || (byte_size(JR.lget(f, :value)) > JR.lget(f, :max))) do
                throw({:jreturn, false})
            end
        end
        throw({:jreturn, true})
    end)
  end


  def jm_isValidNotRequiredNumber(this, p_value, p_min, p_max) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
        if (byte_size(JR.lget(f, :value)) > 0) do
            if (((JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :value), JR.get(JR.get(this, :stringUtil), :NULL_STRING)]) == 0) || (byte_size(JR.lget(f, :value)) < JR.lget(f, :min))) || (byte_size(JR.lget(f, :value)) > JR.lget(f, :max))) do
                throw({:jreturn, false})
            end
            if !JR.call(this, :jm_isNumber, [JR.lget(f, :value)]) do
                throw({:jreturn, false})
            end
        end
        throw({:jreturn, true})
    end)
  end


  def jm_isEmpty(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        if ((JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :string), JR.get(JR.get(this, :stringUtil), :NULL_STRING)]) != 0) && (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :string), JR.get(JR.get(this, :stringUtil), :EMPTY_STRING)]) != 0)) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end
end


