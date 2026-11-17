# Generated Code Do Not Modify
# package javax.microedition.lcdui

defmodule NullCommandListener do
  def jsuper(), do: JObject
def jstatic_NULL_COMMAND_LISTENER(), do: JR.static_get(__MODULE__, :NULL_COMMAND_LISTENER, fn -> NullCommandListener.jnew() end)
  def jstatic_set_NULL_COMMAND_LISTENER(value), do: JR.static_put(__MODULE__, :NULL_COMMAND_LISTENER, value)

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


  def jm_commandAction(this, p_c, p_d) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :c, p_c)
      JR.lset(f, :d, p_d)
        nil
    end)
  end
end


