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
# package org.allbinary.game.input.mapping

defmodule InputToGameKeyMapping do
  def jsuper(), do: InputMapping
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameKeyFactory, nil)
    JR.put(this, :mappedGameKeys, nil)
    JR.put(this, :platformToGameKeyMapping, nil)
    JR.put(this, :negativePlatformToGameKeyMapping, nil)
        JR.put(this, :gameKeyFactory, GameKeyFactory.jm_getInstance())
        JR.put(this, :mappedGameKeys, JR.afrom([JR.get(JR.get(this, :gameKeyFactory), :UP), JR.get(JR.get(this, :gameKeyFactory), :DOWN), JR.get(JR.get(this, :gameKeyFactory), :LEFT), JR.get(JR.get(this, :gameKeyFactory), :RIGHT)]))
        JR.put(this, :platformToGameKeyMapping, JR.anew(JR.get(InputFactory.jm_getInstance(), :MAX), nil))
        JR.put(this, :negativePlatformToGameKeyMapping, JR.anew(0, nil))
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (InputToGameKeyMapping.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            InputToGameKeyMapping.jstatic_set_instance(InputToGameKeyMapping.jnew())
        end
        throw({:jreturn, InputToGameKeyMapping.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      InputMapping.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.call(this, :jm_clear, [])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :platformToGameKeyMapping)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :index), JR.get(JR.get(this, :gameKeyFactory), :NONE))
        end)
    end)
  end


  def jm_removeAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        InputMapping.jm_removeAll(this)
        JR.call(this, :jm_clear, [])
    end)
  end


  def jm_addMapping(this, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_getMaxMappable, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :input, JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_getInstance, [JR.lget(f, :index)]))
            if (JR.lget(f, :input) != JR.get(JR.get(this, :gameKeyFactory), :NONE)) do
                JR.call(this, :jm_addAll, [JR.lget(f, :input), JR.call(JR.lget(f, :inputToGameKeyMapping), :jm_getMappedInput, [JR.lget(f, :input)])])
            end
        end)
    end)
  end


  def jm_addAll(this, p_input, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
      JR.lset(f, :list, p_list)
        JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :mappedToInput, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(this, :jm_add, [JR.lget(f, :input), JR.lget(f, :mappedToInput)])
        end)
    end)
  end


  def jm_add(this, p_input, p_mappedToInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
      JR.lset(f, :mappedToInput, p_mappedToInput)
        InputMapping.jm_add(this, JR.lget(f, :input), JR.lget(f, :mappedToInput))
        JR.call(this, :jm_set, [JR.lget(f, :input), JR.lget(f, :mappedToInput)])
    end)
  end


  def jm_remove(this, p_input, p_mappedToInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
      JR.lset(f, :mappedToInput, p_mappedToInput)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :input)])]), :jm_append, [" == "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :mappedToInput)])]), :jm_toString, []), this, "InputToGameKeyMapping::remove"])
        InputMapping.jm_remove(this, JR.lget(f, :input), JR.lget(f, :mappedToInput))
        JR.call(this, :jm_set, [JR.lget(f, :input), JR.get(JR.get(this, :gameKeyFactory), :NONE)])
    end)
  end


  def jm_set(this, p_input, p_mappedToInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
      JR.lset(f, :mappedToInput, p_mappedToInput)
        JR.lset(f, :id, JR.call(JR.lget(f, :mappedToInput), :jm_getId, []))
        if ((JR.lget(f, :id) >= 0) && (JR.lget(f, :id) < JR.alength(JR.get(this, :platformToGameKeyMapping)))) do
            JR.aset(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :id), JR.lget(f, :input))
        end
    end)
  end


  def jm_getMaxMappable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.alength(JR.get(this, :platformToGameKeyMapping))})
    end)
  end


  def jm_getReverseInstance(this, p_id) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
        JR.lset(f, :list, BasicArrayListD.jnew())
        JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :platformToGameKeyMapping))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.call(JR.aget(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :index)), :jm_getId, []) == JR.lget(f, :id)) do
                JR.lset(f, :input, JR.call(JR.lget(f, :inputFactory), :jm_getInstanceById, [JR.lget(f, :index)]))
                if (JR.lget(f, :input) != nil) do
                    JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :input)])
                end
            end
        end)
        throw({:jreturn, JR.lget(f, :list)})
    end)
  end


  def jm_initGameKey(this, p_canvas, p_gameKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :gameKey, p_gameKey)
        JR.lset(f, :key, JR.call(JR.lget(f, :canvas), :jm_getKeyCode, [JR.call(JR.lget(f, :gameKey), :jm_getId, [])]))
        if ((JR.lget(f, :key) < 0) && (-JR.lget(f, :key) < JR.alength(JR.get(this, :negativePlatformToGameKeyMapping)))) do
            JR.aset(JR.get(this, :negativePlatformToGameKeyMapping), -JR.lget(f, :key), JR.lget(f, :gameKey))
        else
            if (JR.lget(f, :key) > 0) do
            if (JR.aget(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :key)) == JR.get(JR.get(this, :gameKeyFactory), :NONE)) do
                JR.aset(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :key), JR.lget(f, :gameKey))
            end
        else
            PreLogUtil.jm_putOE(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.call(JR.lget(f, :gameKey), :jm_toString, [])]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COLON_SEP)]), :jm_appendint, [JR.lget(f, :key)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :INIT), JR.exception("Exception", ""))
        end
        end
    end)
  end


  def jm_getSmallestCanvasGameKeyCode(this, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        JR.lset(f, :nextKey, 0)
        JR.lset(f, :smallestKey, 0)
        JR.lset(f, :index, JR.alength(JR.get(this, :mappedGameKeys)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :nextKey, JR.call(JR.lget(f, :canvas), :jm_getKeyCode, [JR.call(JR.aget(JR.get(this, :mappedGameKeys), JR.lget(f, :index)), :jm_getId, [])]))
            if (JR.lget(f, :nextKey) < JR.lget(f, :smallestKey)) do
                JR.lset(f, :smallestKey, JR.lget(f, :nextKey))
            end
        end)
        throw({:jreturn, JR.lget(f, :smallestKey)})
    end)
  end


  def jm_init(this, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        try do
            JR.lset(f, :negativePlatformToGameKeyMapping, JR.anew(0, nil))
            JR.lset(f, :smallestKey, JR.call(this, :jm_getSmallestCanvasGameKeyCode, [JR.lget(f, :canvas)]))
            if (JR.lget(f, :smallestKey) < 0) do
                JR.lpostinc(f, :smallestKey, -1)
                if (JR.lget(f, :smallestKey) < -256) do
                    JR.lset(f, :smallestKey, -256)
                end
                JR.lset(f, :negativePlatformToGameKeyMapping, JR.anew(-JR.lget(f, :smallestKey), nil))
                JR.lset(f, :index, JR.alength(JR.lget(f, :negativePlatformToGameKeyMapping)))
                JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
                    JR.aset(JR.lget(f, :negativePlatformToGameKeyMapping), JR.lget(f, :index), JR.get(JR.get(this, :gameKeyFactory), :NONE))
                end)
                JR.put(this, :negativePlatformToGameKeyMapping, JR.lget(f, :negativePlatformToGameKeyMapping))
            end
            JR.lset(f, :index, JR.alength(JR.get(this, :mappedGameKeys)))
            JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
                JR.call(this, :jm_initGameKey, [JR.lget(f, :canvas), JR.aget(JR.get(this, :mappedGameKeys), JR.lget(f, :index))])
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :t, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :INIT), JR.lget(f, :t)])
        end
    end)
  end


  def jm_getInstanceForCanvas(this, p_canvas, p_id) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :id, p_id)
        if ((JR.lget(f, :id) >= 0) && (JR.lget(f, :id) < JR.alength(JR.get(this, :platformToGameKeyMapping)))) do
            throw({:jreturn, JR.aget(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :id))})
        else
            if ((JR.lget(f, :id) < 0) && (-JR.lget(f, :id) < JR.alength(JR.get(this, :negativePlatformToGameKeyMapping)))) do
            throw({:jreturn, JR.aget(JR.get(this, :negativePlatformToGameKeyMapping), -JR.lget(f, :id))})
        else
            throw({:jreturn, JR.get(JR.get(this, :gameKeyFactory), :NONE)})
        end
        end
    end)
  end


  def jm_getInstance(this, p_id) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
        if ((JR.lget(f, :id) >= 0) && (JR.lget(f, :id) < JR.alength(JR.get(this, :platformToGameKeyMapping)))) do
            throw({:jreturn, JR.aget(JR.get(this, :platformToGameKeyMapping), JR.lget(f, :id))})
        else
            if ((JR.lget(f, :id) < 0) && (-JR.lget(f, :id) < JR.alength(JR.get(this, :negativePlatformToGameKeyMapping)))) do
            throw({:jreturn, JR.aget(JR.get(this, :negativePlatformToGameKeyMapping), -JR.lget(f, :id))})
        else
            throw({:jreturn, JR.get(JR.get(this, :gameKeyFactory), :NONE)})
        end
        end
    end)
  end
end


