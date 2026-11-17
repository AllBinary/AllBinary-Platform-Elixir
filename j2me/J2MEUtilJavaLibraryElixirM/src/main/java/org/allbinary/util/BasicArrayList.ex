# Generated Code Do Not Modify
# package org.allbinary.util

#This is a very fast and simple resizable list.
defmodule BasicArrayList do
  def jsuper(), do: JObject
def jstatic_SIZE(), do: JR.static_get(__MODULE__, :SIZE, fn -> ", Size: " end)
  def jstatic_set_SIZE(value), do: JR.static_put(__MODULE__, :SIZE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :arrayUtil, nil)
    JR.put(this, :objectArray, nil)
    JR.put(this, :currentIndex, 0)
        JR.put(this, :arrayUtil, ArrayUtil.jm_getInstance())
        
        JR.put(this, :currentIndex, 0)
    nil
  end


  def jinit(this, p_objectArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :objectArray, p_objectArray)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :objectArray, JR.lget(f, :objectArray))
    end)
  end

  def jnew(p_objectArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_objectArray)
    this
  end


  def jm_addAt(this, p_index, p_element) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :element, p_element)
        if ((JR.lget(f, :index) > JR.get(this, :currentIndex)) || (JR.lget(f, :index) < 0)) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :INDEX_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [BasicArrayList.jstatic_SIZE()])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :currentIndex)])
            throw({:jexception, JR.exception("IndexOutOfBoundsException", JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))})
        end
        JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentIndex) + 1)])
        JR.arraycopy(JR.get(this, :objectArray), JR.lget(f, :index), JR.get(this, :objectArray), JR.int32(JR.lget(f, :index) + 1), JR.int32(JR.get(this, :currentIndex) - JR.lget(f, :index)))
        JR.aset(JR.get(this, :objectArray), JR.lget(f, :index), JR.lget(f, :element))
        JR.postinc(this, :currentIndex, 1)
    end)
  end


  def jm_add(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentIndex) + 1)])
        JR.aset(JR.get(this, :objectArray), JR.postinc(this, :currentIndex, 1), JR.lget(f, :anyType))
        throw({:jreturn, true})
    end)
  end


  def jm_removeAt(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        if (JR.lget(f, :index) >= JR.get(this, :currentIndex)) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :INDEX_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [BasicArrayList.jstatic_SIZE()])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :currentIndex)])
            throw({:jexception, JR.exception("IndexOutOfBoundsException", JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))})
        end
        JR.lset(f, :oldValue, JR.aget(JR.get(this, :objectArray), JR.lget(f, :index)))
        JR.lset(f, :numMoved, JR.int32(JR.int32(JR.get(this, :currentIndex) - JR.lget(f, :index)) - 1))
        if (JR.lget(f, :numMoved) > 0) do
            JR.arraycopy(JR.get(this, :objectArray), JR.int32(JR.lget(f, :index) + 1), JR.get(this, :objectArray), JR.lget(f, :index), JR.lget(f, :numMoved))
        end
        JR.aset(JR.get(this, :objectArray), JR.preinc(this, :currentIndex, -1), nil)
        throw({:jreturn, JR.lget(f, :oldValue)})
    end)
  end


  def jm_remove(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        if (JR.lget(f, :anyType) == nil) do
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :currentIndex)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                if (JR.aget(JR.get(this, :objectArray), JR.lget(f, :index)) == nil) do
                    JR.lset(f, :numMoved, JR.int32(JR.int32(JR.get(this, :currentIndex) - JR.lget(f, :index)) - 1))
                    if (JR.lget(f, :numMoved) > 0) do
                        JR.arraycopy(JR.get(this, :objectArray), JR.int32(JR.lget(f, :index) + 1), JR.get(this, :objectArray), JR.lget(f, :index), JR.lget(f, :numMoved))
                    end
                    JR.aset(JR.get(this, :objectArray), JR.preinc(this, :currentIndex, -1), nil)
                    throw({:jreturn, true})
                end
            end)
        else
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :currentIndex)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                if ((JR.lget(f, :anyType) == JR.aget(JR.get(this, :objectArray), JR.lget(f, :index))) || JR.call(JR.lget(f, :anyType), :jm_equals, [JR.aget(JR.get(this, :objectArray), JR.lget(f, :index))])) do
                    JR.lset(f, :numMoved, JR.int32(JR.int32(JR.get(this, :currentIndex) - JR.lget(f, :index)) - 1))
                    if (JR.lget(f, :numMoved) > 0) do
                        JR.arraycopy(JR.get(this, :objectArray), JR.int32(JR.lget(f, :index) + 1), JR.get(this, :objectArray), JR.lget(f, :index), JR.lget(f, :numMoved))
                    end
                    JR.aset(JR.get(this, :objectArray), JR.preinc(this, :currentIndex, -1), nil)
                    throw({:jreturn, true})
                end
            end)
        end
        throw({:jreturn, false})
    end)
  end


  def jm_removeAll2(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :result, true)
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if JR.call(this, :jm_remove, [JR.call(JR.lget(f, :list), :jm_get, [JR.lget(f, :index)])]) do
                nil
            else
                JR.lset(f, :result, false)
            end
        end)
        throw({:jreturn, JR.lget(f, :result)})
    end)
  end


  def jm_addAll2(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.call(this, :jm_ensureCapacity, [(JR.get(this, :currentIndex) + JR.get(JR.lget(f, :list), :currentIndex))])
        JR.lset(f, :listSize, JR.get(JR.lget(f, :list), :currentIndex))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :listSize)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :objectArray), JR.postinc(this, :currentIndex, 1), JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
        end)
        throw({:jreturn, true})
    end)
  end


  def jm_addAllList(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :newObjectArray, JR.call(JR.lget(f, :list), :jm_toArray, []))
        throw({:jreturn, JR.call(this, :jm_addAll, [JR.lget(f, :newObjectArray)])})
    end)
  end


  def jm_addAll(this, p_newObjectArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newObjectArray, p_newObjectArray)
        JR.lset(f, :numSize, JR.alength(JR.lget(f, :newObjectArray)))
        JR.call(this, :jm_ensureCapacity, [JR.int32(JR.get(this, :currentIndex) + JR.lget(f, :numSize))])
        JR.arraycopy(JR.lget(f, :newObjectArray), 0, JR.get(this, :objectArray), JR.get(this, :currentIndex), JR.lget(f, :numSize))
        JR.put(this, :currentIndex, JR.int32(JR.get(this, :currentIndex) + JR.lget(f, :numSize)))
        throw({:jreturn, (JR.lget(f, :numSize) != 0)})
    end)
  end


  def jm_ensureCapacity(this, p_minSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :minSize, p_minSize)
        JR.lset(f, :oldCapacity, JR.alength(JR.get(this, :objectArray)))
        if (JR.lget(f, :minSize) > JR.lget(f, :oldCapacity)) do
            JR.lset(f, :newCapacity, JR.int32((Bitwise.bsr((JR.int32(JR.lget(f, :oldCapacity) * 3)), 1)) + 1))
            if (JR.lget(f, :newCapacity) < JR.lget(f, :minSize)) do
                JR.lset(f, :newCapacity, JR.lget(f, :minSize))
            end
            JR.put(this, :objectArray, JR.call(JR.get(this, :arrayUtil), :jm_copyOf, [JR.get(this, :objectArray), JR.lget(f, :newCapacity)]))
        end
    end)
  end


  def jm_trimToSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :oldCapacity, JR.alength(JR.get(this, :objectArray)))
        if (JR.get(this, :currentIndex) < JR.lget(f, :oldCapacity)) do
            JR.put(this, :objectArray, JR.call(JR.get(this, :arrayUtil), :jm_copyOf, [JR.get(this, :objectArray), JR.get(this, :currentIndex)]))
        end
    end)
  end


  def jm_indexOf(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        if (JR.lget(f, :anyType) == nil) do
            JR.lset(f, :i, 0)
            JR.jfor(fn -> (JR.lget(f, :i) < JR.get(this, :currentIndex)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
                if (JR.aget(JR.get(this, :objectArray), JR.lget(f, :i)) == nil) do
                    throw({:jreturn, JR.lget(f, :i)})
                end
            end)
        else
            JR.lset(f, :i, 0)
            JR.jfor(fn -> (JR.lget(f, :i) < JR.get(this, :currentIndex)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
                if JR.call(JR.lget(f, :anyType), :jm_equals, [JR.aget(JR.get(this, :objectArray), JR.lget(f, :i))]) do
                    throw({:jreturn, JR.lget(f, :i)})
                end
            end)
        end
        throw({:jreturn, -1})
    end)
  end


  def jm_lastIndexOf(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        if (JR.lget(f, :anyType) == nil) do
            JR.lset(f, :i, JR.int32(JR.get(this, :currentIndex) - 1))
            JR.jfor(fn -> (JR.lget(f, :i) >= 0) end, fn -> JR.lpostinc(f, :i, -1) end, fn ->
                if (JR.aget(JR.get(this, :objectArray), JR.lget(f, :i)) == nil) do
                    throw({:jreturn, JR.lget(f, :i)})
                end
            end)
        else
            JR.lset(f, :i, JR.int32(JR.get(this, :currentIndex) - 1))
            JR.jfor(fn -> (JR.lget(f, :i) >= 0) end, fn -> JR.lpostinc(f, :i, -1) end, fn ->
                if JR.call(JR.lget(f, :anyType), :jm_equals, [JR.aget(JR.get(this, :objectArray), JR.lget(f, :i))]) do
                    throw({:jreturn, JR.lget(f, :i)})
                end
            end)
        end
        throw({:jreturn, -1})
    end)
  end


  def jm_get(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        if (JR.lget(f, :index) >= JR.get(this, :currentIndex)) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :INDEX_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [BasicArrayList.jstatic_SIZE()])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :currentIndex)])
            throw({:jexception, JR.exception("IndexOutOfBoundsException", JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))})
        end
        throw({:jreturn, JR.aget(JR.get(this, :objectArray), JR.lget(f, :index))})
    end)
  end


  def jm_set(this, p_index, p_element) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :element, p_element)
        if (JR.lget(f, :index) >= JR.get(this, :currentIndex)) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :INDEX_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [BasicArrayList.jstatic_SIZE()])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :currentIndex)])
            throw({:jexception, JR.exception("IndexOutOfBoundsException", JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))})
        end
        JR.lset(f, :oldValue, JR.aget(JR.get(this, :objectArray), JR.lget(f, :index)))
        JR.aset(JR.get(this, :objectArray), JR.lget(f, :index), JR.lget(f, :element))
        throw({:jreturn, JR.lget(f, :oldValue)})
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :i, 0)
        JR.jfor(fn -> (JR.lget(f, :i) < JR.get(this, :currentIndex)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
            JR.aset(JR.get(this, :objectArray), JR.lget(f, :i), nil)
        end)
        JR.put(this, :currentIndex, 0)
    end)
  end


  def jm_size(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentIndex)})
    end)
  end


  def jm_isEmpty(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.get(this, :currentIndex) == 0)})
    end)
  end


  def jm_contains(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        throw({:jreturn, (JR.call(this, :jm_indexOf, [JR.lget(f, :anyType)]) >= 0)})
    end)
  end


  def jm_toArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :arrayUtil), :jm_copyOf, [JR.get(this, :objectArray), JR.get(this, :currentIndex)])})
    end)
  end


  def jm_toArrayType(this, p_objectArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :objectArray, p_objectArray)
        if (JR.alength(JR.lget(f, :objectArray)) < JR.get(this, :currentIndex)) do
            throw({:jreturn, JR.call(JR.get(this, :arrayUtil), :jm_copyOfType, [JR.get(this, :objectArray), JR.get(this, :currentIndex), JR.class_name(JR.lget(f, :objectArray))])})
        end
        JR.arraycopy(JR.get(this, :objectArray), 0, JR.lget(f, :objectArray), 0, JR.get(this, :currentIndex))
        if (JR.alength(JR.lget(f, :objectArray)) > JR.get(this, :currentIndex)) do
            JR.aset(JR.lget(f, :objectArray), JR.get(this, :currentIndex), nil)
        end
        throw({:jreturn, JR.lget(f, :objectArray)})
    end)
  end


  def jm_clone(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :size, JR.call(this, :jm_size, []))
        JR.lset(f, :list, BasicArrayListS.jnew(JR.lget(f, :size)))
        JR.lset(f, :anyType, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :anyType, JR.aget(JR.get(this, :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :anyType)])
        end)
        throw({:jreturn, JR.lget(f, :list)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :COMMA_SEP, JR.get(CommonSeps.jm_getInstance(), :COMMA_SEP))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :currentIndex)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.aget(JR.get(this, :objectArray), JR.lget(f, :index)), :jm_toString, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :COMMA_SEP)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


