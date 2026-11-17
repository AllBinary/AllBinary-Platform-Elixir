# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

defmodule ABCustomGaugeItem do
  def jsuper(), do: ABCustomItem
def jstatic_NULL_GAUGE_ITEM(), do: JR.static_get(__MODULE__, :NULL_GAUGE_ITEM, fn -> ABCustomGaugeItem.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), 1, 0, JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)) end)
  def jstatic_set_NULL_GAUGE_ITEM(value), do: JR.static_put(__MODULE__, :NULL_GAUGE_ITEM, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_label, p_maxValue, p_initialValue, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :maxValue, p_maxValue)
      JR.lset(f, :initialValue, p_initialValue)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ABCustomItem.jinit(this, JR.lget(f, :label), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        ABCustomGaugeItem.jinitfields(this)
    end)
  end

  def jnew(p_label, p_maxValue, p_initialValue, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_maxValue, p_initialValue, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end
end


