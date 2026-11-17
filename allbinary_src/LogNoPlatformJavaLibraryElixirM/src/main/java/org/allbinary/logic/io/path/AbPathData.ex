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
# package org.allbinary.logic.io.path

defmodule AbPathData do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AbPathData.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EXTENSION_SEP, nil)
    JR.put(this, :SEPARATORCHAR, 0)
    JR.put(this, :SEPARATOR, nil)
        JR.put(this, :EXTENSION_SEP, JR.get(CommonSeps.jm_getInstance(), :PERIOD))
        JR.put(this, :SEPARATORCHAR, ?/)
        JR.put(this, :SEPARATOR, JR.get(CommonSeps.jm_getInstance(), :FORWARD_SLASH))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AbPathData.jstatic_instance()})
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


  def jm_getExtensionIndex(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        JR.lset(f, :indexOfFileExtensionDelmiter, JR.call(JR.lget(f, :filePath), :jm_lastIndexOf, [JR.get(this, :EXTENSION_SEP)]))
        JR.lset(f, :indexOfLatDelimiter, JR.call(JR.lget(f, :filePath), :jm_lastIndexOf, [JR.get(this, :SEPARATORCHAR)]))
        if (JR.lget(f, :indexOfFileExtensionDelmiter) < 0) do
            throw({:jreturn, -1})
        end
        if (JR.lget(f, :indexOfFileExtensionDelmiter) < JR.lget(f, :indexOfLatDelimiter)) do
            throw({:jreturn, -1})
        end
        throw({:jreturn, JR.lget(f, :indexOfFileExtensionDelmiter)})
    end)
  end


  def jm_getExtensionWithDot(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        JR.lset(f, :indexOfFileExtensionDelmiter, JR.call(this, :jm_getExtensionIndex, [JR.lget(f, :filePath)]))
        JR.lset(f, :extension, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        if (JR.lget(f, :indexOfFileExtensionDelmiter) >= 0) do
            JR.lset(f, :extension, JR.substring(JR.lget(f, :filePath), JR.lget(f, :indexOfFileExtensionDelmiter)))
        end
        throw({:jreturn, JR.lget(f, :extension)})
    end)
  end


  def jm_getExtension(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        JR.lset(f, :indexOfFileExtensionDelmiter, JR.call(this, :jm_getExtensionIndex, [JR.lget(f, :filePath)]))
        JR.lset(f, :extension, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        if (JR.lget(f, :indexOfFileExtensionDelmiter) >= 0) do
            JR.lset(f, :extension, JR.substring(JR.lget(f, :filePath), JR.int32(JR.lget(f, :indexOfFileExtensionDelmiter) + 1)))
        end
        throw({:jreturn, JR.lget(f, :extension)})
    end)
  end


  def jm_getNameFromPath(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :endIndex, JR.call(JR.lget(f, :path), :jm_lastIndexOf, [JR.get(this, :SEPARATORCHAR)]))
        if (JR.lget(f, :endIndex) < 0) do
            JR.lset(f, :endIndex, JR.call(JR.lget(f, :path), :jm_lastIndexOf, [JR.get(FilePathData.jm_getInstance(), :SEPARATORCHAR)]))
        end
        if (JR.lget(f, :endIndex) < 0) do
            throw({:jreturn, JR.lget(f, :path)})
        end
        if (byte_size(JR.lget(f, :path)) == JR.int32(JR.lget(f, :endIndex) + 1)) do
            JR.lset(f, :categoryName, JR.substring(JR.lget(f, :path), 0, JR.lget(f, :endIndex)))
            throw({:jreturn, JR.call(this, :jm_getNameFromPath, [JR.lget(f, :categoryName)])})
        else
            JR.lset(f, :categoryName, JR.substring(JR.lget(f, :path), JR.int32(JR.lget(f, :endIndex) + 1)))
            throw({:jreturn, JR.lget(f, :categoryName)})
        end
    end)
  end


  def jm_removeNameFromPath(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :endIndex, JR.call(JR.lget(f, :path), :jm_lastIndexOf, [JR.get(this, :SEPARATORCHAR)]))
        if (JR.lget(f, :endIndex) < 0) do
            JR.lset(f, :endIndex, JR.call(JR.lget(f, :path), :jm_lastIndexOf, [JR.get(FilePathData.jm_getInstance(), :SEPARATORCHAR)]))
        end
        if (JR.lget(f, :endIndex) < 0) do
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
        if (byte_size(JR.lget(f, :path)) == JR.int32(JR.lget(f, :endIndex) + 1)) do
            throw({:jreturn, JR.call(this, :jm_removeNameFromPath, [JR.substring(JR.lget(f, :path), 0, JR.int32(JR.lget(f, :endIndex) - 1))])})
        else
            JR.lset(f, :pathWithoutName, JR.substring(JR.lget(f, :path), 0, JR.lget(f, :endIndex)))
            throw({:jreturn, JR.lget(f, :pathWithoutName)})
        end
    end)
  end
end


