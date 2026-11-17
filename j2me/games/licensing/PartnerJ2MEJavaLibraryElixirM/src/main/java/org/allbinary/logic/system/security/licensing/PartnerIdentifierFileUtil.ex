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
# package org.allbinary.logic.system.security.licensing

defmodule PartnerIdentifierFileUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PartnerIdentifierFileUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :FILE_NAME, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :FILE_NAME, "partner.txt")
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
        throw({:jreturn, PartnerIdentifierFileUtil.jstatic_instance()})
    end)
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :resourceUtil, ResourceUtil.jm_getInstance())
            JR.lset(f, :inputStream, JR.call(JR.lget(f, :resourceUtil), :jm_getResourceAsStream, [JR.get(this, :FILE_NAME)]))
            JR.lset(f, :inputStreamReader, InputStreamReader.jnew(JR.lget(f, :inputStream)))
            JR.lset(f, :chars, JR.anew(30, 0))
            JR.lset(f, :size, JR.call(JR.lget(f, :inputStreamReader), :jm_read, [JR.lget(f, :chars)]))
            JR.lset(f, :partnerString, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
            if (JR.lget(f, :size) > 0) do
                JR.lset(f, :partnerString, JR.from_chars(JR.lget(f, :chars), 0, JR.lget(f, :size)))
            end
            JR.call(JR.lget(f, :inputStreamReader), :jm_close, [])
            throw({:jreturn, JR.lget(f, :partnerString)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :GET), JR.lget(f, :e)])
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :NULL_STRING)})
        end
    end)
  end
end


