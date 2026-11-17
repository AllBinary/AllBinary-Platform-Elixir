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

defmodule AbPath do
  def jsuper(), do: JObject
def jstatic_NETWORK_SEP(), do: JR.static_get(__MODULE__, :NETWORK_SEP, fn -> ":/" end)
  def jstatic_set_NETWORK_SEP(value), do: JR.static_put(__MODULE__, :NETWORK_SEP, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonSeps, nil)
    JR.put(this, :abPathData, nil)
    JR.put(this, :abPathUtil, nil)
    JR.put(this, :EMPTY_STRING, nil)
    JR.put(this, :schema, nil)
    JR.put(this, :path, nil)
    JR.put(this, :nameP, nil)
    JR.put(this, :hasSchemaP, false)
    JR.put(this, :numberOfSeps, 0)
        JR.put(this, :commonSeps, CommonSeps.jm_getInstance())
        JR.put(this, :abPathData, AbPathData.jm_getInstance())
        JR.put(this, :abPathUtil, PathUtil.jm_getInstance())
        JR.put(this, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :schema, JR.get(this, :EMPTY_STRING))
        JR.put(this, :path, JR.get(this, :EMPTY_STRING))
        JR.put(this, :nameP, JR.get(this, :EMPTY_STRING))
        JR.put(this, :hasSchemaP, false)
        JR.put(this, :numberOfSeps, 0)
    nil
  end


  def jm_createAbPath() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
            throw({:jreturn, AbPath.jnew(JR.lget(f, :EMPTY_STRING), JR.lget(f, :EMPTY_STRING))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :ex, jexception)
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
    end)
  end


  def jinit(this, p_aPath, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :aPath, p_aPath)
      JR.lset(f, :name, p_name)
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        if !JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :aPath)]) do
            JR.put(this, :schema, JR.call(this, :jm_getSchema, [JR.lget(f, :aPath)]))
            JR.put(this, :nameP, JR.lget(f, :name))
            JR.put(this, :path, JR.call(JR.get(this, :abPathUtil), :jm_adjustEnd, [JR.call(JR.get(this, :abPathUtil), :jm_adjust, [JR.call(this, :jm_getPathFromPath, [JR.lget(f, :aPath)])])]))
        else
            JR.call(this, :jm_init, [])
            if !JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :name)]) do
                JR.put(this, :nameP, JR.lget(f, :name))
            end
        end
    end)
  end

  def jnew(p_aPath, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_aPath, p_name)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :schema, JR.get(this, :EMPTY_STRING))
        JR.call(this, :jm_setPath, [JR.get(JR.get(this, :abPathData), :SEPARATOR)])
        JR.put(this, :nameP, JR.get(this, :EMPTY_STRING))
    end)
  end


  def jm_getSchema(this, p_aPath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aPath, p_aPath)
        JR.lset(f, :beginIndex, JR.index_of(JR.lget(f, :aPath), JR.get(JR.get(this, :commonSeps), :COLON)))
        if (JR.lget(f, :beginIndex) >= 0) do
            JR.put(this, :hasSchemaP, true)
            throw({:jreturn, JR.substring(JR.lget(f, :aPath), 0, JR.lget(f, :beginIndex))})
        end
        JR.put(this, :hasSchemaP, false)
        throw({:jreturn, JR.get(this, :EMPTY_STRING)})
    end)
  end


  def jm_hasSchema(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hasSchemaP)})
    end)
  end


  def jm_getPathFromPath(this, p_aPath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aPath, p_aPath)
        JR.lset(f, :filePathData, FilePathData.jm_getInstance())
        JR.lset(f, :tempPath, JR.lget(f, :aPath))
        if !JR.call(this, :jm_hasSchema, []) do
            JR.lset(f, :tempPath, JR.call(JR.get(this, :abPathUtil), :jm_adjustStart, [JR.lget(f, :tempPath)]))
        else
            JR.lset(f, :beginIndex, JR.index_of(JR.lget(f, :tempPath), JR.get(JR.get(this, :commonSeps), :COLON)))
            if (JR.lget(f, :beginIndex) >= 0) do
                JR.lpostinc(f, :beginIndex, 1)
                JR.jwhile(fn -> ((JR.char_at(JR.lget(f, :tempPath), JR.lget(f, :beginIndex)) == JR.get(JR.get(this, :abPathData), :SEPARATORCHAR)) || (JR.char_at(JR.lget(f, :tempPath), JR.lget(f, :beginIndex)) == JR.get(JR.lget(f, :filePathData), :SEPARATORCHAR))) end, fn ->
                    JR.lpostinc(f, :beginIndex, 1)
                    JR.postinc(this, :numberOfSeps, 1)
                    if (JR.get(this, :numberOfSeps) > 2) do
                        throw({:jexception, JR.exception("Exception", "Should Not Have More Than Two Seps")})
                    end
                end)
                JR.lset(f, :tempPath, JR.substring(JR.lget(f, :tempPath), JR.lget(f, :beginIndex), byte_size(JR.lget(f, :tempPath))))
            end
        end
        throw({:jreturn, JR.lget(f, :tempPath)})
    end)
  end


  def jm_setName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.put(this, :nameP, JR.lget(f, :name))
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :nameP)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        if JR.call(this, :jm_hasSchema, []) do
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :schema)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [AbPath.jstatic_NETWORK_SEP()])
        end
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getPath, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :nameP)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_toFileSystemString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(this, :jm_hasSchema, []) do
            JR.lset(f, :filePathData, FilePathData.jm_getInstance())
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :schema)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :COLON)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :filePathData), :PATH_START)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [FilePathUtil.jm_adjust(JR.call(this, :jm_getPath, []))])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :nameP)])
            throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
        else
            throw({:jreturn, JR.str(FilePathUtil.jm_adjust(JR.call(this, :jm_getPath, []))) <> JR.get(this, :nameP)})
        end
    end)
  end


  def jm_getPath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :path)})
    end)
  end


  def jm_setPath(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.put(this, :path, JR.lget(f, :path))
    end)
  end
end


