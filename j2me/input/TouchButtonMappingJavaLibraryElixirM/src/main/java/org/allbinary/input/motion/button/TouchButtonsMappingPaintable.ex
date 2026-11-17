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

defmodule TouchButtonsMappingPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :foregroundColor, 0)
    JR.put(this, :paintableTable, nil)
    JR.put(this, :touchButtonLocationHelper, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :paintableTable, JR.anew_of(0, fn -> JR.anew(0, nil) end))
        JR.put(this, :touchButtonLocationHelper, TouchButtonLocationHelper.jnew())
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :foregroundColor, JR.call(JR.lget(f, :basicColor), :jm_intValue, []))
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew(p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.put(this, :paintableTable, JR.call(this, :jm_createPaintableTable, []))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "updateRectangle", JR.lget(f, :e)])
        end
    end)
  end


  def jm_createPaintableTable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :totalColumns, JR.call(JR.get(this, :touchButtonLocationHelper), :jm_getTotalColumns, []))
        JR.lset(f, :totalRows, JR.call(JR.get(this, :touchButtonLocationHelper), :jm_getTotalRows, []))
        JR.lset(f, :paintableTable, JR.anew_of(JR.lget(f, :totalColumns), fn -> JR.anew(JR.lget(f, :totalRows), nil) end))
        JR.lset(f, :cellPositionFactory, CellPositionFactory.jm_getInstance())
        JR.lset(f, :commonButtons, CommonButtons.jm_getInstance())
        JR.lset(f, :index, JR.int32(JR.lget(f, :totalColumns) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :rowIndex, JR.int32(JR.lget(f, :totalRows) - 1))
            JR.jfor(fn -> (JR.lget(f, :rowIndex) >= 0) end, fn -> JR.lpostinc(f, :rowIndex, -1) end, fn ->
                JR.aset(JR.aget(JR.get(this, :paintableTable), JR.lget(f, :index)), JR.lget(f, :rowIndex), TouchButton.jm_createButton(JR.get(BasicTouchInputFactory.jm_getInstance(), :NONE), TouchButtonBlankResource.jm_getInstance(), JR.get(JR.lget(f, :commonButtons), :NORMAL_BUTTON), JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [JR.lget(f, :index), JR.lget(f, :rowIndex)]), JR.call(JR.get(this, :touchButtonLocationHelper), :jm_getColumnsRemainderHalf, []), JR.call(JR.get(this, :touchButtonLocationHelper), :jm_getRowsRemainderHalf, [])))
            end)
        end)
        throw({:jreturn, JR.lget(f, :paintableTable)})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :totalColumns, JR.call(JR.get(this, :touchButtonLocationHelper), :jm_getTotalColumns, []))
        JR.lset(f, :totalRows, JR.call(JR.get(this, :touchButtonLocationHelper), :jm_getTotalRows, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :totalColumns) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :rowIndex, JR.int32(JR.lget(f, :totalRows) - 1))
            JR.jfor(fn -> (JR.lget(f, :rowIndex) >= 0) end, fn -> JR.lpostinc(f, :rowIndex, -1) end, fn ->
                JR.call(JR.aget(JR.aget(JR.get(this, :paintableTable), JR.lget(f, :index)), JR.lget(f, :rowIndex)), :jm_paint, [JR.lget(f, :graphics)])
            end)
        end)
    end)
  end
end


