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
# package org.allbinary.game.input

defmodule DesktopDefaultGameInputMapping do
  def jsuper(), do: PersistentInputMapping

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        PersistentInputMapping.jinit(this, JR.get(GamePersistanceStrings.jm_getInstance(), :DEFAULT_INPUT_MAPPING_RECORD_ID))
        DesktopDefaultGameInputMapping.jinitfields(this)
        JR.lset(f, :inputToGameKeyMapping, JR.call(this, :jm_getInputMapping, []))
        JR.lset(f, :pcKeyFactory, PCKeyFactory.jm_getInstance())
        JR.lset(f, :gameKeyFactory, GameKeyFactory.jm_getInstance())
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :FIRE), JR.get(JR.lget(f, :pcKeyFactory), :ENTER)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :pcKeyFactory), :FOUR)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :pcKeyFactory), :_P)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :pcKeyFactory), :p)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :pcKeyFactory), :DPAD_UP)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :pcKeyFactory), :DPAD_DOWN)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :pcKeyFactory), :DPAD_LEFT)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :pcKeyFactory), :DPAD_RIGHT)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :pcKeyFactory), :FIVE)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7), JR.get(JR.lget(f, :pcKeyFactory), :_Y)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9), JR.get(JR.lget(f, :pcKeyFactory), :_I)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :pcKeyFactory), :_U)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :pcKeyFactory), :_H)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :pcKeyFactory), :_J)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :pcKeyFactory), :_N)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5), JR.get(JR.lget(f, :pcKeyFactory), :_M)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7), JR.get(JR.lget(f, :pcKeyFactory), :y)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9), JR.get(JR.lget(f, :pcKeyFactory), :i)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :pcKeyFactory), :u)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :pcKeyFactory), :h)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :pcKeyFactory), :j)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :pcKeyFactory), :n)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5), JR.get(JR.lget(f, :pcKeyFactory), :m)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7), JR.get(JR.lget(f, :pcKeyFactory), :_Q)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9), JR.get(JR.lget(f, :pcKeyFactory), :_E)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :pcKeyFactory), :_W)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :pcKeyFactory), :_A)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :pcKeyFactory), :_D)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :pcKeyFactory), :_S)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5), JR.get(JR.lget(f, :pcKeyFactory), :_X)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7), JR.get(JR.lget(f, :pcKeyFactory), :q)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9), JR.get(JR.lget(f, :pcKeyFactory), :e)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :pcKeyFactory), :w)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :pcKeyFactory), :a)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :pcKeyFactory), :d)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :pcKeyFactory), :s)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5), JR.get(JR.lget(f, :pcKeyFactory), :x)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM3), JR.get(JR.lget(f, :pcKeyFactory), :THREE)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM0), JR.get(JR.lget(f, :pcKeyFactory), :ZERO)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM0), JR.get(JR.lget(f, :pcKeyFactory), :ONE)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM0), JR.get(JR.lget(f, :pcKeyFactory), :SPACE)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_POUND), JR.get(JR.lget(f, :pcKeyFactory), :DEL)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_POUND), JR.get(JR.lget(f, :pcKeyFactory), :TWO)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_STAR), JR.get(JR.lget(f, :pcKeyFactory), :ESCAPE)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_STAR), JR.get(JR.lget(f, :pcKeyFactory), :STAR)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_DOWN), JR.get(JR.lget(f, :pcKeyFactory), :COMMA)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_UP), JR.get(JR.lget(f, :pcKeyFactory), :PERIOD)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


