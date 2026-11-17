# Generated Code Do Not Modify
# package org.allbinary.game.input

defmodule CompleteMotionGestureInputEventListener do
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


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        nil
    end)
  end


  def jm_onCompleteMotionGestureInputEvent(this, p_completeMotionGestureInputEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :completeMotionGestureInputEvent, p_completeMotionGestureInputEvent)
        nil
    end)
  end
end


