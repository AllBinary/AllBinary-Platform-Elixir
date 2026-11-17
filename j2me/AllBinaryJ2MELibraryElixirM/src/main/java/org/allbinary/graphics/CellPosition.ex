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
# package org.allbinary.graphics

defmodule CellPosition do
  def jsuper(), do: V

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :id, 0)
    JR.put(this, :column, 0)
    JR.put(this, :row, 0)
        
        
        
    nil
  end


  def jinit(this, p_column, p_row, p_columns, p_rows) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :column, p_column)
      JR.lset(f, :row, p_row)
      JR.lset(f, :columns, p_columns)
      JR.lset(f, :rows, p_rows)
      V.jinit(this)
      jinitfields(this)
        JR.put(this, :column, JR.lget(f, :column))
        JR.put(this, :row, JR.lget(f, :row))
        JR.put(this, :id, JR.int32((JR.int32(JR.lget(f, :row) * JR.lget(f, :columns))) + JR.lget(f, :column)))
    end)
  end

  def jnew(p_column, p_row, p_columns, p_rows) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_column, p_row, p_columns, p_rows)
    this
  end


  def jm_getColumn(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :column)})
    end)
  end


  def jm_getRow(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :row)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, CellPosition.jm_toStringColRow(JR.call(this, :jm_getColumn, []), JR.call(this, :jm_getRow, []))})
    end)
  end


  def jm_toStringCellPosition(p_basicGeographicMapCellPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicGeographicMapCellPosition, p_basicGeographicMapCellPosition)
        throw({:jreturn, CellPosition.jm_toStringColRow(JR.call(JR.lget(f, :basicGeographicMapCellPosition), :jm_getColumn, []), JR.call(JR.lget(f, :basicGeographicMapCellPosition), :jm_getRow, []))})
    end)
  end


  def jm_toStringColRow(p_i_column, p_i_row) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :i_column, p_i_column)
      JR.lset(f, :i_row, p_i_row)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :PARENTHESIS_OPEN)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :i_column)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :i_row)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :PARENTHESIS_CLOSE)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end
end


