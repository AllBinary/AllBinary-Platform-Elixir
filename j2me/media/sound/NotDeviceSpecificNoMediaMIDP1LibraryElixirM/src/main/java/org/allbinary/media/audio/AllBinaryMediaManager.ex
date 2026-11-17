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

#NotDeviceSpecificNoMediaMIDP1Library
defmodule AllBinaryMediaManager do
  def jsuper(), do: JObject
def jstatic_THIS(), do: JR.static_get(__MODULE__, :THIS, fn -> "AllBinaryMediaManagerNoMediaMIDP1" end)
  def jstatic_set_THIS(value), do: JR.static_put(__MODULE__, :THIS, value)

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
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isMuted() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_setMuted(p_aMuted) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :aMuted, p_aMuted)
        nil
    end)
  end


  def jm_update() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_init(p_soundsFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :soundsFactoryInterface, p_soundsFactoryInterface)
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.lset(f, :commonString, CommonStrings.jm_getInstance())
        JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonString), :START), AllBinaryMediaManager.jstatic_THIS(), JR.get(JR.lget(f, :commonString), :INIT)])
        JR.call(ProgressCanvasFactory.jm_getInstance(), :jm_addNormalPortion, [50, "Media Manager"])
        JR.call(Sounds.jnew(JR.lget(f, :soundsFactoryInterface)), :jm_init, [])
    end)
  end


  def jm_shutdown(p_soundsFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :soundsFactoryInterface, p_soundsFactoryInterface)
        JR.call(Sounds.jnew(JR.lget(f, :soundsFactoryInterface)), :jm_stopAll, [])
        JR.call(Sounds.jnew(JR.lget(f, :soundsFactoryInterface)), :jm_closeAll, [])
        JR.call(TsUtil.jm_getInstance(), :jm_gc, [])
    end)
  end


  def jm_createPlayerFromInputStream(p_stream, p_type) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :stream, p_stream)
      JR.lset(f, :type, p_type)
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.lset(f, :commonString, CommonStrings.jm_getInstance())
        JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonString), :START), AllBinaryMediaManager.jstatic_THIS(), "creatPlayer(InputStream)"])
        throw({:jreturn, NoPlayer.jstatic_NO_PLAYER()})
    end)
  end


  def jm_createPlayer(p_locator) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :locator, p_locator)
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.lset(f, :commonString, CommonStrings.jm_getInstance())
        JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonString), :START), AllBinaryMediaManager.jstatic_THIS(), "creatPlayer(locator)"])
        throw({:jreturn, NoPlayer.jstatic_NO_PLAYER()})
    end)
  end


  def jm_playTone(p_frequency, p_time, p_volume) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :frequency, p_frequency)
      JR.lset(f, :time, p_time)
      JR.lset(f, :volume, p_volume)
        nil
    end)
  end


  def jm_getSupportedContentTypes(p_protocol) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :protocol, p_protocol)
        throw({:jreturn, JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, [])})
    end)
  end


  def jm_getSupportedProtocols(p_content_type) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :content_type, p_content_type)
        throw({:jreturn, JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, [])})
    end)
  end
end


