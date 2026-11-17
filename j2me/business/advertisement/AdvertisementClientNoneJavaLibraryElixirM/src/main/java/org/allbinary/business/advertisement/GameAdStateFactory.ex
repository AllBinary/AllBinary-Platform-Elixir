# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

defmodule GameAdStateFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameAdStateFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameAdStateArray, nil)
    JR.put(this, :gameAdState, nil)
        JR.put(this, :gameAdStateArray, JR.afrom([GameAdState.jnew(AppNameLicensingAdConfiguration.jnew())]))
        JR.put(this, :gameAdState, JR.aget(JR.get(this, :gameAdStateArray), 0))
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
        throw({:jreturn, GameAdStateFactory.jstatic_instance()})
    end)
  end


  def jm_getCurrentInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameAdState)})
    end)
  end


  def jm_getInstanceForApp(this, p_softwareInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :softwareInformation, p_softwareInformation)
        JR.put(this, :gameAdState, JR.aget(JR.get(this, :gameAdStateArray), 0))
        throw({:jreturn, JR.aget(JR.get(this, :gameAdStateArray), 0)})
    end)
  end


  def jm_isEnabled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end
end


