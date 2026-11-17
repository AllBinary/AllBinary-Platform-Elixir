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
# package org.allbinary.input.motion.button

defmodule TouchButtonLocationHelper do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :totalColumns, 0)
    JR.put(this, :totalRows, 0)
    JR.put(this, :columnsRemainder, 0)
    JR.put(this, :rowsRemainder, 0)
    JR.put(this, :columnsRemainderHalf, 0)
    JR.put(this, :rowsRemainderHalf, 0)
        
        
        
        
        
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :buttonSize, JR.get(CommonButtons.jm_getInstance(), :STANDARD_BUTTON_SIZE))
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :totalColumns, round(((JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) * 1.0) / (JR.lget(f, :buttonSize) * 1.0))))
        JR.put(this, :totalRows, round(((JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) * 1.0) / (JR.lget(f, :buttonSize) * 1.0))))
        JR.put(this, :columnsRemainder, (JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) % JR.lget(f, :buttonSize)))
        JR.put(this, :columnsRemainderHalf, (Bitwise.bsr(JR.get(this, :columnsRemainder), 1)))
        JR.put(this, :rowsRemainder, (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) % JR.lget(f, :buttonSize)))
        JR.put(this, :rowsRemainderHalf, (Bitwise.bsr(JR.get(this, :rowsRemainder), 1)))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getTotalColumns(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalColumns)})
    end)
  end


  def jm_getTotalRows(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalRows)})
    end)
  end


  def jm_getColumnsRemainder(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :columnsRemainder)})
    end)
  end


  def jm_getRowsRemainder(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rowsRemainder)})
    end)
  end


  def jm_getColumnsRemainderHalf(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :columnsRemainderHalf)})
    end)
  end


  def jm_getRowsRemainderHalf(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rowsRemainderHalf)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["totalColumns: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :totalColumns)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" totalRows: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :totalRows)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" columnsRemainder: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :columnsRemainder)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" rowsRemainder: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :rowsRemainder)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" columnsRemainderHalf: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :columnsRemainderHalf)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" rowsRemainderHalf: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :rowsRemainderHalf)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


