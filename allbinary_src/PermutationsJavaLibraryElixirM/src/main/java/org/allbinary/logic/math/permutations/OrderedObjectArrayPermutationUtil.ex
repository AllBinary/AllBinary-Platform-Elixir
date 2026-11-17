# 
# AllBinary Open License Version 1 
# Copyright (c) 2011 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

defmodule OrderedObjectArrayPermutationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OrderedObjectArrayPermutationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :TOTAL_ITERATIONS_TABLE, nil)
    JR.put(this, :FINISHED, nil)
        JR.put(this, :TOTAL_ITERATIONS_TABLE, "Total Iterations: ")
        JR.put(this, :FINISHED, "\nFINISHED")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, OrderedObjectArrayPermutationUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getNext(this, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :data, p_data)
        JR.lset(f, :length, JR.alength(JR.lget(f, :data)))
        JR.lset(f, :i, JR.int32(JR.lget(f, :length) - 1))
        JR.lset(f, :tsUtil, TsUtil.jm_getInstance())
        JR.jwhile(fn -> (JR.call(JR.lget(f, :tsUtil), :jm_hashCode, [JR.aget(JR.lget(f, :data), JR.int32(JR.lget(f, :i) - 1))]) >= JR.call(JR.lget(f, :tsUtil), :jm_hashCode, [JR.aget(JR.lget(f, :data), JR.lget(f, :i))])) end, fn ->
            JR.lset(f, :i, JR.int32(JR.lget(f, :i) - 1))
        end)
        JR.lset(f, :j, JR.lget(f, :length))
        JR.jwhile(fn -> (JR.call(JR.lget(f, :tsUtil), :jm_hashCode, [JR.aget(JR.lget(f, :data), JR.int32(JR.lget(f, :j) - 1))]) <= JR.call(JR.lget(f, :tsUtil), :jm_hashCode, [JR.aget(JR.lget(f, :data), JR.int32(JR.lget(f, :i) - 1))])) end, fn ->
            JR.lset(f, :j, JR.int32(JR.lget(f, :j) - 1))
        end)
        JR.call(this, :jm_swap, [JR.lget(f, :data), JR.int32(JR.lget(f, :i) - 1), JR.int32(JR.lget(f, :j) - 1)])
        JR.lpostinc(f, :i, 1)
        JR.lset(f, :j, JR.lget(f, :length))
        JR.jwhile(fn -> (JR.lget(f, :i) < JR.lget(f, :j)) end, fn ->
            JR.call(this, :jm_swap, [JR.lget(f, :data), JR.int32(JR.lget(f, :i) - 1), JR.int32(JR.lget(f, :j) - 1)])
            JR.lpostinc(f, :i, 1)
            JR.lpostinc(f, :j, -1)
        end)
    end)
  end


  def jm_swap(this, p_data, p_a, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :data, p_data)
      JR.lset(f, :a, p_a)
      JR.lset(f, :b, p_b)
        JR.lset(f, :temp, JR.aget(JR.lget(f, :data), JR.lget(f, :a)))
        JR.aset(JR.lget(f, :data), JR.lget(f, :a), JR.aget(JR.lget(f, :data), JR.lget(f, :b)))
        JR.aset(JR.lget(f, :data), JR.lget(f, :b), JR.lget(f, :temp))
    end)
  end


  def jm_factorial(this, p_dataLength) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dataLength, p_dataLength)
        JR.lset(f, :temp, 1)
        if (JR.lget(f, :dataLength) > 1) do
            JR.lset(f, :i, 1)
            JR.jfor(fn -> (JR.lget(f, :i) <= JR.lget(f, :dataLength)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
                JR.lset(f, :temp, JR.int64(JR.lget(f, :temp) * JR.lget(f, :i)))
            end)
        end
        throw({:jreturn, JR.lget(f, :temp)})
    end)
  end


  def jm_generate(this, p_data, p_visitor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :data, p_data)
      JR.lset(f, :visitor, p_visitor)
        JR.lset(f, :iterations, JR.call(this, :jm_factorial, [JR.alength(JR.lget(f, :data))]))
        IO.puts(JR.str(JR.get(this, :TOTAL_ITERATIONS_TABLE)))
        IO.puts(JR.str(JR.lget(f, :iterations)))
        JR.lset(f, :count, 0)
        JR.jfor(fn -> (JR.lget(f, :count) < JR.int64(JR.lget(f, :iterations) - 1)) end, fn -> JR.lpostinc(f, :count, 1) end, fn ->
            JR.call(this, :jm_getNext, [JR.lget(f, :data)])
            JR.call(JR.lget(f, :visitor), :jm_visit, [this])
        end)
        IO.puts(JR.str(JR.get(this, :FINISHED)))
    end)
  end


  def jm_main(p_args) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :args, p_args)
        JR.lset(f, :TOTAL, 7)
        JR.lset(f, :data, JR.anew(JR.lget(f, :TOTAL), nil))
        JR.lset(f, :i, 0)
        JR.jfor(fn -> (JR.lget(f, :i) < JR.lget(f, :TOTAL)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
            JR.aset(JR.lget(f, :data), JR.lget(f, :i), ComparableObject.jnew())
        end)
        Arrays.jm_sort(JR.lget(f, :data))
        JR.lset(f, :permutationVisitor, ObjectPermutationVisitor.jnew(JR.lget(f, :data)))
        JR.lset(f, :ORIGINAL_DATA_LABEL, "Original Data: ")
        IO.puts(JR.str(JR.lget(f, :ORIGINAL_DATA_LABEL)))
        JR.call(JR.lget(f, :permutationVisitor), :jm_visit, [JR.lget(f, :data)])
        JR.call(OrderedObjectArrayPermutationUtil.jm_getInstance(), :jm_generate, [JR.lget(f, :data), JR.lget(f, :permutationVisitor)])
    end)
  end
end


