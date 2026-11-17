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

defmodule GameFeatureImageCacheFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
        throw({:jreturn, ImageCacheFactory.jm_getInstance()})
    end)
  end


  def jm_init() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        ImageCacheFactory.jm_init()
    end)
  end


  def jm_releaseAll() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        JR.call(ImageCacheFactory.jm_getInstance(), :jm_releaseAll, [])
    end)
  end
end


