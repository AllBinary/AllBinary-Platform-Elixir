# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABCustomItemInterface do
  def jsuper(), do: JObject


  def jm_getMinimumWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getMinimumWidth")})
    end)
  end


  def jm_getMinimumHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getMinimumHeight")})
    end)
  end


  def jm_getLabel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getLabel")})
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      throw({:jexception, JR.exception("AbstractMethodError", "paintXY")})
    end)
  end


  def jm_paintUnselected(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      throw({:jexception, JR.exception("AbstractMethodError", "paintUnselected")})
    end)
  end
end


