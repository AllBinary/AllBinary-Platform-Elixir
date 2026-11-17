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

defmodule AllBinaryMediaManagerShutdown do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AllBinaryMediaManagerShutdown.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_shutdown(p_soundsFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :soundsFactoryInterface, p_soundsFactoryInterface)
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :START), AllBinaryMediaManagerShutdown.jstatic_instance(), "shutdown"])
        AllBinaryMediaManager.jm_shutdown(JR.lget(f, :soundsFactoryInterface))
    end)
  end
end


