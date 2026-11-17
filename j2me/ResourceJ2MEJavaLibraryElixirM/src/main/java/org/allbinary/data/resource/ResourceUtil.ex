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

#J2ME
defmodule ResourceUtil do
  def jsuper(), do: JObject
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


  def jm_getResourceAsStream(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resource)]))
        if (JR.lget(f, :inputStream) == nil) do
            JR.lset(f, :inputStream, JR.call(this, :jm_getResourceAsStreamAtStart, [JR.lget(f, :resource), 2]))
            if (JR.lget(f, :inputStream) == nil) do
                JR.lset(f, :inputStream, JR.call(this, :jm_getResourceAsStreamAtStart, [JR.lget(f, :resource), 1]))
                if (JR.lget(f, :inputStream) == nil) do
                    JR.lset(f, :stringMaker, StringMaker.jnew())
                    JR.lset(f, :index, JR.call(JR.lget(f, :resource), :jm_lastIndexOf, [?/]))
                    JR.lset(f, :resourcePath, JR.substring(JR.lget(f, :resource), JR.int32(JR.lget(f, :index) + 1)))
                    JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                    if (JR.lget(f, :inputStream) == nil) do
                        JR.lset(f, :resourcePath, JR.substring(JR.lget(f, :resource), JR.lget(f, :index)))
                        JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                        if (JR.lget(f, :inputStream) == nil) do
                            JR.lset(f, :RES, "res")
                            JR.lset(f, :resourcePath, JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :RES)]), :jm_append, [JR.substring(JR.lget(f, :resource), JR.lget(f, :index))]), :jm_toString, []))
                            JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                            if (JR.lget(f, :inputStream) == nil) do
                                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                                JR.lset(f, :resourcePath, JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, ["/"]), :jm_append, [JR.lget(f, :RES)]), :jm_append, [JR.substring(JR.lget(f, :resource), JR.lget(f, :index))]), :jm_toString, []))
                                JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                                JR.lset(f, :COLON, JR.get(CommonSeps.jm_getInstance(), :COLON))
                                if (JR.lget(f, :inputStream) == nil) do
                                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                                    JR.lset(f, :resourcePath, JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :RES)]), :jm_append, [JR.lget(f, :COLON)]), :jm_append, [JR.substring(JR.lget(f, :resource), JR.lget(f, :index))]), :jm_toString, []))
                                    JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                                    if (JR.lget(f, :inputStream) == nil) do
                                        JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                                        JR.lset(f, :resourcePath, JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :RES)]), :jm_append, [JR.lget(f, :COLON)]), :jm_append, [JR.substring(JR.lget(f, :resource), JR.int32(JR.lget(f, :index) + 1))]), :jm_toString, []))
                                        JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                                        if (JR.lget(f, :inputStream) == nil) do
                                            JR.lset(f, :RESOURCE_STRING, "resource")
                                            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                                            JR.lset(f, :resourcePath, JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :RESOURCE_STRING)]), :jm_append, [JR.lget(f, :COLON)]), :jm_append, [JR.substring(JR.lget(f, :resource), JR.lget(f, :index))]), :jm_toString, []))
                                            JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                                            if (JR.lget(f, :inputStream) == nil) do
                                                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                                                JR.lset(f, :resourcePath, JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :RESOURCE_STRING)]), :jm_append, [JR.lget(f, :COLON)]), :jm_append, [JR.substring(JR.lget(f, :resource), JR.int32(JR.lget(f, :index) + 1))]), :jm_toString, []))
                                                JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
                                                if (JR.lget(f, :inputStream) == nil) do
                                                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                                                    throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, ["Unable to obtain: "]), :jm_append, [JR.lget(f, :resource)]), :jm_toString, []))})
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
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
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :index, JR.index_of(JR.lget(f, :resource), JR.get(CommonSeps.jm_getInstance(), :COLON)))
        JR.lset(f, :resourcePath, JR.substring(JR.lget(f, :resource), JR.int32(JR.lget(f, :index) + JR.lget(f, :startIndex))))
        JR.lset(f, :inputStream, JR.call(JR.class_name(JR.lget(f, :resource)), :jm_getResourceAsStream, [JR.lget(f, :resourcePath)]))
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


