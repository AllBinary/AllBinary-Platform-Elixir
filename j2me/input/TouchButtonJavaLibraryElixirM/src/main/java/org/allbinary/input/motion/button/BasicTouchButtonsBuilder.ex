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

defmodule BasicTouchButtonsBuilder do
  def jsuper(), do: BaseTouchInput

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end

  def jinit(this) do
    BaseTouchInput.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.lset(f, :commonButtons, CommonButtons.jm_getInstance())
            JR.lset(f, :touchButtonLocationHelper, TouchButtonLocationHelper.jnew())
            JR.lset(f, :basicTouchButtonCellPositionFactory, BasicTouchButtonCellPositionFactory.jnew())
            JR.lset(f, :UP, TouchButton.jm_createButton(JR.get(BasicTouchInputFactory.jm_getInstance(), :UP), TouchButtonUpResource.jm_getInstance(), JR.get(JR.lget(f, :commonButtons), :NORMAL_BUTTON), JR.get(JR.lget(f, :basicTouchButtonCellPositionFactory), :SECOND_FROM_BOTTOM_LEFT), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getColumnsRemainderHalf, []), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getRowsRemainderHalf, [])))
            JR.lset(f, :DOWN, TouchButton.jm_createButton(JR.get(BasicTouchInputFactory.jm_getInstance(), :DOWN), TouchButtonDownResource.jm_getInstance(), JR.get(JR.lget(f, :commonButtons), :NORMAL_BUTTON), JR.get(JR.lget(f, :basicTouchButtonCellPositionFactory), :BOTTOM_LEFT), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getColumnsRemainderHalf, []), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getRowsRemainderHalf, [])))
            JR.lset(f, :LEFT, TouchButton.jm_createButton(JR.get(BasicTouchInputFactory.jm_getInstance(), :SPECIAL_BUTTON_FOUR), TouchButtonTurnLeftResource.jm_getInstance(), JR.get(JR.lget(f, :commonButtons), :NORMAL_BUTTON), JR.get(JR.lget(f, :basicTouchButtonCellPositionFactory), :BOTTOM_SECOND_FROM_RIGHT), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getColumnsRemainderHalf, []), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getRowsRemainderHalf, [])))
            JR.lset(f, :RIGHT, TouchButton.jm_createButton(JR.get(BasicTouchInputFactory.jm_getInstance(), :SPECIAL_BUTTON_THREE), TouchButtonTurnRightResource.jm_getInstance(), JR.get(JR.lget(f, :commonButtons), :NORMAL_BUTTON), JR.get(JR.lget(f, :basicTouchButtonCellPositionFactory), :BOTTOM_RIGHT), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getColumnsRemainderHalf, []), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getRowsRemainderHalf, [])))
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :UP)])
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :LEFT)])
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :RIGHT)])
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :DOWN)])
            throw({:jreturn, JR.lget(f, :list)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :GET_LIST), JR.lget(f, :e)])
            throw({:jreturn, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, [])})
        end
    end)
  end
end


