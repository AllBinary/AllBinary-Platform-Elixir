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
# package org.allbinary.globals

defmodule Globals do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> Globals.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, Globals.jstatic_instance()})
    end)
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


  def jm_init(this, p_classLoader, p_pathString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :classLoader, p_classLoader)
      JR.lset(f, :pathString, p_pathString)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :appUrlGlobals, AppUrlGlobals.jnew())
        JR.call(JR.lget(f, :appUrlGlobals), :jm_setWebappPath, [JR.lget(f, :pathString)])
        JR.call(.jstatic_URLGLOBALS(), :jm_init, [JR.lget(f, :appUrlGlobals)])
        WebappClassLoaderInfo.jm_setLoader(JR.lget(f, :classLoader))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Setting Up AllBinary System Configuration Args: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :pathString)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" ClassLoader: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.class_name(JR.lget(f, :classLoader))])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :INIT)])
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :pathString)]) do
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["No Path Provided. Using Process Path: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :pathString)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :EQUALS)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(.jstatic_URLGLOBALS(), :jm_getWebappPath, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :INIT)])
        end
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Webapp Path Set To: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(.jstatic_URLGLOBALS(), :jm_getWebappPath, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :INIT)])
    end)
  end
end


