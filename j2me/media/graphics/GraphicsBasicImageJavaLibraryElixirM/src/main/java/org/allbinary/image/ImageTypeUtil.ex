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

defmodule ImageTypeUtil do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> ImageTypeUtil.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :PNG, nil)
    JR.put(this, :JPG, nil)
    JR.put(this, :GIF, nil)
    JR.put(this, :list, nil)
        JR.put(this, :PNG, "png")
        JR.put(this, :JPG, "jpg")
        JR.put(this, :GIF, "gif")
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :JPG)])
        JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :GIF)])
        JR.call(JR.get(this, :list), :jm_add, [JR.get(this, :PNG)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isSupported(this, p_mediaFileType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mediaFileType, p_mediaFileType)
        JR.lset(f, :mediaFileType, String.downcase(JR.lget(f, :mediaFileType)))
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :list), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :name, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :index)]))
            if (JR.call(JR.lget(f, :mediaFileType), :jm_compareTo, [JR.lget(f, :name)]) == 0) do
                throw({:jreturn, true})
            end
        end)
        throw({:jreturn, false})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ImageTypeUtil.jstatic_SINGLETON()})
    end)
  end
end


