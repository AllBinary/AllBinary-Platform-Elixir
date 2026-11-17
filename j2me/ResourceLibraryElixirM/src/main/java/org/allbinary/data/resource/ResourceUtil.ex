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
# package org.allbinary.data.resource

#J2SE - J2ME
defmodule ResourceUtil do
  def jsuper(), do: JObject
def jstatic_classLoader(), do: JR.static_get(__MODULE__, :classLoader, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_classLoader(value), do: JR.static_put(__MODULE__, :classLoader, value)
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ResourceUtil.jnew() end)
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
        throw({:jreturn, ResourceUtil.jstatic_instance()})
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


  def jm_setLoadingPaths(this, p_path, p_ext) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
      JR.lset(f, :ext, p_ext)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(CommonStrings.jm_getInstance(), :NOT_IMPLEMENTED), this, "setLoadingPaths"])
    end)
  end


  def jm_setClassLoader(this, p_classLoader) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :classLoader, p_classLoader)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Resource Loader: "]), :jm_append, [JR.class_name(JR.lget(f, :classLoader))]), :jm_toString, []), this, "setClassLoader"])
        ResourceUtil.jstatic_set_classLoader(JR.lget(f, :classLoader))
    end)
  end


  def jm_getResourceAsStream(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :inputStream, JR.call(this, :jm_getResourceAsStreamAtStart, [JR.lget(f, :resource), 2]))
        if (JR.lget(f, :inputStream) == nil) do
            JR.lset(f, :inputStream, JR.call(this, :jm_getResourceAsStreamAtStart, [JR.lget(f, :resource), 1]))
            if (JR.lget(f, :inputStream) == nil) do
                throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Unable to obtain: "]), :jm_append, [JR.lget(f, :resource)]), :jm_toString, []))})
            end
        end
        throw({:jreturn, JR.lget(f, :inputStream)})
    end)
  end


  def jm_getResourceAsStreamAtStart(this, p_resource, p_startIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :startIndex, p_startIndex)
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :index, JR.index_of(JR.lget(f, :resource), JR.get(JR.lget(f, :commonSeps), :COLON)))
        JR.lset(f, :resourcePath, JR.substring(JR.lget(f, :resource), JR.int32(JR.lget(f, :index) + JR.lget(f, :startIndex))))
        JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
        if (JR.lget(f, :inputStream) != nil) do
            throw({:jreturn, JR.lget(f, :inputStream)})
        end
        JR.lset(f, :classLoader, ResourceUtil.jstatic_classLoader())
        JR.lset(f, :inputStream, JR.call(JR.lget(f, :classLoader), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
        if (JR.lget(f, :inputStream) != nil) do
            throw({:jreturn, JR.lget(f, :inputStream)})
        end
        JR.lset(f, :inputStream, JR.call(JR.call(J.Thread.jm_currentThread(), :jm_getContextClassLoader, []), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
        if (JR.lget(f, :inputStream) != nil) do
            throw({:jreturn, JR.lget(f, :inputStream)})
        end
        throw({:jreturn, JR.lget(f, :inputStream)})
    end)
  end


  def jm_addResource(this, p_resource, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :value, p_value)
        nil
    end)
  end
end


