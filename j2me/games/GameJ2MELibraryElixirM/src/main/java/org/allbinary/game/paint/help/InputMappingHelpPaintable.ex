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
# package org.allbinary.game.paint.help

defmodule InputMappingHelpPaintable do
  def jsuper(), do: HelpPaintable
def jstatic_AND(), do: JR.static_get(__MODULE__, :AND, fn -> " and " end)
  def jstatic_set_AND(value), do: JR.static_put(__MODULE__, :AND, value)
def jstatic_SEP(), do: JR.static_get(__MODULE__, :SEP, fn -> ", " end)
  def jstatic_set_SEP(value), do: JR.static_put(__MODULE__, :SEP, value)
def jstatic_MORE_THAN_TWO_IN_LIST_AND(), do: JR.static_get(__MODULE__, :MORE_THAN_TWO_IN_LIST_AND, fn -> ", and " end)
  def jstatic_set_MORE_THAN_TWO_IN_LIST_AND(value), do: JR.static_put(__MODULE__, :MORE_THAN_TWO_IN_LIST_AND, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :commonSeps, nil)
    JR.put(this, :stringUtil, nil)
    JR.put(this, :basicColorFactory, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :EMPTY_STRING, nil)
    JR.put(this, :gameInputMappingArray, nil)
    JR.put(this, :keyMappingArray, nil)
    JR.put(this, :actionBasicColor, nil)
    JR.put(this, :inputBasicColorArray, nil)
    JR.put(this, :selectedBasicColor, nil)
    JR.put(this, :updateMyFontProperties, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :commonSeps, CommonSeps.jm_getInstance())
        JR.put(this, :stringUtil, StringUtil.jm_getInstance())
        JR.put(this, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.put(this, :NONE, JR.get(GameKeyFactory.jm_getInstance(), :NONE))
        JR.put(this, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        
        JR.put(this, :keyMappingArray, JR.anew(0, nil))
        JR.put(this, :actionBasicColor, JR.get(BasicColorUtil.jm_getInstance(), :ZERO_ARRAY))
        JR.put(this, :inputBasicColorArray, JR.anew_of(0, fn -> JR.anew(0, nil) end))
        JR.put(this, :selectedBasicColor, nil)
        JR.put(this, :updateMyFontProperties, UpdateMyFontProperties.jnew())
    nil
  end


  def jinit(this, p_gameInputMappingArray, p_backgroundBasicColor, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInputMappingArray, p_gameInputMappingArray)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :basicColor, p_basicColor)
        HelpPaintable.jinit(this, "Input Mapping", JR.lget(f, :backgroundBasicColor), JR.lget(f, :basicColor))
        InputMappingHelpPaintable.jinitfields(this)
        JR.put(this, :gameInputMappingArray, JR.lget(f, :gameInputMappingArray))
        JR.call(this, :jm_update, [JR.get(this, :NONE), JR.get(this, :NONE)])
        if ((JR.lget(f, :backgroundBasicColor) == JR.get(JR.get(this, :basicColorFactory), :WHITE)) || (JR.lget(f, :basicColor) == JR.get(JR.get(this, :basicColorFactory), :WHITE))) do
            JR.put(this, :selectedBasicColor, JR.get(JR.get(this, :basicColorFactory), :RED))
        else
            JR.put(this, :selectedBasicColor, JR.get(JR.get(this, :basicColorFactory), :WHITE))
        end
    end)
  end

  def jnew(p_gameInputMappingArray, p_backgroundBasicColor, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameInputMappingArray, p_backgroundBasicColor, p_basicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.lset(f, :updateMyFontProperties, UpdateMyFontProperties.jnew())
        JR.put(JR.lget(f, :updateMyFontProperties), :charHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :inputInfo, JR.get(this, :inputInfo))
        JR.lset(f, :size, JR.alength(JR.lget(f, :inputInfo)))
        JR.put(JR.lget(f, :updateMyFontProperties), :actionStringArray, JR.anew(JR.lget(f, :size), nil))
        JR.put(JR.lget(f, :updateMyFontProperties), :keymappingBeginWidthArray, JR.anew(JR.lget(f, :size), 0))
        JR.put(JR.lget(f, :updateMyFontProperties), :actionStringDeltaXArray, JR.anew(JR.lget(f, :size), 0))
        JR.put(JR.lget(f, :updateMyFontProperties), :inputDeltaXArray, JR.anew_of(JR.lget(f, :size), fn -> JR.anew(0, 0) end))
        JR.put(JR.lget(f, :updateMyFontProperties), :sepArray, JR.anew_of(JR.lget(f, :size), fn -> JR.anew(0, nil) end))
        JR.put(JR.lget(f, :updateMyFontProperties), :sepWidthArray, JR.anew_of(JR.lget(f, :size), fn -> JR.anew(0, 0) end))
        JR.lset(f, :list, nil)
        JR.lset(f, :keyMappings, nil)
        JR.lset(f, :actionString, nil)
        JR.lset(f, :input, nil)
        JR.lset(f, :size2, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :list, JR.aget(JR.get(this, :keyMappingArray), JR.lget(f, :index)))
            JR.lset(f, :keyMappings, JR.call(this, :jm_get, [JR.lget(f, :list)]))
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.lset(f, :actionString, JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.aget(JR.lget(f, :inputInfo), JR.lget(f, :index))]), :jm_append, [JR.get(JR.get(this, :commonSeps), :COLON)]), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)]), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)]), :jm_toString, []))
            JR.aset(JR.get(JR.lget(f, :updateMyFontProperties), :actionStringArray), JR.lget(f, :index), JR.lget(f, :actionString))
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.aset(JR.get(JR.lget(f, :updateMyFontProperties), :keymappingBeginWidthArray), JR.lget(f, :index), (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :actionStringArray), JR.lget(f, :index))]), :jm_append, [JR.lget(f, :keyMappings)]), :jm_toString, [])]), 1)))
            JR.aset(JR.get(JR.lget(f, :updateMyFontProperties), :actionStringDeltaXArray), JR.lget(f, :index), JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.lget(f, :actionString)]))
            JR.lset(f, :size2, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.aset(JR.get(JR.lget(f, :updateMyFontProperties), :inputDeltaXArray), JR.lget(f, :index), JR.anew(JR.lget(f, :size2), 0))
            JR.aset(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index), JR.anew(JR.lget(f, :size2), nil))
            JR.aset(JR.get(JR.lget(f, :updateMyFontProperties), :sepWidthArray), JR.lget(f, :index), JR.anew(JR.lget(f, :size2), 0))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.lset(f, :input, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index2)))
                JR.aset(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :inputDeltaXArray), JR.lget(f, :index)), JR.lget(f, :index2), JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.call(JR.lget(f, :input), :jm_getName, [])]))
                JR.aset(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2), JR.get(this, :EMPTY_STRING))
                if (JR.int32(JR.lget(f, :index2) + 1) < JR.call(JR.lget(f, :list), :jm_size, [])) do
                    if (JR.call(JR.lget(f, :list), :jm_size, []) == 2) do
                        JR.aset(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2), InputMappingHelpPaintable.jstatic_AND())
                    else
                        if (JR.int32(JR.lget(f, :index2) + 2) == JR.call(JR.lget(f, :list), :jm_size, [])) do
                            JR.aset(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2), InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND())
                        else
                            JR.aset(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2), InputMappingHelpPaintable.jstatic_SEP())
                        end
                    end
                end
                if (JR.aget(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2)) != JR.get(this, :EMPTY_STRING)) do
                    JR.aset(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepWidthArray), JR.lget(f, :index)), JR.lget(f, :index2), JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.aget(JR.aget(JR.get(JR.lget(f, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2))]))
                end
            end)
        end)
        JR.put(this, :updateMyFontProperties, JR.lget(f, :updateMyFontProperties))
        HelpPaintable.jm_updateMeasurement(this, JR.lget(f, :graphics))
    end)
  end


  def jm_update(this, p_selectedGameKey, p_selectedInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :selectedGameKey, p_selectedGameKey)
      JR.lset(f, :selectedInput, p_selectedInput)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, ["selected GameKey: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :selectedGameKey)])]), :jm_append, [" Input: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :selectedInput)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
        JR.lset(f, :gameKeyMapping, JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []))
        JR.lset(f, :size, JR.alength(JR.get(this, :gameInputMappingArray)))
        JR.lset(f, :keyInfo, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :keyMappingArray, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :actionBasicColor, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :inputBasicColorArray, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :gameInputMapping, nil)
        JR.lset(f, :gameKey, nil)
        JR.lset(f, :list, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameInputMapping, JR.aget(JR.get(this, :gameInputMappingArray), JR.lget(f, :index)))
            JR.lset(f, :gameKey, JR.call(JR.lget(f, :gameInputMapping), :jm_getGameKey, []))
            JR.lset(f, :list, JR.call(JR.call(JR.lget(f, :gameKeyMapping), :jm_getInputMapping, []), :jm_getMappedInput, [JR.lget(f, :gameKey)]))
            JR.lset(f, :size2, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.aset(JR.lget(f, :inputBasicColorArray), JR.lget(f, :index), JR.anew(JR.lget(f, :size2), nil))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.aset(JR.aget(JR.lget(f, :inputBasicColorArray), JR.lget(f, :index)), JR.lget(f, :index2), JR.get(this, :basicColor))
            end)
            if (JR.lget(f, :gameKey) == JR.lget(f, :selectedGameKey)) do
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, ["Found: selected GameKey: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :selectedGameKey)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
                JR.aset(JR.lget(f, :actionBasicColor), JR.lget(f, :index), JR.get(this, :selectedBasicColor))
                JR.lset(f, :indexOfSelectedInput, JR.call(JR.lget(f, :list), :jm_indexOf, [JR.lget(f, :selectedInput)]))
                if (JR.lget(f, :indexOfSelectedInput) >= 0) do
                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, ["Found: selected Input: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :selectedInput)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
                    JR.aset(JR.aget(JR.lget(f, :inputBasicColorArray), JR.lget(f, :index)), JR.lget(f, :indexOfSelectedInput), JR.get(this, :selectedBasicColor))
                end
            else
                JR.aset(JR.lget(f, :actionBasicColor), JR.lget(f, :index), JR.get(this, :basicColor))
            end
            JR.aset(JR.lget(f, :keyInfo), JR.lget(f, :index), JR.call(JR.lget(f, :gameInputMapping), :jm_getName, []))
            JR.aset(JR.lget(f, :keyMappingArray), JR.lget(f, :index), JR.lget(f, :list))
        end)
        JR.put(this, :keyMappingArray, JR.lget(f, :keyMappingArray))
        JR.put(this, :actionBasicColor, JR.lget(f, :actionBasicColor))
        JR.put(this, :inputBasicColorArray, JR.lget(f, :inputBasicColorArray))
        HelpPaintable.jm_setInputInfoP(this, JR.lget(f, :keyInfo))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_get(this, p_keyList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyList, p_keyList)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :key, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :keyList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :key, JR.aget(JR.get(JR.lget(f, :keyList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :key), :jm_getName, [])])
            if (JR.int32(JR.lget(f, :index) + 1) < JR.call(JR.lget(f, :keyList), :jm_size, [])) do
                if (JR.call(JR.lget(f, :keyList), :jm_size, []) == 2) do
                    JR.call(JR.lget(f, :stringBuffer), :jm_append, [InputMappingHelpPaintable.jstatic_AND()])
                else
                    if (JR.int32(JR.lget(f, :index) + 2) == JR.call(JR.lget(f, :keyList), :jm_size, [])) do
                        JR.call(JR.lget(f, :stringBuffer), :jm_append, [InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND()])
                    else
                        JR.call(JR.lget(f, :stringBuffer), :jm_append, [InputMappingHelpPaintable.jstatic_SEP()])
                    end
                end
            end
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :halfWidth, JR.call(JR.get(this, :displayInfo), :jm_getLastHalfWidth, []))
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.get(this, :basicColor), :jm_intValue, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :title), (JR.lget(f, :halfWidth) - JR.get(this, :titleBeginWidth)), JR.get(JR.get(this, :updateMyFontProperties), :charHeight), JR.get(this, :anchor)])
        JR.lset(f, :inputInfo, JR.get(this, :inputInfo))
        JR.lset(f, :size, JR.alength(JR.lget(f, :inputInfo)))
        JR.lset(f, :y, 0)
        JR.lset(f, :deltaX, 0)
        JR.lset(f, :size2, 0)
        JR.lset(f, :actionString, nil)
        JR.lset(f, :input, nil)
        JR.lset(f, :list, nil)
        JR.lset(f, :sep, nil)
        JR.lset(f, :beginWidth, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :y, ((JR.int32(JR.lget(f, :index) + 3)) * JR.get(JR.get(this, :updateMyFontProperties), :charHeight)))
            JR.lset(f, :deltaX, 0)
            JR.lset(f, :list, JR.aget(JR.get(this, :keyMappingArray), JR.lget(f, :index)))
            JR.lset(f, :size2, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.lset(f, :beginWidth, JR.aget(JR.get(JR.get(this, :updateMyFontProperties), :keymappingBeginWidthArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.aget(JR.get(this, :actionBasicColor), JR.lget(f, :index)), :jm_intValue, [])])
            JR.lset(f, :actionString, JR.aget(JR.get(JR.get(this, :updateMyFontProperties), :actionStringArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :actionString), JR.int32(JR.int32(JR.lget(f, :halfWidth) - JR.lget(f, :beginWidth)) + JR.lget(f, :deltaX)), JR.lget(f, :y), JR.get(this, :anchor)])
            JR.lset(f, :deltaX, JR.int32(JR.lget(f, :deltaX) + JR.aget(JR.get(JR.get(this, :updateMyFontProperties), :actionStringDeltaXArray), JR.lget(f, :index))))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.lset(f, :input, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index2)))
                JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.aget(JR.aget(JR.get(this, :inputBasicColorArray), JR.lget(f, :index)), JR.lget(f, :index2)), :jm_intValue, [])])
                JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(JR.lget(f, :input), :jm_getName, []), JR.int32(JR.int32(JR.lget(f, :halfWidth) - JR.lget(f, :beginWidth)) + JR.lget(f, :deltaX)), JR.lget(f, :y), JR.get(this, :anchor)])
                JR.lset(f, :deltaX, JR.int32(JR.lget(f, :deltaX) + JR.aget(JR.aget(JR.get(JR.get(this, :updateMyFontProperties), :inputDeltaXArray), JR.lget(f, :index)), JR.lget(f, :index2))))
                JR.lset(f, :sep, JR.aget(JR.aget(JR.get(JR.get(this, :updateMyFontProperties), :sepArray), JR.lget(f, :index)), JR.lget(f, :index2)))
                JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.get(this, :basicColor), :jm_intValue, [])])
                JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :sep), JR.int32(JR.int32(JR.lget(f, :halfWidth) - JR.lget(f, :beginWidth)) + JR.lget(f, :deltaX)), JR.lget(f, :y), JR.get(this, :anchor)])
                JR.lset(f, :deltaX, JR.int32(JR.lget(f, :deltaX) + JR.aget(JR.aget(JR.get(JR.get(this, :updateMyFontProperties), :sepWidthArray), JR.lget(f, :index)), JR.lget(f, :index2))))
            end)
        end)
    end)
  end
end


