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
# package org.allbinary.logic.io.file

defmodule AbFile do
  def jsuper(), do: JObject
def jstatic_NULL_FILE(), do: JR.static_get(__MODULE__, :NULL_FILE, fn -> AbFile.jm_createAbFileFromRawPath(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)) end)
  def jstatic_set_NULL_FILE(value), do: JR.static_put(__MODULE__, :NULL_FILE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :file, nil)
        
    nil
  end


  def jm_createAbFileWithChild(p_file, p_childPathName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
      JR.lset(f, :childPathName, p_childPathName)
        throw({:jreturn, AbFile.jnew(J.File.jnew(JR.call(JR.lget(f, :file), :jm_getFile, []), JR.lget(f, :childPathName)))})
    end)
  end


  def jm_createAbFile(p_filePath) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        throw({:jreturn, AbFile.jnew(J.File.jnew(JR.call(AbPath.jnew(JR.lget(f, :filePath), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)), :jm_toFileSystemString, [])))})
    end)
  end


  def jm_createAbFilePathAndName(p_filePath, p_fileName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
      JR.lset(f, :fileName, p_fileName)
        throw({:jreturn, AbFile.jnew(J.File.jnew(JR.call(AbPath.jnew(JR.lget(f, :filePath), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)), :jm_toFileSystemString, []), JR.lget(f, :fileName)))})
    end)
  end


  def jm_createAbFileFromAbPath(p_abPath) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :abPath, p_abPath)
        throw({:jreturn, AbFile.jnew(J.File.jnew(JR.call(JR.lget(f, :abPath), :jm_toFileSystemString, [])))})
    end)
  end


  def jm_createAbFileFromRawPath(p_filePath) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        throw({:jreturn, AbFile.jnew(J.File.jnew(JR.lget(f, :filePath)))})
    end)
  end


  def jinit(this, p_file) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :file, JR.lget(f, :file))
    end)
  end

  def jnew(p_file) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_file)
    this
  end


  def jm_getFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :file)})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getName, [])})
    end)
  end


  def jm_getParent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getParent, [])})
    end)
  end


  def jm_getParentFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getParentFile, [])})
    end)
  end


  def jm_getPath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getPath, [])})
    end)
  end


  def jm_isAbsolute(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_isAbsolute, [])})
    end)
  end


  def jm_getAbsolutePath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getAbsolutePath, [])})
    end)
  end


  def jm_getAbsoluteFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getAbsoluteFile, [])})
    end)
  end


  def jm_getCanonicalPath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getCanonicalPath, [])})
    end)
  end


  def jm_getCanonicalFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getCanonicalFile, [])})
    end)
  end


  def jm_toURI(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_toURI, [])})
    end)
  end


  def jm_canRead(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_canRead, [])})
    end)
  end


  def jm_canWrite(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_canWrite, [])})
    end)
  end


  def jm_exists(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_exists, [])})
    end)
  end


  def jm_isDirectory(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_isDirectory, [])})
    end)
  end


  def jm_isFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_isFile, [])})
    end)
  end


  def jm_isHidden(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_isHidden, [])})
    end)
  end


  def jm_lastModified(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_lastModified, [])})
    end)
  end


  def jm_length(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_length, [])})
    end)
  end


  def jm_createNewFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_createNewFile, [])})
    end)
  end


  def jm_delete(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_delete, [])})
    end)
  end


  def jm_deleteOnExit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :file), :jm_deleteOnExit, [])
    end)
  end


  def jm_list(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_list, [])})
    end)
  end


  def jm_listWithFilter(this, p_filter) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filter, p_filter)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_list, [JR.lget(f, :filter)])})
    end)
  end


  def jm_listFiles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_listFiles, [])})
    end)
  end


  def jm_listFilesFileNameFilter(this, p_filter) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filter, p_filter)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_listFiles, [JR.lget(f, :filter)])})
    end)
  end


  def jm_listFilesFileFilter(this, p_filter) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filter, p_filter)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_listFiles, [JR.lget(f, :filter)])})
    end)
  end


  def jm_mkdir(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_mkdir, [])})
    end)
  end


  def jm_mkdirs(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_mkdirs, [])})
    end)
  end


  def jm_renameTo(this, p_dest) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dest, p_dest)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_renameTo, [JR.call(JR.lget(f, :dest), :jm_getFile, [])])})
    end)
  end


  def jm_setLastModified(this, p_time) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :time, p_time)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setLastModified, [JR.lget(f, :time)])})
    end)
  end


  def jm_setReadOnly(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setReadOnly, [])})
    end)
  end


  def jm_setWritable(this, p_writable, p_ownerOnly) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :writable, p_writable)
      JR.lset(f, :ownerOnly, p_ownerOnly)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setExecutable, [JR.lget(f, :writable), JR.lget(f, :ownerOnly)])})
    end)
  end


  def jm_setWritable(this, p_writable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :writable, p_writable)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setWritable, [JR.lget(f, :writable)])})
    end)
  end


  def jm_setReadable(this, p_readable, p_ownerOnly) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :readable, p_readable)
      JR.lset(f, :ownerOnly, p_ownerOnly)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setReadable, [JR.lget(f, :readable), JR.lget(f, :ownerOnly)])})
    end)
  end


  def jm_setReadable(this, p_readable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :readable, p_readable)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setReadable, [JR.lget(f, :readable)])})
    end)
  end


  def jm_setExecutable(this, p_executable, p_ownerOnly) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :executable, p_executable)
      JR.lset(f, :ownerOnly, p_ownerOnly)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setExecutable, [JR.lget(f, :executable), JR.lget(f, :ownerOnly)])})
    end)
  end


  def jm_setExecutable(this, p_executable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :executable, p_executable)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_setExecutable, [JR.lget(f, :executable)])})
    end)
  end


  def jm_canExecute(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_canExecute, [])})
    end)
  end


  def jm_getTotalSpace(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getTotalSpace, [])})
    end)
  end


  def jm_getFreeSpace(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getFreeSpace, [])})
    end)
  end


  def jm_getUsableSpace(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_getUsableSpace, [])})
    end)
  end


  def jm_compareTo(this, p_pathname) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pathname, p_pathname)
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_compareTo, [JR.lget(f, :pathname)])})
    end)
  end


  def jm_equals(this, p_obj) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :obj, p_obj)
        throw({:jreturn, JR.call(TsUtil.jm_getInstance(), :jm_equalsNotstring, [JR.get(this, :file), JR.lget(f, :obj)])})
    end)
  end


  def jm_hashCode(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_hashCode, [])})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :file), :jm_toString, [])})
    end)
  end
end


