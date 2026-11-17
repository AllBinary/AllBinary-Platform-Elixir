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
# package org.allbinary.graphics.draw

defmodule DrawStringUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DrawStringUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EMPTY_STRING, nil)
    JR.put(this, :anchor, 0)
        JR.put(this, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
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
        throw({:jreturn, DrawStringUtil.jstatic_instance()})
    end)
  end


  def jm_drawCenterString(this, p_graphics, p_string, p_offset, p_length, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :string, p_string)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :length, p_length)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :width, (Bitwise.bsr(JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_substringWidth, [JR.lget(f, :string), JR.lget(f, :offset), JR.lget(f, :length)]), 1)))
        try do
            JR.call(JR.lget(f, :graphics), :jm_drawSubstring, [JR.lget(f, :string), JR.lget(f, :offset), JR.lget(f, :length), JR.int32(JR.lget(f, :x) - JR.lget(f, :width)), JR.lget(f, :y), JR.get(this, :anchor)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Exception: stringLength: "]), :jm_appendint, [byte_size(JR.lget(f, :string))]), :jm_append, [" offset: "]), :jm_appendint, [JR.lget(f, :offset)]), :jm_append, [" currentLength: "]), :jm_appendint, [JR.lget(f, :length)]), :jm_toString, []), this, "drawCenterString")
        end
    end)
  end


  def jm_drawCenterStrings(this, p_graphics, p_stringArray, p_maxWidth, p_charHeight, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :stringArray, p_stringArray)
      JR.lset(f, :maxWidth, p_maxWidth)
      JR.lset(f, :charHeight, p_charHeight)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :extraLines, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :stringArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :string, JR.aget(JR.lget(f, :stringArray), JR.lget(f, :index)))
            if (JR.lget(f, :string) != JR.get(this, :EMPTY_STRING)) do
                JR.lset(f, :width, JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.lget(f, :string)]))
                JR.lset(f, :minTotalLines, 1)
                if (JR.lget(f, :width) > JR.lget(f, :maxWidth)) do
                    JR.lset(f, :minTotalLines, JR.int32((div(JR.lget(f, :width), JR.lget(f, :maxWidth))) + 1))
                end
                JR.lset(f, :linePortion, div(byte_size(JR.lget(f, :string)), JR.lget(f, :minTotalLines)))
                JR.lset(f, :offset, 0)
                JR.lset(f, :currentLength, JR.lget(f, :linePortion))
                JR.lset(f, :size, byte_size(JR.lget(f, :string)))
                JR.jwhile(fn -> (JR.lget(f, :offset) < JR.lget(f, :size)) end, fn ->
                    if (JR.int32(JR.lget(f, :offset) + JR.lget(f, :currentLength)) > JR.lget(f, :size)) do
                        JR.lset(f, :currentLength, JR.int32(JR.lget(f, :size) - JR.lget(f, :offset)))
                    end
                    if (JR.int32(JR.lget(f, :offset) + JR.lget(f, :currentLength)) != JR.lget(f, :size)) do
                        JR.jwhile(fn -> ((JR.lget(f, :currentLength) > 0) && (JR.call(JR.aget(JR.lget(f, :stringArray), JR.lget(f, :index)), :jm_charAt, [JR.int32(JR.lget(f, :offset) + JR.lget(f, :currentLength))]) != ?\s)) end, fn ->
                            JR.lpostinc(f, :currentLength, -1)
                        end)
                        if (JR.lget(f, :currentLength) <= 4) do
                            JR.lset(f, :currentLength, JR.lget(f, :linePortion))
                        end
                    end
                    JR.call(this, :jm_drawCenterString, [JR.lget(f, :graphics), JR.lget(f, :string), JR.lget(f, :offset), JR.lget(f, :currentLength), JR.lget(f, :x), JR.int32(JR.lget(f, :y) + (JR.int32((JR.int32(JR.lget(f, :index) + JR.lpostinc(f, :extraLines, 1))) * JR.lget(f, :charHeight))))])
                    JR.lset(f, :offset, JR.int32(JR.lget(f, :offset) + JR.lget(f, :currentLength)))
                    JR.lset(f, :currentLength, JR.lget(f, :linePortion))
                end)
                JR.lpostinc(f, :extraLines, -1)
            end
        end)
    end)
  end
end


