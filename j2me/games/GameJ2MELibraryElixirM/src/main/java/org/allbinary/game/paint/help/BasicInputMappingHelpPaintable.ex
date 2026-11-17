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
# package org.allbinary.game.paint.help

defmodule BasicInputMappingHelpPaintable do
  def jsuper(), do: HelpPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameInputMappingArray, nil)
    JR.put(this, :NONE, nil)
        
        JR.put(this, :NONE, JR.get(GameKeyFactory.jm_getInstance(), :NONE))
    nil
  end


  def jinit(this, p_gameInputMappingArray, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInputMappingArray, p_gameInputMappingArray)
      JR.lset(f, :basicColor, p_basicColor)
        HelpPaintable.jinit(this, "Help Screen", JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.lget(f, :basicColor))
        BasicInputMappingHelpPaintable.jinitfields(this)
        JR.put(this, :gameInputMappingArray, JR.lget(f, :gameInputMappingArray))
        JR.call(this, :jm_update, [JR.get(this, :NONE), JR.get(this, :NONE)])
    end)
  end

  def jnew(p_gameInputMappingArray, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameInputMappingArray, p_basicColor)
    this
  end


  def jm_update(this, p_selectedGameKey, p_selectedInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :selectedGameKey, p_selectedGameKey)
      JR.lset(f, :selectedInput, p_selectedInput)
        JR.lset(f, :gameKeyMapping, JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []))
        JR.lset(f, :EQUAL, " = ")
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :size, JR.alength(JR.get(this, :gameInputMappingArray)))
        JR.lset(f, :keyInfo, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :gameInputMapping, nil)
        JR.lset(f, :gameKey, nil)
        JR.lset(f, :list, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameInputMapping, JR.aget(JR.get(this, :gameInputMappingArray), JR.lget(f, :index)))
            JR.lset(f, :gameKey, JR.call(JR.lget(f, :gameInputMapping), :jm_getGameKey, []))
            JR.lset(f, :list, JR.call(JR.call(JR.lget(f, :gameKeyMapping), :jm_getInputMapping, []), :jm_getMappedInput, [JR.lget(f, :gameKey)]))
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.aset(JR.lget(f, :keyInfo), JR.lget(f, :index), JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.call(JR.lget(f, :gameInputMapping), :jm_getName, [])]), :jm_append, [JR.lget(f, :EQUAL)]), :jm_append, [JR.call(this, :jm_get, [JR.lget(f, :list)])]), :jm_toString, []))
        end)
        HelpPaintable.jm_setInputInfoP(this, JR.lget(f, :keyInfo))
    end)
  end


  def jm_get(this, p_keyList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyList, p_keyList)
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :AND, "and ")
        JR.lset(f, :key, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :keyList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :key, JR.aget(JR.get(JR.lget(f, :keyList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :key), :jm_getName, [])])
            if (JR.int32(JR.lget(f, :index) + 1) < JR.call(JR.lget(f, :keyList), :jm_size, [])) do
                if (JR.call(JR.lget(f, :keyList), :jm_size, []) == 2) do
                    JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.lget(f, :AND)])
                else
                    if (JR.int32(JR.lget(f, :index) + 2) == JR.call(JR.lget(f, :keyList), :jm_size, [])) do
                        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
                        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :AND)])
                    else
                        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
                    end
                end
            end
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


