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

defmodule CellPositionFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> CellPositionFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :cellPositionArray, nil)
    JR.put(this, :columns, 0)
    JR.put(this, :rows, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :NONE, CellPosition.jnew(-1, -1, -1, -1))
        JR.put(this, :cellPositionArray, JR.anew_of(0, fn -> JR.anew(0, nil) end))
        JR.put(this, :columns, 0)
        JR.put(this, :rows, 0)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CellPositionFactory.jstatic_SINGLETON()})
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


  def jm_init(this, p_columns, p_rows) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :columns, p_columns)
      JR.lset(f, :rows, p_rows)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Init: columns: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :columns)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" rows: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :rows)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :INIT)])
        JR.put(this, :cellPositionArray, JR.anew_of(JR.lget(f, :columns), fn -> JR.anew(JR.lget(f, :rows), nil) end))
        JR.put(this, :columns, JR.lget(f, :columns))
        JR.put(this, :rows, JR.lget(f, :rows))
        JR.lset(f, :column, 0)
        JR.jfor(fn -> (JR.lget(f, :column) < JR.lget(f, :columns)) end, fn -> JR.lpostinc(f, :column, 1) end, fn ->
            JR.lset(f, :row, 0)
            JR.jfor(fn -> (JR.lget(f, :row) < JR.lget(f, :rows)) end, fn -> JR.lpostinc(f, :row, 1) end, fn ->
                JR.call(this, :jm_createInstance, [JR.lget(f, :column), JR.lget(f, :row)])
            end)
        end)
    end)
  end


  def jm_getInstanceColRow(this, p_i_column, p_i_row) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :i_column, p_i_column)
      JR.lset(f, :i_row, p_i_row)
        try do
            throw({:jreturn, JR.aget(JR.aget(JR.get(this, :cellPositionArray), JR.lget(f, :i_column)), JR.lget(f, :i_row))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["columns: "]), :jm_appendint, [JR.call(this, :jm_getColumns, [])]), :jm_append, [" rows: "]), :jm_appendint, [JR.call(this, :jm_getRows, [])]), :jm_append, [" col: "]), :jm_appendint, [JR.lget(f, :i_column)]), :jm_append, [" row: "]), :jm_appendint, [JR.lget(f, :i_row)]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e)])
            throw({:jreturn, JR.get(this, :NONE)})
        end
    end)
  end


  def jm_createInstance(this, p_i_column, p_i_row) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :i_column, p_i_column)
      JR.lset(f, :i_row, p_i_row)
        JR.lset(f, :cellPositionCanBeNull, JR.aget(JR.aget(JR.get(this, :cellPositionArray), JR.lget(f, :i_column)), JR.lget(f, :i_row)))
        if (JR.lget(f, :cellPositionCanBeNull) == nil) do
            JR.lset(f, :cellPositionCanBeNull, CellPosition.jnew(JR.lget(f, :i_column), JR.lget(f, :i_row), JR.get(this, :columns), JR.get(this, :rows)))
            JR.aset(JR.aget(JR.get(this, :cellPositionArray), JR.lget(f, :i_column)), JR.lget(f, :i_row), JR.lget(f, :cellPositionCanBeNull))
        end
        throw({:jreturn, JR.lget(f, :cellPositionCanBeNull)})
    end)
  end


  def jm_getColumns(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :columns)})
    end)
  end


  def jm_getRows(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rows)})
    end)
  end
end


