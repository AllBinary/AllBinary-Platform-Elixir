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
# package org.allbinary.media.audio

defmodule Sounds do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :soundStrings, nil)
    JR.put(this, :soundsFactoryInterface, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :soundStrings, SoundStrings.jm_getInstance())
        
    nil
  end


  def jinit(this, p_soundsFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :soundsFactoryInterface, p_soundsFactoryInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :soundsFactoryInterface, JR.lget(f, :soundsFactoryInterface))
    end)
  end

  def jnew(p_soundsFactoryInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_soundsFactoryInterface)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :INIT)])
        JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.get(this, :soundsFactoryInterface), :jm_init, [])
        JR.lset(f, :soundInterfaceArray, JR.call(JR.get(this, :soundsFactoryInterface), :jm_getSoundInterfaceArray, []))
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.lset(f, :indexInteger, nil)
        JR.lset(f, :indexString, nil)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :i, 0)
        JR.jfor(fn -> (JR.lget(f, :i) < JR.alength(JR.lget(f, :soundInterfaceArray))) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
            JR.lset(f, :soundInterface, JR.aget(JR.lget(f, :soundInterfaceArray), JR.lget(f, :i)))
            if (JR.lget(f, :soundInterface) != nil) do
                JR.lset(f, :indexInteger, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.lget(f, :i)]))
                JR.lset(f, :indexString, JR.call(JR.lget(f, :indexInteger), :jm_toString, []))
                JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :INDEX_LABEL)])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :indexString)])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :soundStrings), :SOUND)])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.class_name(JR.lget(f, :soundInterface))])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :INIT)])
                JR.call(JR.lget(f, :soundInterface), :jm_init, [])
                JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [100, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :soundStrings), :INIT_SOUND)]), :jm_append, [JR.lget(f, :indexString)]), :jm_toString, [])])
            end
        end)
        JR.call(JR.get(this, :soundsFactoryInterface), :jm_setInitialized, [true])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END), this, JR.get(JR.get(this, :commonStrings), :INIT)])
    end)
  end


  def jm_stopAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :soundStrings), :STOP_ALL)])
        JR.lset(f, :soundInterfaceArray, JR.call(JR.get(this, :soundsFactoryInterface), :jm_getSoundInterfaceArray, []))
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.lset(f, :player, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :soundInterfaceArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.lget(f, :soundInterfaceArray), JR.lget(f, :index)) != nil) do
                JR.lset(f, :player, JR.call(JR.aget(JR.lget(f, :soundInterfaceArray), JR.lget(f, :index)), :jm_getPlayerP, []))
                if (JR.lget(f, :player) != nil) do
                    JR.call(JR.lget(f, :player), :jm_stop, [])
                    JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [100, JR.get(JR.get(this, :soundStrings), :STOPPING_SOUND), JR.lget(f, :index)])
                end
            end
        end)
    end)
  end


  def jm_closeAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :soundStrings), :CLOSE_ALL)])
        JR.lset(f, :soundInterfaceArray, JR.call(JR.get(this, :soundsFactoryInterface), :jm_getSoundInterfaceArray, []))
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.lset(f, :player, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :soundInterfaceArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.lget(f, :soundInterfaceArray), JR.lget(f, :index)) != nil) do
                JR.lset(f, :player, JR.call(JR.aget(JR.lget(f, :soundInterfaceArray), JR.lget(f, :index)), :jm_getPlayerP, []))
                if (JR.lget(f, :player) != nil) do
                    JR.call(JR.lget(f, :player), :jm_close, [])
                    JR.call(JR.lget(f, :progressCanvas), :jm_addPortion, [100, JR.get(JR.get(this, :soundStrings), :CLOSING_SOUND), JR.lget(f, :index)])
                end
            end
        end)
    end)
  end
end


