# Generated Code Do Not Modify
# package org.allbinary.util

defmodule ArrayUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ArrayUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :mathUtil, nil)
        JR.put(this, :mathUtil, MathUtil.jm_getInstance())
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
        throw({:jreturn, ArrayUtil.jstatic_instance()})
    end)
  end


  def jm_copyOf(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        throw({:jreturn, JR.call(this, :jm_copyOfType, [JR.lget(f, :original), JR.lget(f, :newLength), JR.class_name(JR.lget(f, :original))])})
    end)
  end


  def jm_copyOfType(this, p_original, p_newLength, p_newType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
      JR.lset(f, :newType, p_newType)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), nil))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOfbyte(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOfshort(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOfint(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOflong(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOfchar(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOffloat(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0.0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOfdouble(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), 0.0))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_copyOfboolean(this, p_original, p_newLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :original, p_original)
      JR.lset(f, :newLength, p_newLength)
        JR.lset(f, :copy, JR.anew(JR.lget(f, :newLength), false))
        JR.arraycopy(JR.lget(f, :original), 0, JR.lget(f, :copy), 0, JR.call(JR.get(this, :mathUtil), :jm_min, [JR.alength(JR.lget(f, :original)), JR.lget(f, :newLength)]))
        throw({:jreturn, JR.lget(f, :copy)})
    end)
  end


  def jm_reverse(this, p_intArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intArray, p_intArray)
        JR.lset(f, :length, JR.int32(JR.alength(JR.lget(f, :intArray)) - 1))
        JR.lset(f, :temp, 0)
        JR.lset(f, :size, div(JR.lget(f, :length), 2))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) <= JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :temp, JR.aget(JR.lget(f, :intArray), JR.lget(f, :index)))
            JR.aset(JR.lget(f, :intArray), JR.lget(f, :index), JR.aget(JR.lget(f, :intArray), JR.int32(JR.lget(f, :length) - JR.lget(f, :index))))
            JR.aset(JR.lget(f, :intArray), JR.int32(JR.lget(f, :length) - JR.lget(f, :index)), JR.lget(f, :temp))
        end)
    end)
  end


  def jm_flip(this, p_intArray, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intArray, p_intArray)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.lset(f, :length, JR.int32(JR.lget(f, :height) - 1))
        JR.lset(f, :temp, 0)
        JR.lset(f, :index, 0)
        JR.lset(f, :rowIndex, 0)
        JR.lset(f, :y, 0)
        JR.jfor(fn -> (JR.lget(f, :y) <= div(JR.lget(f, :length), 2)) end, fn -> JR.lpostinc(f, :y, 1) end, fn ->
            JR.lset(f, :x, 0)
            JR.jfor(fn -> (JR.lget(f, :x) < JR.lget(f, :width)) end, fn -> JR.lpostinc(f, :x, 1) end, fn ->
                JR.lset(f, :rowIndex, (JR.int32((JR.int32(JR.lget(f, :length) - JR.lget(f, :y))) * JR.lget(f, :width))))
                JR.lset(f, :index, JR.int32(JR.lget(f, :x) + (JR.int32(JR.lget(f, :y) * JR.lget(f, :width)))))
                JR.lset(f, :temp, JR.aget(JR.lget(f, :intArray), JR.lget(f, :index)))
                JR.aset(JR.lget(f, :intArray), JR.lget(f, :index), JR.aget(JR.lget(f, :intArray), JR.int32(JR.lget(f, :rowIndex) + JR.lget(f, :x))))
                JR.aset(JR.lget(f, :intArray), JR.int32(JR.lget(f, :rowIndex) + JR.lget(f, :x)), JR.lget(f, :temp))
            end)
        end)
    end)
  end


  def jm_toStringFromTwoDimensionaArray(this, p_twoDimensionalIntArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :twoDimensionalIntArray, p_twoDimensionalIntArray)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :endIndex, JR.alength(JR.lget(f, :twoDimensionalIntArray)))
        JR.lset(f, :endIndex2, JR.alength(JR.aget(JR.lget(f, :twoDimensionalIntArray), 0)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :endIndex)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :BRACE_OPEN)])
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :endIndex2)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.aget(JR.aget(JR.lget(f, :twoDimensionalIntArray), JR.lget(f, :index)), JR.lget(f, :index2)))])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
            end)
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :BRACE_CLOSE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :NEW_LINE)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_toStringFromObjectArray(this, p_objectArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :objectArray, p_objectArray)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :objectArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index))])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_toStringFromByteArray(this, p_byteArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :byteArray, p_byteArray)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :byteArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_appendbyte, [JR.aget(JR.lget(f, :byteArray), JR.lget(f, :index))])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


