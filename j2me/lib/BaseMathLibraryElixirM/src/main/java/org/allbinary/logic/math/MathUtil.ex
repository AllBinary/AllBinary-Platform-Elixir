# Generated Code Do Not Modify
# package org.allbinary.logic.math

defmodule MathUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MathUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ACCURACY, 0)
        JR.put(this, :ACCURACY, 100)
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
        throw({:jreturn, MathUtil.jstatic_instance()})
    end)
  end


  def jm_getTotalDigits(this, p_digits) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :digits, p_digits)
        JR.lset(f, :total, 0)
        JR.jwhile(fn -> (JR.lget(f, :digits) > 0) end, fn ->
            JR.lset(f, :digits, div(JR.lget(f, :digits), 10))
            JR.lpostinc(f, :total, 1)
        end)
        throw({:jreturn, JR.lget(f, :total)})
    end)
  end


  def jm_sqrt(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        if (JR.lget(f, :value) <= 1) do
            throw({:jreturn, JR.lget(f, :value)})
        end
        JR.lset(f, :accumulated, Bitwise.bsr(JR.lget(f, :value), 1))
        JR.lset(f, :result, Bitwise.bsr((JR.int32(JR.lget(f, :accumulated) + (div(JR.lget(f, :value), JR.lget(f, :accumulated))))), 1))
        JR.jdo(fn ->
            JR.lset(f, :accumulated, JR.lget(f, :result))
            JR.lset(f, :result, Bitwise.bsr((JR.int32(JR.lget(f, :accumulated) + (div(JR.lget(f, :value), JR.lget(f, :accumulated))))), 1))
        end, fn -> (JR.lget(f, :accumulated) > JR.lget(f, :result)) end)
        throw({:jreturn, JR.lget(f, :accumulated)})
    end)
  end


  def jm_sqrtd(this, p_x) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
        if (JR.lget(f, :x) == 0) do
            throw({:jreturn, (0.0 * 1.0)})
        end
        if (JR.lget(f, :x) < 0) do
            throw({:jreturn, (-1.0 * 1.0)})
        end
        JR.lset(f, :result, (JR.lget(f, :x) * 1.0))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :ACCURACY)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :result, (((JR.lget(f, :result) + (((JR.lget(f, :x) * 1.0) / JR.lget(f, :result))))) / 2.0))
        end)
        throw({:jreturn, JR.lget(f, :result)})
    end)
  end


  def jm_abs(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, (if ((JR.lget(f, :value) < 0)), do: -JR.lget(f, :value), else: JR.lget(f, :value))})
    end)
  end


  def jm_abslong(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, (if ((JR.lget(f, :value) < 0)), do: -JR.lget(f, :value), else: JR.lget(f, :value))})
    end)
  end


  def jm_min(this, p_value, p_value2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :value2, p_value2)
        throw({:jreturn, (if ((JR.lget(f, :value) <= JR.lget(f, :value2))), do: JR.lget(f, :value), else: JR.lget(f, :value2))})
    end)
  end


  def jm_max(this, p_value, p_value2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :value2, p_value2)
        throw({:jreturn, (if ((JR.lget(f, :value) >= JR.lget(f, :value2))), do: JR.lget(f, :value), else: JR.lget(f, :value2))})
    end)
  end
end


