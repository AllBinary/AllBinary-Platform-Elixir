#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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
# package org.allbinary

#like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
defmodule MIDPUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MIDPUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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
        throw({:jreturn, MIDPUtil.jstatic_instance()})
    end)
  end


  def jm_createImageWH(this, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jreturn, Image.jm_createImage(JR.lget(f, :width), JR.lget(f, :height))})
    end)
  end


  def jm_createImageFromByteArray(this, p_imageData, p_imageOffset, p_imageLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageData, p_imageData)
      JR.lset(f, :imageOffset, p_imageOffset)
      JR.lset(f, :imageLength, p_imageLength)
        throw({:jreturn, Image.jm_createImage(JR.lget(f, :imageData), JR.lget(f, :imageOffset), JR.lget(f, :imageLength))})
    end)
  end


  def jm_createImageFromInputStream(this, p_inputStream) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
        throw({:jreturn, Image.jm_createImage(JR.lget(f, :inputStream))})
    end)
  end


  def jm_createPlayerFromInputStream(this, p_inputStream, p_type) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
      JR.lset(f, :type, p_type)
        throw({:jreturn, Manager.jm_createPlayer(JR.lget(f, :inputStream), JR.lget(f, :type))})
    end)
  end


  def jm_appendItem(this, p_form, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :form, p_form)
      JR.lset(f, :item, p_item)
        throw({:jreturn, JR.call(JR.lget(f, :form), :jm_append, [JR.lget(f, :item)])})
    end)
  end
end


