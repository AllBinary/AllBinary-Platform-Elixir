# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

defmodule AppNameLicensingAdConfiguration do
  def jsuper(), do: AdConfiguration

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        AdConfiguration.jinit(this, JR.afrom([JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]))
        AppNameLicensingAdConfiguration.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


