# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABStringComponent do
  def jsuper(), do: JObject
def jstatic_NULL_STRING_COMPONENT(), do: JR.static_get(__MODULE__, :NULL_STRING_COMPONENT, fn -> ABStringComponent.jnew(JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)) end)
  def jstatic_set_NULL_STRING_COMPONENT(value), do: JR.static_put(__MODULE__, :NULL_STRING_COMPONENT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getBackgroundBasicColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(BasicColorFactory.jm_getInstance(), :WHITE)})
    end)
  end


  def jinit(this, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_getForegroundBasicColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(BasicColorFactory.jm_getInstance(), :WHITE)})
    end)
  end


  def jm_setForegroundBasicColor(this, p_foregroundBasicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        nil
    end)
  end
end


