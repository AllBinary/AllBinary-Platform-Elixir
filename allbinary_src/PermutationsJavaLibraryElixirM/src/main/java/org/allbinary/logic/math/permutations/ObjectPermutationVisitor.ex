# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

defmodule ObjectPermutationVisitor do
  def jsuper(), do: Visitor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :data, nil)
    JR.put(this, :stringBuilder, nil)
        
        JR.put(this, :stringBuilder, StringMaker.jnew())
    nil
  end


  def jinit(this, p_data) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :data, p_data)
      Visitor.jinit(this)
      jinitfields(this)
        JR.put(this, :data, JR.lget(f, :data))
    end)
  end

  def jnew(p_data) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_data)
    this
  end


  def jm_visit(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
        JR.call(this, :jm_print, [JR.get(this, :data), JR.get(this, :stringBuilder)])
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)})
    end)
  end


  def jm_print(this, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :data, p_data)
        JR.lset(f, :stringBuilder, StringMaker.jnew())
        JR.call(this, :jm_print, [JR.lget(f, :data), JR.lget(f, :stringBuilder)])
    end)
  end


  def jm_print(this, p_data, p_stringBuilder) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :data, p_data)
      JR.lset(f, :stringBuilder, p_stringBuilder)
        JR.lset(f, :tsUtil, TsUtil.jm_getInstance())
        JR.lset(f, :size, JR.alength(JR.lget(f, :data)))
        JR.lset(f, :i, 0)
        JR.jfor(fn -> (JR.lget(f, :i) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuilder), :jm_appendint, [JR.int32(JR.call(JR.lget(f, :tsUtil), :jm_hashCode, [JR.aget(JR.lget(f, :data), JR.lget(f, :i))]))])
            JR.call(JR.lget(f, :stringBuilder), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        end)
        IO.puts(JR.str(JR.call(JR.lget(f, :stringBuilder), :jm_toString, [])))
    end)
  end
end


