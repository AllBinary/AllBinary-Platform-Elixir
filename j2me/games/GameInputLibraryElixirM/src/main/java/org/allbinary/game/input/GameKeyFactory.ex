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

defmodule GameKeyFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NONE, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :KEY_POUND, nil)
    JR.put(this, :KEY_STAR, nil)
    JR.put(this, :KEY_NUM0, nil)
    JR.put(this, :KEY_NUM1, nil)
    JR.put(this, :KEY_NUM2, nil)
    JR.put(this, :KEY_NUM3, nil)
    JR.put(this, :KEY_NUM4, nil)
    JR.put(this, :KEY_NUM5, nil)
    JR.put(this, :KEY_NUM6, nil)
    JR.put(this, :KEY_NUM7, nil)
    JR.put(this, :KEY_NUM8, nil)
    JR.put(this, :KEY_NUM9, nil)
    JR.put(this, :GAME_A, nil)
    JR.put(this, :GAME_B, nil)
    JR.put(this, :GAME_C, nil)
    JR.put(this, :GAME_D, nil)
    JR.put(this, :FIRE, nil)
    JR.put(this, :LEVEL_DOWN, nil)
    JR.put(this, :LEVEL_UP, nil)
        JR.put(this, :NONE, GameKey.jnew((JR.get(InputFactory.jm_getInstance(), :MAX) - 1), "None"))
        JR.put(this, :UP, GameKey.jnew(Canvas.jstatic_UP(), JR.get(CommonPhoneStrings.jm_getInstance(), :UP)))
        JR.put(this, :DOWN, GameKey.jnew(Canvas.jstatic_DOWN(), JR.get(CommonPhoneStrings.jm_getInstance(), :DOWN)))
        JR.put(this, :LEFT, GameKey.jnew(Canvas.jstatic_LEFT(), JR.get(CommonPhoneStrings.jm_getInstance(), :LEFT)))
        JR.put(this, :RIGHT, GameKey.jnew(Canvas.jstatic_RIGHT(), JR.get(CommonPhoneStrings.jm_getInstance(), :RIGHT)))
        JR.put(this, :KEY_POUND, GameKey.jnew(Canvas.jstatic_KEY_POUND(), "POUND"))
        JR.put(this, :KEY_STAR, GameKey.jnew(Canvas.jstatic_KEY_STAR(), "STAR"))
        JR.put(this, :KEY_NUM0, GameKey.jnew(Canvas.jstatic_KEY_NUM0(), JR.get(CommonPhoneStrings.jm_getInstance(), :ZERO)))
        JR.put(this, :KEY_NUM1, GameKey.jnew(Canvas.jstatic_KEY_NUM1(), JR.get(CommonPhoneStrings.jm_getInstance(), :ONE)))
        JR.put(this, :KEY_NUM2, GameKey.jnew(Canvas.jstatic_KEY_NUM2(), JR.get(CommonPhoneStrings.jm_getInstance(), :TWO)))
        JR.put(this, :KEY_NUM3, GameKey.jnew(Canvas.jstatic_KEY_NUM3(), JR.get(CommonPhoneStrings.jm_getInstance(), :THREE)))
        JR.put(this, :KEY_NUM4, GameKey.jnew(Canvas.jstatic_KEY_NUM4(), JR.get(CommonPhoneStrings.jm_getInstance(), :FOUR)))
        JR.put(this, :KEY_NUM5, GameKey.jnew(Canvas.jstatic_KEY_NUM5(), JR.get(CommonPhoneStrings.jm_getInstance(), :FIVE)))
        JR.put(this, :KEY_NUM6, GameKey.jnew(Canvas.jstatic_KEY_NUM6(), JR.get(CommonPhoneStrings.jm_getInstance(), :SIX)))
        JR.put(this, :KEY_NUM7, GameKey.jnew(Canvas.jstatic_KEY_NUM7(), JR.get(CommonPhoneStrings.jm_getInstance(), :SEVEN)))
        JR.put(this, :KEY_NUM8, GameKey.jnew(Canvas.jstatic_KEY_NUM8(), JR.get(CommonPhoneStrings.jm_getInstance(), :EIGHT)))
        JR.put(this, :KEY_NUM9, GameKey.jnew(Canvas.jstatic_KEY_NUM9(), JR.get(CommonPhoneStrings.jm_getInstance(), :NINE)))
        JR.put(this, :GAME_A, GameKey.jnew(Canvas.jstatic_GAME_A(), "Game A"))
        JR.put(this, :GAME_B, GameKey.jnew(Canvas.jstatic_GAME_B(), "Game B"))
        JR.put(this, :GAME_C, GameKey.jnew(Canvas.jstatic_GAME_C(), "Game C"))
        JR.put(this, :GAME_D, GameKey.jnew(Canvas.jstatic_GAME_D(), "Game D"))
        JR.put(this, :FIRE, GameKey.jnew(Canvas.jstatic_FIRE(), JR.get(CommonPhoneStrings.jm_getInstance(), :FIRE)))
        JR.put(this, :LEVEL_DOWN, GameKey.jnew((Canvas.jstatic_KEY_NUM9() + 1), "Cheat Level Up"))
        JR.put(this, :LEVEL_UP, GameKey.jnew((Canvas.jstatic_KEY_NUM9() + 2), "Cheat Level Down"))
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameKeyFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameKeyFactory.jstatic_set_instance(GameKeyFactory.jnew())
        end
        throw({:jreturn, GameKeyFactory.jstatic_instance()})
    end)
  end
end


