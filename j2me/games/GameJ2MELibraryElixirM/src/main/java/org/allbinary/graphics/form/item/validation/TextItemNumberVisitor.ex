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

defmodule TextItemNumberVisitor do
  def jsuper(), do: Visitor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Visitor.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_visit(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.lset(f, :value, JR.lget(f, :anyType))
        if (byte_size(JR.lget(f, :value)) < 2) do
            JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
            if JR.call(JR.lget(f, :stringValidationUtil), :jm_isNumber, [JR.lget(f, :value)]) do
                throw({:jreturn, JR.get(BooleanFactory.jm_getInstance(), :TRUE)})
            else
                try do
                    JR.call(TextNotificationUtil.jm_getInstance(), :jm_fireError, ["Numbers Only"])
                catch
                    {:jexception, jexception} ->
                        JR.lset(f, :e, jexception)
                    JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
                    JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :VISIT), JR.lget(f, :e)])
                end
                throw({:jreturn, JR.get(BooleanFactory.jm_getInstance(), :FALSE)})
            end
        else
            throw({:jreturn, JR.get(BooleanFactory.jm_getInstance(), :FALSE)})
        end
    end)
  end
end


