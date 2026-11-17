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

#NotDeviceSpecificMIDP2JavaLibrary
defmodule AllBinaryMediaManager do
  def jsuper(), do: JObject
def jstatic_THIS(), do: JR.static_get(__MODULE__, :THIS, fn -> "AllBinaryMediaManagerNoMIPD2" end)
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


  def jm_createPlayer(p_resource) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(GameFeatureFactory.jm_getInstance(), :SOUND)]) do
            if (JR.call(TsUtil.jm_getInstance(), :jm_compareTo, [JR.lget(f, :resource), Manager.jstatic_TONE_DEVICE_LOCATOR()]) == 0) do
                throw({:jreturn, Manager.jm_createPlayer(JR.lget(f, :resource))})
            else
                JR.lset(f, :inputStream, JR.call(ResourceUtil.jm_getInstance(), :jm_getResourceAsStream, [JR.lget(f, :resource)]))
                throw({:jreturn, JR.call(MIDPUtil.jm_getInstance(), :jm_createPlayerFromInputStream, [JR.lget(f, :inputStream), JR.call(JR.get(AudioContentTypeDataFactory.jm_getInstance(), :MIME_AUDIO_WAV), :jm_getName, [])])})
            end
        else
            throw({:jreturn, NoPlayer.jstatic_NO_PLAYER()})
        end
    end)
  end


  def jm_playTone(p_frequency, p_time, p_volume) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :frequency, p_frequency)
      JR.lset(f, :time, p_time)
      JR.lset(f, :volume, p_volume)
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(GameFeatureFactory.jm_getInstance(), :SOUND)]) do
            Manager.jm_playTone(JR.lget(f, :frequency), JR.lget(f, :time), JR.lget(f, :volume))
        end
    end)
  end
end


