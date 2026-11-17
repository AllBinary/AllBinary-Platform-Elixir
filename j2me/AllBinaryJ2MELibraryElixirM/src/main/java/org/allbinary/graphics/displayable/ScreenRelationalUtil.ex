# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

defmodule ScreenRelationalUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ScreenRelationalUtil.jnew() end)
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
        throw({:jreturn, ScreenRelationalUtil.jstatic_instance()})
    end)
  end


  def jm_getScaleImage(this, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
        throw({:jreturn, JR.call(this, :jm_getScaleWH, [JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, [])])})
    end)
  end


  def jm_getScaleWH(this, p_aWidth, p_aHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aWidth, p_aWidth)
      JR.lset(f, :aHeight, p_aHeight)
        throw({:jreturn, JR.call(this, :jm_getScaleWHA, [JR.lget(f, :aWidth), JR.lget(f, :aHeight), 20])})
    end)
  end


  def jm_getScaleWHA(this, p_aWidth, p_aHeight, p_add) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aWidth, p_aWidth)
      JR.lset(f, :aHeight, p_aHeight)
      JR.lset(f, :add, p_add)
        JR.lset(f, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :last, JR.call(JR.lget(f, :displayInfoSingleton), :jm_getLast, []))
        JR.lset(f, :width, (JR.aget(JR.lget(f, :last), JR.get(JR.lget(f, :displayInfoSingleton), :WIDTH)) * 1.0))
        JR.lset(f, :height, (JR.aget(JR.lget(f, :last), JR.get(JR.lget(f, :displayInfoSingleton), :HEIGHT)) * 1.0))
        JR.lset(f, :largestSize, JR.lget(f, :width))
        if (JR.lget(f, :largestSize) < JR.lget(f, :height)) do
            JR.lset(f, :largestSize, JR.lget(f, :height))
        end
        JR.lset(f, :scale, ((JR.lget(f, :largestSize)) / (JR.lget(f, :aWidth) * 1.0)))
        throw({:jreturn, JR.lget(f, :scale)})
    end)
  end


  def jm_getScaledHeight(this, p_aWidth, p_aHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aWidth, p_aWidth)
      JR.lset(f, :aHeight, p_aHeight)
        throw({:jreturn, JR.int32(JR.d2i(((JR.call(this, :jm_getScaleWH, [JR.lget(f, :aWidth), JR.lget(f, :aHeight)]) * (JR.lget(f, :aHeight) * 1.0)))))})
    end)
  end


  def jm_getScaledHeightAdd(this, p_aWidth, p_aHeight, p_add) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aWidth, p_aWidth)
      JR.lset(f, :aHeight, p_aHeight)
      JR.lset(f, :add, p_add)
        throw({:jreturn, JR.int32(JR.d2i(((JR.call(this, :jm_getScaleWHA, [JR.lget(f, :aWidth), JR.lget(f, :aHeight), JR.lget(f, :add)]) * (JR.lget(f, :aHeight) * 1.0)))))})
    end)
  end
end


