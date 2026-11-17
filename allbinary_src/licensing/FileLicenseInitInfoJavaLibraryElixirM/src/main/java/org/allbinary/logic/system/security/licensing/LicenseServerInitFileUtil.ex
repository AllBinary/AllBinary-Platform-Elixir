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

defmodule LicenseServerInitFileUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :NULL_OUTPUT_STREAM, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :NULL_OUTPUT_STREAM, SimpleFileUtil.jm_nullOutputStream())
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


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :filePath, JR.get(LicenseInitInfoUtil.jm_getInstance(), :INITFILENAME))
            JR.call(LicenseInitInfoUtil.jm_getInstance(), :jm_setFilePath, [JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)])
            if JR.call(FileFactory.jm_getInstance(), :jm_isFile, [JR.lget(f, :filePath)]) do
                JR.call(JR.get(this, :logUtil), :jm_putF, ["Using Existing License File", this, JR.get(JR.get(this, :commonStrings), :INIT)])
            else
                JR.call(this, :jm_write, [])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :INIT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_write(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :fileOutputStream, JR.get(this, :NULL_OUTPUT_STREAM))
        try do
            JR.lset(f, :resourceUtil, ResourceUtil.jm_getInstance())
            JR.lset(f, :filePath, JR.get(LicenseInitInfoUtil.jm_getInstance(), :INITFILENAME))
            JR.lset(f, :inputStream, JR.call(JR.lget(f, :resourceUtil), :jm_getResourceAsStream, [JR.lget(f, :filePath)]))
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Writing Default License File", this, JR.get(JR.get(this, :commonStrings), :INIT)])
            JR.lset(f, :fileStreamFactory, FileStreamFactory.jm_getInstance())
            JR.lset(f, :fileOutputStream, JR.call(JR.lget(f, :fileStreamFactory), :jm_getFileOutputStreamInstance, [JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.lget(f, :filePath)]))
            JR.lset(f, :b, 0)
            JR.lset(f, :index, 0)
            JR.jwhile(fn -> true end, fn ->
                JR.lset(f, :b, JR.call(JR.lget(f, :inputStream), :jm_read, []))
                if (JR.lget(f, :b) == -1) do
                    throw(:jbreak)
                end
                JR.call(JR.lget(f, :fileOutputStream), :jm_write, [JR.lget(f, :b)])
                JR.lpostinc(f, :index, 1)
            end)
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Wrote Bytes: " <> JR.str(JR.lget(f, :index)), this, JR.get(JR.get(this, :commonStrings), :INIT)])
            JR.call(JR.lget(f, :fileOutputStream), :jm_flush, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :INIT), JR.lget(f, :e)])
        after
            JR.call(StreamUtil.jm_getInstance(), :jm_close, [JR.lget(f, :fileOutputStream)])
        end
    end)
  end
end


