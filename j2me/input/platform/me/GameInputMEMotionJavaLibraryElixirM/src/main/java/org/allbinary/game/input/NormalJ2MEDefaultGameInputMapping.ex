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

defmodule NormalJ2MEDefaultGameInputMapping do
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
        NormalJ2MEDefaultGameInputMapping.jinitfields(this)
        JR.lset(f, :inputToGameKeyMapping, JR.call(this, :jm_getInputMapping, []))
        JR.lset(f, :gameKeyFactory, GameKeyFactory.jm_getInstance())
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM2)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM4)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM6)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM8)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :gameKeyFactory), :GAME_A)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM3), JR.get(JR.lget(f, :gameKeyFactory), :GAME_B)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7), JR.get(JR.lget(f, :gameKeyFactory), :GAME_C)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9), JR.get(JR.lget(f, :gameKeyFactory), :GAME_D)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_DOWN), JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_DOWN)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_UP), JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_UP)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :UP), JR.get(JR.lget(f, :gameKeyFactory), :UP)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN), JR.get(JR.lget(f, :gameKeyFactory), :DOWN)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT), JR.get(JR.lget(f, :gameKeyFactory), :LEFT)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT), JR.get(JR.lget(f, :gameKeyFactory), :RIGHT)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_POUND), JR.get(JR.lget(f, :gameKeyFactory), :KEY_POUND)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_STAR), JR.get(JR.lget(f, :gameKeyFactory), :KEY_STAR)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM3), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM3)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM0), JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM0)])
        JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_add, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1), JR.get(JR.lget(f, :gameKeyFactory), :FIRE)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


