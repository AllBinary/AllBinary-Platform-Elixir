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
# package org.allbinary.logic.io

defmodule BufferedWriterUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BufferedWriterUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :commonLabels, nil)
    JR.put(this, :REMOVING_OLD, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :commonLabels, CommonLabels.jm_getInstance())
        JR.put(this, :REMOVING_OLD, "Remove old for overwriting: ")
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
        throw({:jreturn, BufferedWriterUtil.jstatic_instance()})
    end)
  end


  def jm_overwrite(this, p_path, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
      JR.lset(f, :data, p_data)
        JR.lset(f, :abFile, AbFile.jm_createAbFile(JR.lget(f, :path)))
        if JR.call(JR.lget(f, :abFile), :jm_exists, []) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(this, :REMOVING_OLD) <> JR.lget(f, :path), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
            JR.call(JR.lget(f, :abFile), :jm_delete, [])
        else
            JR.lset(f, :name, JR.call(AbPathData.jm_getInstance(), :jm_removeNameFromPath, [JR.lget(f, :path)]))
            JR.lset(f, :abFileDirectory, AbFile.jm_createAbFile(JR.lget(f, :name)))
            if JR.call(JR.lget(f, :abFileDirectory), :jm_exists, []) do
                nil
            else
                JR.lset(f, :stringBuilder, StringMaker.jnew())
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_append, [JR.get(JR.get(this, :commonStrings), :CREATE)]), :jm_append, [JR.get(JR.get(this, :commonLabels), :COLON_SEP)]), :jm_append, [JR.lget(f, :name)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
                JR.lset(f, :result, JR.call(JR.lget(f, :abFileDirectory), :jm_mkdirs, []))
                JR.call(JR.lget(f, :stringBuilder), :jm_delete, [0, JR.call(JR.lget(f, :stringBuilder), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_append, [JR.get(JR.get(this, :commonLabels), :RESULT_)]), :jm_appendboolean, [JR.lget(f, :result)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
            end
        end
        JR.call(this, :jm_write, [JR.lget(f, :abFile), JR.lget(f, :data)])
    end)
  end


  def jm_overwrite(this, p_abFile, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abFile, p_abFile)
      JR.lset(f, :data, p_data)
        if JR.call(JR.lget(f, :abFile), :jm_exists, []) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(this, :REMOVING_OLD) <> JR.str(JR.call(JR.lget(f, :abFile), :jm_getPath, [])), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
            JR.call(JR.lget(f, :abFile), :jm_delete, [])
        else
            JR.lset(f, :name, JR.call(AbPathData.jm_getInstance(), :jm_removeNameFromPath, [JR.call(JR.lget(f, :abFile), :jm_getAbsolutePath, [])]))
            JR.lset(f, :abFileDirectory, AbFile.jm_createAbFile(JR.lget(f, :name)))
            if JR.call(JR.lget(f, :abFileDirectory), :jm_exists, []) do
                nil
            else
                JR.lset(f, :stringBuilder, StringMaker.jnew())
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_append, [JR.get(JR.get(this, :commonStrings), :CREATE)]), :jm_append, [JR.get(JR.get(this, :commonLabels), :COLON_SEP)]), :jm_append, [JR.lget(f, :name)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
                JR.lset(f, :result, JR.call(JR.lget(f, :abFileDirectory), :jm_mkdirs, []))
                JR.call(JR.lget(f, :stringBuilder), :jm_delete, [0, JR.call(JR.lget(f, :stringBuilder), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_append, [JR.get(JR.get(this, :commonLabels), :RESULT_)]), :jm_appendboolean, [JR.lget(f, :result)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
            end
        end
        JR.call(this, :jm_write, [JR.lget(f, :abFile), JR.lget(f, :data)])
    end)
  end


  def jm_write(this, p_abFile, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abFile, p_abFile)
      JR.lset(f, :data, p_data)
        JR.lset(f, :fileOut, BufferedWriter.jnew(FileWriter.jnew(AbFileNativeUtil.jm_get(JR.lget(f, :abFile)))))
        JR.call(JR.lget(f, :fileOut), :jm_write, [JR.lget(f, :data), 0, byte_size(JR.lget(f, :data))])
        JR.call(JR.lget(f, :fileOut), :jm_newLine, [])
        JR.call(JR.lget(f, :fileOut), :jm_flush, [])
    end)
  end
end


