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
# package org.allbinary.game.displayable.canvas

defmodule CheatGameInputProcessor do
  def jsuper(), do: PlayerGameInput
def jstatic_inputProcessor(), do: JR.static_get(__MODULE__, :inputProcessor, fn -> SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT() end)
  def jstatic_set_inputProcessor(value), do: JR.static_put(__MODULE__, :inputProcessor, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :PROCESS_GAME, nil)
    JR.put(this, :gameCanvas, nil)
    JR.put(this, :gameKeyFactory, nil)
        JR.put(this, :PROCESS_GAME, "processGame")
        
        JR.put(this, :gameKeyFactory, GameKeyFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_gameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvas, p_gameCanvas)
        PlayerGameInput.jinit(this, BasicArrayListD.jnew(), BasicArrayListD.jnew(), -1)
        CheatGameInputProcessor.jinitfields(this)
        JR.put(this, :gameCanvas, JR.lget(f, :gameCanvas))
    end)
  end

  def jnew(p_gameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameCanvas)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :gameLayerManager, JR.call(JR.get(this, :gameCanvas), :jm_getLayerManager, []))
            JR.lset(f, :list, JR.call(this, :jm_getGameKeyEventList, []))
            JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :anyType, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                JR.lset(f, :key, GameKeyEventUtil.jm_getKey(JR.lget(f, :anyType)))
                if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :LEVEL_DOWN), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_strafeLeft, [])
                    throw(:jbreak)
                else
                    if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :LEVEL_UP), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_strafeRight, [])
                    throw(:jbreak)
                end
                end
                if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :LEFT), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_left, [])
                    throw(:jbreak)
                else
                    if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :RIGHT), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_right, [])
                    throw(:jbreak)
                else
                    if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :UP), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_up, [])
                    throw(:jbreak)
                else
                    if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :DOWN), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_down, [])
                    throw(:jbreak)
                else
                    if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM1), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_special1, [JR.lget(f, :gameLayerManager), GameKeyEvent.jstatic_NONE()])
                    throw(:jbreak)
                else
                    if (JR.lget(f, :key) == JR.call(JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM3), :jm_getId, [])) do
                    JR.call(CheatGameInputProcessor.jstatic_inputProcessor(), :jm_special2, [JR.lget(f, :gameLayerManager), GameKeyEvent.jstatic_NONE()])
                    throw(:jbreak)
                end
                end
                end
                end
                end
                end
            end)
            JR.call(JR.lget(f, :list), :jm_clear, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :UPDATE), JR.lget(f, :e)])
        end
    end)
  end
end


