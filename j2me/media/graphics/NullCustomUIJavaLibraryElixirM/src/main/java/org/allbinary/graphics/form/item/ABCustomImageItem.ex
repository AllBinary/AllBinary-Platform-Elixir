# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABCustomImageItem do
  def jsuper(), do: ABCustomItem

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :yOffset, 0)
        JR.put(this, :yOffset, 0)
    nil
  end


  def jinit(this, p_label, p_image, p_layout, p_altText, p_basicColor, p_yOffset) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :image, p_image)
      JR.lset(f, :layout, p_layout)
      JR.lset(f, :altText, p_altText)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :yOffset, p_yOffset)
        ABCustomItem.jinit(this, JR.lget(f, :label), JR.lget(f, :basicColor), JR.lget(f, :basicColor))
        ABCustomImageItem.jinitfields(this)
    end)
  end

  def jnew(p_label, p_image, p_layout, p_altText, p_basicColor, p_yOffset) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_image, p_layout, p_altText, p_basicColor, p_yOffset)
    this
  end


  def jm_getImage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, NullImage.jstatic_NULL_IMAGE()})
    end)
  end
end


