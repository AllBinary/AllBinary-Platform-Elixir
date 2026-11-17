# Generated Code Do Not Modify
# package org.allbinary.graphics.font

#OpenGLESBaseJavaLibrary
defmodule FontDebugBase do
  def jsuper(), do: JObject
def jstatic_instanceBase(), do: JR.static_get(__MODULE__, :instanceBase, fn -> FontDebugBase.jnew() end)
  def jstatic_set_instanceBase(value), do: JR.static_put(__MODULE__, :instanceBase, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SET_FONT, nil)
        JR.put(this, :SET_FONT, "setFont")
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
        throw({:jreturn, FontDebugBase.jstatic_instanceBase()})
    end)
  end


  def jm_debugMetrics(this, p_currentFont, p_convertedTextSize, p_displayMetrics, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentFont, p_currentFont)
      JR.lset(f, :convertedTextSize, p_convertedTextSize)
      JR.lset(f, :displayMetrics, p_displayMetrics)
      JR.lset(f, :stringBuffer, p_stringBuffer)
        nil
    end)
  end


  def jm_debugDpi(this, p_densityDpi, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :densityDpi, p_densityDpi)
      JR.lset(f, :stringBuffer, p_stringBuffer)
        nil
    end)
  end


  def jm_debugDimension(this, p_currentFont, p_convertedTextSize, p_longestDimensionTotalPixels, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentFont, p_currentFont)
      JR.lset(f, :convertedTextSize, p_convertedTextSize)
      JR.lset(f, :longestDimensionTotalPixels, p_longestDimensionTotalPixels)
      JR.lset(f, :stringBuffer, p_stringBuffer)
        nil
    end)
  end
end


