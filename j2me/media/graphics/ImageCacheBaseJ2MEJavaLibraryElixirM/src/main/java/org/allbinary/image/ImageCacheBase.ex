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
# package org.allbinary.image

defmodule ImageCacheBase do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :imageFactory, nil)
    JR.put(this, :hashtable, nil)
    JR.put(this, :SIZE, 0)
    JR.put(this, :widths, nil)
    JR.put(this, :heights, nil)
    JR.put(this, :listOfList, nil)
    JR.put(this, :availableListOfList, nil)
    JR.put(this, :volume, 0)
    JR.put(this, :nextIndex, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :imageFactory, ImageFactory.jm_getInstance())
        JR.put(this, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.put(this, :SIZE, 128)
        JR.put(this, :widths, JR.anew(JR.get(this, :SIZE), 0))
        JR.put(this, :heights, JR.anew(JR.get(this, :SIZE), 0))
        JR.put(this, :listOfList, JR.anew(JR.get(this, :SIZE), nil))
        JR.put(this, :availableListOfList, JR.anew(JR.get(this, :SIZE), nil))
        JR.put(this, :volume, 0)
        JR.put(this, :nextIndex, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :listOfList)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :listOfList), JR.lget(f, :index), BasicArrayListD.jnew())
        end)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :availableListOfList)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :availableListOfList), JR.lget(f, :index), BasicArrayListD.jnew())
        end)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getImage(this, p_resourceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resourceId, p_resourceId)
        JR.lset(f, :imageCanBeNull, JR.call(JR.get(this, :hashtable), :jm_get, [JR.lget(f, :resourceId)]))
        if (JR.lget(f, :imageCanBeNull) == nil) do
            throw({:jreturn, NullImage.jstatic_NULL_IMAGE()})
        end
        throw({:jreturn, JR.lget(f, :imageCanBeNull)})
    end)
  end


  def jm_releaseAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :listOfList)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(JR.get(this, :availableListOfList), JR.lget(f, :index)), :jm_clear, [])
            JR.call(JR.aget(JR.get(this, :availableListOfList), JR.lget(f, :index)), :jm_addAllList, [JR.aget(JR.get(this, :listOfList), JR.lget(f, :index))])
        end)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["ImageCache: "]), :jm_append, [JR.call(this, :jm_toString, [])]), :jm_toString, []), this, "releaseAll"])
    end)
  end


  def jm_getIndexWH(this, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.lset(f, :foundIndex, -1)
        JR.lset(f, :size, JR.alength(JR.get(this, :widths)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if ((JR.aget(JR.get(this, :widths), JR.lget(f, :index)) == JR.lget(f, :width)) && (JR.aget(JR.get(this, :heights), JR.lget(f, :index)) == JR.lget(f, :height))) do
                JR.lset(f, :foundIndex, JR.lget(f, :index))
                throw({:jreturn, JR.lget(f, :foundIndex)})
            end
        end)
        throw({:jreturn, JR.lget(f, :foundIndex)})
    end)
  end


  def jm_getFromAvailable(this, p_foundIndex, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :foundIndex, p_foundIndex)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        if (JR.lget(f, :foundIndex) != -1) do
            if (JR.call(JR.aget(JR.get(this, :availableListOfList), JR.lget(f, :foundIndex)), :jm_size, []) > 0) do
                JR.lset(f, :list, JR.aget(JR.get(this, :availableListOfList), JR.lget(f, :foundIndex)))
                throw({:jreturn, JR.call(JR.lget(f, :list), :jm_removeAt, [JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 1)])})
            end
        end
        throw({:jreturn, NullImage.jstatic_NULL_IMAGE()})
    end)
  end


  def jm_get(this, p_caller, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :caller, p_caller)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getWithKey(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_createImage(this, p_caller, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :caller, p_caller)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jreturn, JR.call(JR.get(this, :imageFactory), :jm_createImage, [JR.lget(f, :caller), JR.lget(f, :width), JR.lget(f, :height)])})
    end)
  end


  def jm_createImageFromInputStream(this, p_key, p_inputStream) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
      JR.lset(f, :inputStream, p_inputStream)
        throw({:jreturn, JR.call(JR.get(this, :imageFactory), :jm_createImageFromInputStream, [JR.lget(f, :key), JR.lget(f, :inputStream)])})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :index, JR.int32(JR.get(this, :nextIndex) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :width, JR.aget(JR.get(this, :widths), JR.lget(f, :index)))
            JR.lset(f, :height, JR.aget(JR.get(this, :heights), JR.lget(f, :index)))
            JR.lset(f, :total, JR.call(JR.aget(JR.get(this, :listOfList), JR.lget(f, :index)), :jm_size, []))
            JR.lset(f, :totalAvailable, JR.call(JR.aget(JR.get(this, :availableListOfList), JR.lget(f, :index)), :jm_size, []))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" w: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :width)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" h: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :height)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :TOTAL_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :total)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" available: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :totalAvailable)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getHashtableP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hashtable)})
    end)
  end


  def jm_init(this, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
        nil
    end)
  end


  def jm_initProgress(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


