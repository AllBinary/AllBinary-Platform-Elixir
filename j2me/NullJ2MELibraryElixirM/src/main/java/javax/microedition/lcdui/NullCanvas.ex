# Generated Code Do Not Modify
# package javax.microedition.lcdui

defmodule NullCanvas do
  def jsuper(), do: Canvas
def jstatic_NULL_CANVAS(), do: JR.static_get(__MODULE__, :NULL_CANVAS, fn -> NullCanvas.jnew() end)
  def jstatic_set_NULL_CANVAS(value), do: JR.static_put(__MODULE__, :NULL_CANVAS, value)

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
      Canvas.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setFullScreenMode(this, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
        nil
    end)
  end


  def jm_sizeChanged(this, p_w, p_h) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :w, p_w)
      JR.lset(f, :h, p_h)
        nil
    end)
  end


  def jm_getCommandStack(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_isCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_addCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        nil
    end)
  end


  def jm_removeCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        nil
    end)
  end


  def jm_removeAllCommands(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setCommandListener(this, p_l) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :l, p_l)
        nil
    end)
  end


  def jm_getCustomCommandListener(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_isPaused(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_removePauseCommand(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
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


  def jm_destroy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setPaused(this, p_isPaused) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isPaused, p_isPaused)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_pointerDragged(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        nil
    end)
  end


  def jm_pointerPressed(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        nil
    end)
  end


  def jm_pointerReleased(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        nil
    end)
  end
end


