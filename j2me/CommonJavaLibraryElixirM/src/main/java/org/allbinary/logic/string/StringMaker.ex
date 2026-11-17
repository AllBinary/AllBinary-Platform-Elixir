# Generated Code Do Not Modify
# package org.allbinary.logic.string

defmodule StringMaker do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :charArray, nil)
    JR.put(this, :currentLength, 0)
        
        JR.put(this, :currentLength, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :charArray, JR.anew(20, 0))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_append(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        JR.lset(f, :stringLength, byte_size(JR.lget(f, :string)))
        JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentLength) + JR.lget(f, :stringLength))])
        JR.get_chars(JR.lget(f, :string), 0, JR.lget(f, :stringLength), JR.get(this, :charArray), JR.get(this, :currentLength))
        JR.put(this, :currentLength, JR.int32(JR.get(this, :currentLength) + JR.lget(f, :stringLength)))
        throw({:jreturn, this})
    end)
  end


  def jm_appendchar(this, p_c) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :c, p_c)
        JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentLength) + 1)])
        JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), JR.lget(f, :c))
        throw({:jreturn, this})
    end)
  end


  def jm_appendCharArray(this, p_charArray, p_start, p_end) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :charArray, p_charArray)
      JR.lset(f, :start, p_start)
      JR.lset(f, :end, p_end)
        JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentLength) + (JR.int32(JR.lget(f, :end) - JR.lget(f, :start))))])
        JR.lset(f, :index, JR.lget(f, :start))
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :end)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), JR.aget(JR.lget(f, :charArray), JR.lget(f, :index)))
        end)
        throw({:jreturn, this})
    end)
  end


  def jm_appendbyte(this, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :b, p_b)
        JR.call(this, :jm_append, [JR.str(JR.lget(f, :b))])
        throw({:jreturn, this})
    end)
  end


  def jm_appendshort(this, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :b, p_b)
        JR.call(this, :jm_append, [JR.str(JR.lget(f, :b))])
        throw({:jreturn, this})
    end)
  end


  def jm_appendint(this, p_i) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :i, p_i)
        JR.call(this, :jm_append, [JR.str(JR.lget(f, :i))])
        throw({:jreturn, this})
    end)
  end


  def jm_appendlong(this, p_l) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :l, p_l)
        JR.call(this, :jm_append, [JR.str(JR.lget(f, :l))])
        throw({:jreturn, this})
    end)
  end


  def jm_appendfloat(this, p_f) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :f, p_f)
        JR.call(this, :jm_append, [JR.str(JR.lget(f, :f))])
        throw({:jreturn, this})
    end)
  end


  def jm_appendboolean(this, p_bool) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bool, p_bool)
        if JR.lget(f, :bool) do
            JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentLength) + 4)])
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?t)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?r)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?u)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?e)
        else
            JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentLength) + 5)])
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?f)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?a)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?l)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?s)
            JR.aset(JR.get(this, :charArray), JR.postinc(this, :currentLength, 1), ?e)
        end
        throw({:jreturn, this})
    end)
  end


  def jm_ensureCapacity(this, p_minSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :minSize, p_minSize)
        JR.lset(f, :oldCapacity, JR.alength(JR.get(this, :charArray)))
        if (JR.lget(f, :minSize) > JR.lget(f, :oldCapacity)) do
            JR.lset(f, :newCapacity, JR.int32(JR.lget(f, :oldCapacity) * 3))
            if (JR.lget(f, :newCapacity) < JR.lget(f, :minSize)) do
                JR.lset(f, :newCapacity, JR.lget(f, :minSize))
            end
            JR.lset(f, :copy, JR.anew(JR.lget(f, :newCapacity), 0))
            JR.lset(f, :min, JR.call(this, :jm_min, [JR.alength(JR.get(this, :charArray)), JR.lget(f, :newCapacity)]))
            JR.arraycopy(JR.get(this, :charArray), 0, JR.lget(f, :copy), 0, JR.lget(f, :min))
            JR.put(this, :charArray, JR.lget(f, :copy))
        end
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


  def jm_delete(this, p_start, p_end) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :start, p_start)
      JR.lset(f, :end, p_end)
        JR.put(this, :currentLength, JR.int32(JR.get(this, :currentLength) - (JR.int32(JR.lget(f, :end) - JR.lget(f, :start)))))
        throw({:jreturn, this})
    end)
  end


  def jm_length(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentLength)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.from_chars(JR.get(this, :charArray), 0, JR.get(this, :currentLength))})
    end)
  end
end


