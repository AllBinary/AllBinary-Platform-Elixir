# Generated Code Do Not Modify
# package org.allbinary

defmodule KotlinUtil do
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


  def jm_isKotlin() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getShortName() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end
end


