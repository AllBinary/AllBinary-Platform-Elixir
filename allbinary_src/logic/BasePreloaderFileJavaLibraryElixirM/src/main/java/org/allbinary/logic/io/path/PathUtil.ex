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

#Used to correct user input for paths
defmodule PathUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PathUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :abPathData, nil)
    JR.put(this, :filePathData, nil)
        JR.put(this, :abPathData, AbPathData.jm_getInstance())
        JR.put(this, :filePathData, FilePathData.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, PathUtil.jstatic_instance()})
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


  def jm_getExtensionWithAbFilePath(this, p_abFilePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abFilePath, p_abFilePath)
        throw({:jreturn, JR.call(JR.get(this, :abPathData), :jm_getExtension, [JR.call(JR.lget(f, :abFilePath), :jm_toString, [])])})
    end)
  end


  def jm_getExtensionWithAbPath(this, p_abPath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abPath, p_abPath)
        throw({:jreturn, JR.call(JR.get(this, :abPathData), :jm_getExtension, [JR.call(JR.lget(f, :abPath), :jm_toString, [])])})
    end)
  end


  def jm_getWithoutExtensionWithAbFilePath(this, p_abFilePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abFilePath, p_abFilePath)
        throw({:jreturn, JR.call(this, :jm_getWithoutExtension, [JR.call(JR.lget(f, :abFilePath), :jm_toString, [])])})
    end)
  end


  def jm_getWithoutExtensionWithAbPath(this, p_abPath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abPath, p_abPath)
        throw({:jreturn, JR.call(this, :jm_getWithoutExtension, [JR.call(JR.lget(f, :abPath), :jm_toString, [])])})
    end)
  end


  def jm_getWithoutExtension(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        JR.lset(f, :indexOfFileExtensionDelmiter, JR.call(JR.get(this, :abPathData), :jm_getExtensionIndex, [JR.lget(f, :filePath)]))
        JR.lset(f, :pathWithoutExtension, JR.lget(f, :filePath))
        if (JR.lget(f, :indexOfFileExtensionDelmiter) >= 0) do
            JR.lset(f, :pathWithoutExtension, JR.substring(JR.lget(f, :filePath), 0, JR.lget(f, :indexOfFileExtensionDelmiter)))
        end
        throw({:jreturn, JR.lget(f, :pathWithoutExtension)})
    end)
  end


  def jm_isValid(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        if JR.call(this, :jm_isValidStart, [JR.lget(f, :path)]) do
            if JR.call(this, :jm_isValidEnd, [JR.lget(f, :path)]) do
                throw({:jreturn, true})
            end
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isValidStart(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        if ((JR.char_at(JR.lget(f, :path), 0) == JR.get(JR.get(this, :abPathData), :SEPARATORCHAR)) || (JR.char_at(JR.lget(f, :path), 0) == ?.)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_isValidEnd(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :path)]) do
            throw({:jreturn, false})
        end
        if (JR.char_at(JR.lget(f, :path), JR.int32(byte_size(JR.lget(f, :path)) - 1)) == JR.get(JR.get(this, :abPathData), :SEPARATORCHAR)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_adjustStart(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        if !JR.call(this, :jm_isValidStart, [JR.lget(f, :path)]) do
            JR.lset(f, :path, JR.str(JR.get(JR.get(this, :abPathData), :SEPARATOR)) <> JR.lget(f, :path))
        end
        throw({:jreturn, JR.lget(f, :path)})
    end)
  end


  def jm_adjustEnd(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        if !JR.call(this, :jm_isValidEnd, [JR.lget(f, :path)]) do
            JR.lset(f, :path, JR.lget(f, :path) <> JR.str(JR.get(JR.get(this, :abPathData), :SEPARATOR)))
        end
        throw({:jreturn, JR.lget(f, :path)})
    end)
  end


  def jm_adjust(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :path)]) do
            throw({:jreturn, JR.get(JR.get(this, :abPathData), :SEPARATOR)})
        end
        if (JR.index_of(JR.lget(f, :path), "\\") >= 0) do
            JR.lset(f, :path, JR.call(JR.lget(f, :path), :jm_replace, [?\\, JR.get(JR.get(this, :abPathData), :SEPARATORCHAR)]))
        end
        throw({:jreturn, JR.lget(f, :path)})
    end)
  end


  def jm_removeNameFromPath(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :endIndex, JR.call(JR.lget(f, :path), :jm_lastIndexOf, [JR.get(JR.get(this, :abPathData), :SEPARATOR)]))
        if (JR.lget(f, :endIndex) < 0) do
            JR.lset(f, :endIndex, JR.call(JR.lget(f, :path), :jm_lastIndexOf, [JR.get(JR.get(this, :filePathData), :SEPARATORCHAR)]))
        end
        if (JR.lget(f, :endIndex) < 0) do
            throw({:jreturn, AbPath.jm_createAbPath()})
        end
        if (byte_size(JR.lget(f, :path)) == JR.int32(JR.lget(f, :endIndex) + 1)) do
            throw({:jreturn, JR.call(this, :jm_removeNameFromPath, [JR.substring(JR.lget(f, :path), 0, JR.int32(JR.lget(f, :endIndex) - 1))])})
        else
            JR.lset(f, :pathWithoutName, JR.substring(JR.lget(f, :path), 0, JR.lget(f, :endIndex)))
            throw({:jreturn, AbPath.jnew(JR.lget(f, :pathWithoutName), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))})
        end
    end)
  end
end


