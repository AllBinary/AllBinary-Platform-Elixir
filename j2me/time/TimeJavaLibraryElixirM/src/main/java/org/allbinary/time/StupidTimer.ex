# Generated Code Do Not Modify
# package org.allbinary.time

defmodule StupidTimer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :nullUtil, nil)
    JR.put(this, :threadObjectUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :nullUtil, NullUtil.jm_getInstance())
        JR.put(this, :threadObjectUtil, ThreadObjectUtil.jm_getInstance())
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


  def jm_visitBool(this, p_visitorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :visitorInterface, p_visitorInterface)
        JR.lset(f, :result, JR.call(JR.lget(f, :visitorInterface), :jm_visit, [JR.get(JR.get(this, :nullUtil), :NULL_OBJECT)]))
        JR.lset(f, :result2, JR.call(JR.lget(f, :result), :jm_booleanValue, []))
        throw({:jreturn, JR.lget(f, :result2)})
    end)
  end


  def jm_visit(this, p_visitorInterface, p_timeDelayHelper) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :visitorInterface, p_visitorInterface)
      JR.lset(f, :timeDelayHelper, p_timeDelayHelper)
        JR.lset(f, :tookTooLong, false)
        JR.lset(f, :WAITING_FOR, "Waiting for: ")
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :WAITING_FOR)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :visitorInterface)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :VISIT))
        JR.lset(f, :index, 0)
        JR.jwhile(fn -> JR.call(this, :jm_visitBool, [JR.lget(f, :visitorInterface)]) end, fn ->
            if (rem(JR.lget(f, :index), 10) == 0) do
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :WAITING_FOR)]), :jm_appendint, [JR.lget(f, :index)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :VISIT))
            end
            JR.lpostinc(f, :index, 1)
            (
                JR.call(JR.get(this, :threadObjectUtil), :jm_waitObjectFor, [this, 1800])
            )
            if JR.call(JR.lget(f, :timeDelayHelper), :jm_isTimeTNT, []) do
                JR.lset(f, :tookTooLong, true)
                throw(:jbreak)
            end
        end)
        if JR.lget(f, :tookTooLong) do
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :VISIT), JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Took Too Long: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :visitorInterface)])]), :jm_toString, []))])
        else
            PreLogUtil.jm_put(JR.call(JR.lget(f, :timeDelayHelper), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :VISIT))
        end
    end)
  end


  def jm_stopWaiting(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            JR.call(JR.get(this, :threadObjectUtil), :jm_notifyObject, [this])
        )
    end)
  end
end


