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
# package org.allbinary.graphics.form.item.validation

defmodule NumberTextFieldItemValidator do
  def jsuper(), do: ValidatorBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :textFieldItem, nil)
    JR.put(this, :min, 0)
    JR.put(this, :max, 0)
    JR.put(this, :maxChars, 0)
        
        
        
        
    nil
  end


  def jinit(this, p_textFieldItem, p_maxChars, p_min, p_max) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :textFieldItem, p_textFieldItem)
      JR.lset(f, :maxChars, p_maxChars)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
      ValidatorBase.jinit(this)
      jinitfields(this)
        JR.put(this, :textFieldItem, JR.lget(f, :textFieldItem))
        JR.put(this, :min, JR.lget(f, :min))
        JR.put(this, :max, JR.lget(f, :max))
        JR.put(this, :maxChars, JR.lget(f, :maxChars))
    end)
  end

  def jnew(p_textFieldItem, p_maxChars, p_min, p_max) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_textFieldItem, p_maxChars, p_min, p_max)
    this
  end


  def jm_isNumberValid(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, JR.get(BooleanFactory.jm_getInstance(), :TRUE)})
    end)
  end


  def jm_toNumberVector(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, BasicArrayListD.jnew()})
    end)
  end


  def jm_isValid(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :result, JR.get(BooleanFactory.jm_getInstance(), :TRUE))
        JR.lset(f, :string, JR.call(JR.get(this, :textFieldItem), :jm_getString, []))
        JR.lset(f, :textLength, byte_size(JR.lget(f, :string)))
        if ((JR.lget(f, :textLength) > 0) && (JR.lget(f, :textLength) < JR.get(this, :maxChars))) do
            try do
                String.to_integer(String.trim(JR.call(JR.get(this, :textFieldItem), :jm_getString, [])))
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.lset(f, :result, JR.get(BooleanFactory.jm_getInstance(), :FALSE))
            end
        else
            if (JR.lget(f, :textLength) < 1) do
                JR.lset(f, :result, JR.get(BooleanFactory.jm_getInstance(), :FALSE))
            else
                if (JR.lget(f, :textLength) > JR.get(this, :maxChars)) do
                JR.lset(f, :result, JR.get(BooleanFactory.jm_getInstance(), :FALSE))
            end
            end
        end
        throw({:jreturn, JR.lget(f, :result)})
    end)
  end


  def jm_toList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :list, BasicArrayListD.jnew())
        JR.lset(f, :string, JR.call(JR.get(this, :textFieldItem), :jm_getString, []))
        JR.lset(f, :textLength, byte_size(JR.lget(f, :string)))
        JR.lset(f, :label, JR.call(JR.get(this, :textFieldItem), :jm_getLabel, []))
        JR.lset(f, :name, JR.substring(JR.lget(f, :label), 0, JR.int32(byte_size(JR.lget(f, :label)) - 2)))
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.lset(f, :stringMaker, StringMaker.jnew())
        if ((JR.lget(f, :textLength) > 0) && (JR.lget(f, :textLength) < JR.get(this, :maxChars))) do
            try do
                JR.lset(f, :number, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_createInstance, [String.to_integer(String.trim(JR.call(JR.get(this, :textFieldItem), :jm_getString, [])))]))
                if (JR.call(JR.lget(f, :number), :jm_intValue, []) > JR.get(this, :min)) do
                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                    JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is to small"]), :jm_toString, [])])
                else
                    if (JR.call(JR.lget(f, :number), :jm_intValue, []) > JR.get(this, :max)) do
                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                    JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is to large"]), :jm_toString, [])])
                end
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is not a number"]), :jm_toString, [])])
            end
        else
            if (JR.lget(f, :textLength) < 1) do
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is to short"]), :jm_toString, [])])
            else
                if (JR.lget(f, :textLength) > JR.get(this, :maxChars)) do
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is to long"]), :jm_toString, [])])
            end
            end
        end
        throw({:jreturn, JR.lget(f, :list)})
    end)
  end
end


