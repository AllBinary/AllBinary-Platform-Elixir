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
# package org.allbinary.game.layer

defmodule PlayerGameInputGameLayer do
  def jsuper(), do: AllBinaryGameLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :playerGameInput, nil)
        
    nil
  end


  def jinit(this, p_playerInputId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        AllBinaryGameLayer.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 0, 0), StaticViewPosition.jnew(0, 0, 0))
        PlayerGameInputGameLayer.jinitfields(this)
        JR.put(this, :playerGameInput, PlayerGameInput.jnew(JR.call(this, :jm_getGameKeyEventList, []), BasicArrayListD.jnew(), JR.lget(f, :playerInputId)))
        JR.lset(f, :canvasStrings, CanvasStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Danger Danger Danger: Should Not Be Called Except For Testing Input", this, JR.get(JR.lget(f, :canvasStrings), :PAINT)])
    end)
  end

  def jnew(p_playerInputId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_playerInputId)
    this
  end


  def jm_getPlayerGameInput(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :playerGameInput)})
    end)
  end


  def jm_initInputProcessors(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_processInput(this, p_myManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :myManager, p_myManager)
        nil
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


