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

defmodule ImageCache do
  def jsuper(), do: ImageCacheBase
def jstatic_NULL_IMAGE_CACHE(), do: JR.static_get(__MODULE__, :NULL_IMAGE_CACHE, fn -> ImageCache.jnew() end)
  def jstatic_set_NULL_IMAGE_CACHE(value), do: JR.static_put(__MODULE__, :NULL_IMAGE_CACHE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :tsUtil, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      ImageCacheBase.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_addListener(this, p_renderer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :renderer, p_renderer)
        nil
    end)
  end


  def jm_getIndex(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        JR.lset(f, :gdResources, GDResources.jm_getInstance())
        JR.lset(f, :resourceStringArray, JR.get(JR.lget(f, :gdResources), :resourceStringArray))
        JR.lset(f, :size, JR.alength(JR.lget(f, :resourceStringArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.lget(f, :resourceStringArray), JR.lget(f, :index)) == JR.lget(f, :key)) do
                throw({:jreturn, JR.lget(f, :index)})
            end
        end)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["unable to find key: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :key)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        throw({:jexception, JR.exception("RuntimeException", "")})
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
        JR.lset(f, :foundIndex, JR.call(this, :jm_getIndexWH, [JR.lget(f, :width), JR.lget(f, :height)]))
        JR.lset(f, :image, JR.call(this, :jm_getFromAvailable, [JR.lget(f, :foundIndex), JR.lget(f, :width), JR.lget(f, :height)]))
        if (JR.lget(f, :image) == NullImage.jstatic_NULL_IMAGE()) do
            JR.put(this, :volume, (JR.get(this, :volume) + JR.int32(JR.lget(f, :width) * JR.lget(f, :height))))
            if (JR.get(this, :volume) > 32000) do
                JR.call(JR.get(this, :tsUtil), :jm_gc, [])
                JR.put(this, :volume, 0)
            end
            JR.lset(f, :image, JR.call(this, :jm_createImage, [JR.lget(f, :caller), JR.lget(f, :width), JR.lget(f, :height)]))
            JR.lset(f, :widths, JR.get(this, :widths))
            if (JR.get(this, :nextIndex) > JR.int32(JR.alength(JR.lget(f, :widths)) - 1)) do
                if (JR.lget(f, :foundIndex) == -1) do
                    JR.lset(f, :foundIndex, JR.get(this, :nextIndex))
                    JR.aset(JR.lget(f, :widths), JR.get(this, :nextIndex), JR.lget(f, :width))
                    JR.aset(JR.get(this, :heights), JR.get(this, :nextIndex), JR.lget(f, :height))
                    JR.postinc(this, :nextIndex, 1)
                end
                JR.call(JR.aget(JR.get(this, :listOfList), JR.lget(f, :foundIndex)), :jm_add, [JR.lget(f, :image)])
            end
        end
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end


  def jm_getWithKey(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        JR.lset(f, :image, JR.call(this, :jm_getImage, [JR.lget(f, :key)]))
        if (JR.lget(f, :image) == NullImage.jstatic_NULL_IMAGE()) do
            JR.lset(f, :resourceUtil, ResourceUtil.jm_getInstance())
            JR.lset(f, :resourceInputStream, JR.call(JR.lget(f, :resourceUtil), :jm_getResourceAsStream, [JR.lget(f, :key)]))
            if (JR.lget(f, :resourceInputStream) == nil) do
                throw({:jexception, JR.exception("RuntimeException", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Image resource is not available for key: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :key)])]), :jm_toString, []))})
            end
            try do
                JR.lset(f, :image, JR.call(this, :jm_createImageFromInputStream, [JR.lget(f, :key), JR.lget(f, :resourceInputStream)]))
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, ["Exception: Trying Again After GC", this, JR.get(JR.get(this, :commonStrings), :GET), JR.lget(f, :e)])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["InputStream: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :resourceInputStream)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :GET)])
                JR.call(JR.get(this, :tsUtil), :jm_gc, [])
                JR.call(JR.get(this, :tsUtil), :jm_gc, [])
                JR.call(JR.get(this, :logUtil), :jm_putF, [Memory.jm_getInfo(), this, JR.get(JR.get(this, :commonStrings), :GET)])
                J.Thread.jm_sleep(100)
                JR.lset(f, :image, JR.call(this, :jm_createImageFromInputStream, [JR.lget(f, :key), JR.lget(f, :resourceInputStream)]))
            end
            if J2MEUtil.jm_isHTML() do
                nil
            else
                JR.call(JR.lget(f, :resourceInputStream), :jm_close, [])
            end
            JR.call(JR.get(this, :hashtable), :jm_put, [JR.lget(f, :key), JR.lget(f, :image)])
        end
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end


  def jm_loadImageForAnimation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_progressEnded(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_runTask(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_isLazy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end
end


