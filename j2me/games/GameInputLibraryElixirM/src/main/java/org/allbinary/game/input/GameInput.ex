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

defmodule GameInput do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :gameKeyEventList, nil)
    JR.put(this, :removalGameKeyEventList, nil)
    JR.put(this, :isRemoveDuplicateKeyPresses, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        
    nil
  end


  def jinit(this, p_gameKeyEventList, p_removalGameKeyEventList) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :removalGameKeyEventList, p_removalGameKeyEventList)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :gameKeyEventList, JR.lget(f, :gameKeyEventList))
        JR.put(this, :removalGameKeyEventList, JR.lget(f, :removalGameKeyEventList))
        JR.put(this, :isRemoveDuplicateKeyPresses, JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(InputFeatureFactory.jm_getInstance(), :REMOVE_DUPLICATE_KEY_PRESSES)]))
    end)
  end

  def jnew(p_gameKeyEventList, p_removalGameKeyEventList) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_removalGameKeyEventList)
    this
  end


  def jm_add(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        if (JR.get(this, :isRemoveDuplicateKeyPresses) && JR.call(JR.get(this, :gameKeyEventList), :jm_contains, [JR.lget(f, :gameKeyEvent)])) do
            throw({:jreturn, nil})
        end
        if (JR.lget(f, :gameKeyEvent) != nil) do
            JR.call(JR.get(this, :gameKeyEventList), :jm_add, [JR.lget(f, :gameKeyEvent)])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Danger Passed Null GameKeyEvent", this, JR.get(JR.get(this, :commonStrings), :ADD)])
        end
    end)
  end


  def jm_addForRemoval(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.call(JR.get(this, :removalGameKeyEventList), :jm_add, [JR.lget(f, :gameKeyEvent)])
    end)
  end


  def jm_isForRemoval(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        throw({:jreturn, JR.call(JR.get(this, :removalGameKeyEventList), :jm_contains, [JR.lget(f, :gameKeyEvent)])})
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameKeyEventList), :jm_clear, [])
    end)
  end


  def jm_removeNonAIInputGameKeyEvents(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :list, JR.get(this, :gameKeyEventList))
        JR.lset(f, :gameKeyEvent, nil)
        JR.lset(f, :index, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :gameKeyEvent, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :gameKeyEvent), :jm_getSourceId, []) != 1) do
                JR.call(JR.lget(f, :list), :jm_removeAt, [JR.lget(f, :index)])
            end
        end)
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :removeList, JR.get(this, :removalGameKeyEventList))
        JR.lset(f, :list, JR.get(this, :gameKeyEventList))
        JR.lset(f, :size, JR.call(JR.lget(f, :removeList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :anyType, JR.aget(JR.get(JR.lget(f, :removeList), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :index2, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.jfor(fn -> (JR.lpreinc(f, :index2, -1) >= 0) end, fn -> nil end, fn ->
                if (JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index2)) == JR.lget(f, :anyType)) do
                    JR.call(JR.lget(f, :list), :jm_removeAt, [JR.lget(f, :index2)])
                end
            end)
        end)
        JR.call(JR.lget(f, :removeList), :jm_clear, [])
    end)
  end


  def jm_getRemovalGameKeyEventList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :removalGameKeyEventList)})
    end)
  end


  def jm_getGameKeyEventList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameKeyEventList)})
    end)
  end
end


