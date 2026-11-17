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

defmodule TextFieldItemValidator do
  def jsuper(), do: ValidatorBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :textFieldItem, nil)
    JR.put(this, :min, 0)
    JR.put(this, :max, 0)
    JR.put(this, :allowOnEmpty, false)
        
        
        
        
    nil
  end


  def jinit(this, p_textFieldItem, p_min, p_max, p_allowOnEmpty) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :textFieldItem, p_textFieldItem)
      JR.lset(f, :min, p_min)
      JR.lset(f, :max, p_max)
      JR.lset(f, :allowOnEmpty, p_allowOnEmpty)
      ValidatorBase.jinit(this)
      jinitfields(this)
        JR.put(this, :textFieldItem, JR.lget(f, :textFieldItem))
        JR.put(this, :min, JR.lget(f, :min))
        JR.put(this, :max, JR.lget(f, :max))
        JR.put(this, :allowOnEmpty, JR.lget(f, :allowOnEmpty))
    end)
  end

  def jnew(p_textFieldItem, p_min, p_max, p_allowOnEmpty) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_textFieldItem, p_min, p_max, p_allowOnEmpty)
    this
  end


  def jm_isValid(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :booleanFactory, BooleanFactory.jm_getInstance())
        JR.lset(f, :result, JR.get(JR.lget(f, :booleanFactory), :TRUE))
        JR.lset(f, :string, JR.call(JR.get(this, :textFieldItem), :jm_getString, []))
        JR.lset(f, :textLength, byte_size(JR.lget(f, :string)))
        if ((((JR.lget(f, :textLength) == 0) && JR.get(this, :allowOnEmpty))) || ((JR.lget(f, :textLength) > JR.get(this, :min)) && (JR.lget(f, :textLength) < JR.get(this, :max)))) do
            nil
        else
            if (JR.lget(f, :textLength) < JR.get(this, :min)) do
                JR.lset(f, :result, JR.get(JR.lget(f, :booleanFactory), :FALSE))
            else
                if (JR.lget(f, :textLength) > JR.get(this, :max)) do
                JR.lset(f, :result, JR.get(JR.lget(f, :booleanFactory), :FALSE))
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
        if ((JR.lget(f, :textLength) > JR.get(this, :min)) && (JR.lget(f, :textLength) < JR.get(this, :max))) do
            nil
        else
            JR.lset(f, :label, JR.call(JR.get(this, :textFieldItem), :jm_getLabel, []))
            JR.lset(f, :name, JR.substring(JR.lget(f, :label), 0, JR.int32(byte_size(JR.lget(f, :label)) - 2)))
            if (JR.lget(f, :textLength) < JR.get(this, :min)) do
                JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is to short"]), :jm_toString, [])])
            else
                if (JR.lget(f, :textLength) > JR.get(this, :max)) do
                JR.call(JR.lget(f, :list), :jm_add, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :name)]), :jm_append, [" is to long"]), :jm_toString, [])])
            end
            end
        end
        throw({:jreturn, JR.lget(f, :list)})
    end)
  end
end


