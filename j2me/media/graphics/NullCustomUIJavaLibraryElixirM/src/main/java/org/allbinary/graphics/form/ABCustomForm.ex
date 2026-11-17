# Generated Code Do Not Modify
# package org.allbinary.graphics.form

defmodule ABCustomForm do
  def jsuper(), do: CustomScreen

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
    nil
  end


  def jinit(this, p_title, p_items, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
      CustomScreen.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_title, p_items, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_items, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_getAllitems(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.anew(0, nil)})
    end)
  end


  def jm_size(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_setSelectedIndex(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        nil
    end)
  end


  def jm_getSelectedIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_deleteAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_delete(this, p_itemNum) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
        nil
    end)
  end


  def jm_append(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        throw({:jreturn, -1})
    end)
  end


  def jm_insert(this, p_itemNum, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
      JR.lset(f, :item, p_item)
        nil
    end)
  end


  def jm_set(this, p_itemNum, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
      JR.lset(f, :item, p_item)
        nil
    end)
  end


  def jm_get(this, p_itemNum) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
        throw({:jreturn, ABCustomItem.jm_getNullInstance()})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_getTitle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end
end


