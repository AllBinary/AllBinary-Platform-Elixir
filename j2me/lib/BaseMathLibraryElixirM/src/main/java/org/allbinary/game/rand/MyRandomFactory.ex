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
# package org.allbinary.game.rand

#Do not use in client code for money related things.
defmodule MyRandomFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MyRandomFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :mathUtil, nil)
    JR.put(this, :rand, nil)
        JR.put(this, :mathUtil, MathUtil.jm_getInstance())
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MyRandomFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :rand, J.Random.jnew(:os.system_time(:millisecond)))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setSeed(this, p_seed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :seed, p_seed)
        JR.put(this, :rand, J.Random.jnew(JR.lget(f, :seed)))
    end)
  end


  def jm_getNextInt(this, p_range) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :range, p_range)
        JR.lset(f, :div, JR.int32((div(J.Integer.jstatic_MAX_VALUE(), JR.lget(f, :range))) + 1))
        throw({:jreturn, (div(JR.call(JR.get(this, :rand), :jm_nextInt, []), JR.lget(f, :div)))})
    end)
  end


  def jm_getAbsoluteNextInt(this, p_range) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :range, p_range)
        throw({:jreturn, JR.call(JR.get(this, :mathUtil), :jm_abs, [JR.call(this, :jm_getNextInt, [JR.lget(f, :range)])])})
    end)
  end


  def jm_getAbsoluteNextIntAllowZero(this, p_range) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :range, p_range)
        if (JR.lget(f, :range) == 0) do
            throw({:jreturn, 0})
        else
            throw({:jreturn, JR.call(JR.get(this, :mathUtil), :jm_abs, [JR.call(this, :jm_getNextInt, [JR.lget(f, :range)])])})
        end
    end)
  end


  def jm_shuffle(this, p_intArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intArray, p_intArray)
        JR.call(this, :jm_shuffleTotal, [JR.lget(f, :intArray), JR.int32(JR.alength(JR.lget(f, :intArray)) * 7)])
    end)
  end


  def jm_shuffleTotal(this, p_intArray, p_shuffleTotal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intArray, p_intArray)
      JR.lset(f, :shuffleTotal, p_shuffleTotal)
        JR.lset(f, :size, JR.alength(JR.lget(f, :intArray)))
        JR.lset(f, :randomIndex, 0)
        JR.lset(f, :randomIndex2, 0)
        JR.lset(f, :value, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :shuffleTotal)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :randomIndex, JR.call(this, :jm_getAbsoluteNextIntAllowZero, [JR.lget(f, :size)]))
            JR.lset(f, :randomIndex2, JR.call(this, :jm_getAbsoluteNextIntAllowZero, [JR.lget(f, :size)]))
            JR.lset(f, :value, JR.aget(JR.lget(f, :intArray), JR.lget(f, :randomIndex)))
            JR.aset(JR.lget(f, :intArray), JR.lget(f, :randomIndex), JR.aget(JR.lget(f, :intArray), JR.lget(f, :randomIndex2)))
            JR.aset(JR.lget(f, :intArray), JR.lget(f, :randomIndex2), JR.lget(f, :value))
        end)
    end)
  end


  def jm_shuffle2(this, p_intArray, p_intArray2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intArray, p_intArray)
      JR.lset(f, :intArray2, p_intArray2)
        JR.call(this, :jm_shuffle2Total, [JR.lget(f, :intArray), JR.lget(f, :intArray2), JR.int32(JR.alength(JR.lget(f, :intArray)) * 7)])
    end)
  end


  def jm_shuffle2Total(this, p_intArray, p_intArray2, p_shuffleTotal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intArray, p_intArray)
      JR.lset(f, :intArray2, p_intArray2)
      JR.lset(f, :shuffleTotal, p_shuffleTotal)
        JR.lset(f, :size, JR.alength(JR.lget(f, :intArray)))
        JR.lset(f, :randomIndex, 0)
        JR.lset(f, :randomIndex2, 0)
        JR.lset(f, :value, 0)
        JR.lset(f, :value2, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :shuffleTotal)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :randomIndex, JR.call(this, :jm_getAbsoluteNextIntAllowZero, [JR.lget(f, :size)]))
            JR.lset(f, :randomIndex2, JR.call(this, :jm_getAbsoluteNextIntAllowZero, [JR.lget(f, :size)]))
            JR.lset(f, :value, JR.aget(JR.lget(f, :intArray), JR.lget(f, :randomIndex)))
            JR.lset(f, :value2, JR.aget(JR.lget(f, :intArray2), JR.lget(f, :randomIndex)))
            JR.aset(JR.lget(f, :intArray), JR.lget(f, :randomIndex), JR.aget(JR.lget(f, :intArray), JR.lget(f, :randomIndex2)))
            JR.aset(JR.lget(f, :intArray), JR.lget(f, :randomIndex2), JR.lget(f, :value))
            JR.aset(JR.lget(f, :intArray2), JR.lget(f, :randomIndex), JR.aget(JR.lget(f, :intArray2), JR.lget(f, :randomIndex2)))
            JR.aset(JR.lget(f, :intArray2), JR.lget(f, :randomIndex2), JR.lget(f, :value2))
        end)
    end)
  end


  def jm_main(p_args) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :args, p_args)
        JR.lset(f, :randomFactory, MyRandomFactory.jm_getInstance())
        JR.lset(f, :stringBuilder, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :size2, 100)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_appendint, [JR.call(JR.lget(f, :randomFactory), :jm_getAbsoluteNextInt, [3])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA)])
        end)
        IO.puts(JR.str(JR.call(JR.lget(f, :stringBuilder), :jm_toString, [])))
        JR.call(JR.lget(f, :stringBuilder), :jm_delete, [0, JR.call(JR.lget(f, :stringBuilder), :jm_length, [])])
        JR.lset(f, :intArray, JR.anew(52, 0))
        JR.lset(f, :intArray2, JR.anew(52, 0))
        JR.lset(f, :size, JR.alength(JR.lget(f, :intArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :intArray), JR.lget(f, :index), JR.lget(f, :index))
            JR.aset(JR.lget(f, :intArray2), JR.lget(f, :index), JR.lget(f, :index))
        end)
        JR.call(JR.lget(f, :randomFactory), :jm_shuffle2, [JR.lget(f, :intArray), JR.lget(f, :intArray2)])
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_appendint, [JR.aget(JR.lget(f, :intArray), JR.lget(f, :index))]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA)])
        end)
        IO.puts(JR.str(JR.call(JR.lget(f, :stringBuilder), :jm_toString, [])))
        JR.call(JR.lget(f, :stringBuilder), :jm_delete, [0, JR.call(JR.lget(f, :stringBuilder), :jm_length, [])])
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.call(JR.lget(f, :stringBuilder), :jm_appendint, [JR.aget(JR.lget(f, :intArray2), JR.lget(f, :index))]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA)])
        end)
        IO.puts(JR.str(JR.call(JR.lget(f, :stringBuilder), :jm_toString, [])))
        JR.lset(f, :found, false)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :found, false)
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                if (JR.aget(JR.lget(f, :intArray), JR.lget(f, :index2)) == JR.lget(f, :index)) do
                    JR.lset(f, :found, true)
                end
            end)
            if !JR.lget(f, :found) do
                throw({:jexception, JR.exception("RuntimeException", "")})
            end
        end)
    end)
  end
end


