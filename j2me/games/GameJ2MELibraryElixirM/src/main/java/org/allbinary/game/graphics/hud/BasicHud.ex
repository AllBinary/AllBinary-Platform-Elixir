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
# package org.allbinary.game.graphics.hud

defmodule BasicHud do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :canvasStrings, nil)
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :displayInfo, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :location, 0)
    JR.put(this, :direction, 0)
    JR.put(this, :bufferZone, 0)
    JR.put(this, :bufferZoneY, 0)
    JR.put(this, :hudGraphicsPosition, nil)
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
    JR.put(this, :basicColor, nil)
    JR.put(this, :color, 0)
    JR.put(this, :updateMaxWidth, 0)
    JR.put(this, :updateMaxHeight, 0)
    JR.put(this, :offsetY, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :canvasStrings, CanvasStrings.jm_getInstance())
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        JR.put(this, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :location, 0)
        JR.put(this, :direction, 0)
        JR.put(this, :bufferZone, 0)
        JR.put(this, :bufferZoneY, 0)
        JR.put(this, :hudGraphicsPosition, HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION())
        JR.put(this, :x, 0)
        JR.put(this, :y, 0)
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :BLACK))
        
        JR.put(this, :updateMaxWidth, 0)
        JR.put(this, :updateMaxHeight, 0)
        JR.put(this, :offsetY, 0)
    nil
  end


  def jinit(this, p_location, p_direction, p_bufferZone, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :bufferZone, p_bufferZone)
      JR.lset(f, :basicColor, p_basicColor)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setLocation, [JR.lget(f, :location)])
        JR.call(this, :jm_setDirection, [JR.lget(f, :direction)])
        JR.call(this, :jm_setBufferZone, [JR.lget(f, :bufferZone)])
        JR.call(this, :jm_onDisplayChangeEvent, [JR.get(DisplayInfoSingleton.jm_getInstance(), :displayChangeEvent)])
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
        JR.put(this, :color, JR.call(JR.lget(f, :basicColor), :jm_intValue, []))
    end)
  end

  def jnew(p_location, p_direction, p_bufferZone, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_location, p_direction, p_bufferZone, p_basicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        try do
            JR.put(this, :hudGraphicsPosition, JR.call(this, :jm_getHudGraphicsPositionWH, [JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []), JR.call(JR.get(this, :displayInfo), :jm_getLastHeight, []), JR.get(this, :updateMaxWidth), JR.get(this, :updateMaxHeight)]))
            JR.put(this, :x, JR.call(JR.call(JR.get(this, :hudGraphicsPosition), :jm_getPoint, []), :jm_getX, []))
            JR.call(this, :jm_setY, [JR.call(JR.call(JR.get(this, :hudGraphicsPosition), :jm_getPoint, []), :jm_getY, [])])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT), JR.lget(f, :e)])
        end
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_getLocation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :location)})
    end)
  end


  def jm_getDirection(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :direction)})
    end)
  end


  def jm_getHudGraphicsPositionWH(this, p_width, p_height, p_maxWidth, p_maxHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :maxWidth, p_maxWidth)
      JR.lset(f, :maxHeight, p_maxHeight)
        JR.lset(f, :x, 0)
        JR.lset(f, :y, 0)
        JR.lset(f, :anchor, 0)
        JR.lset(f, :basicHudFactory, BasicHudFactory.jm_getInstance())
        if (JR.get(JR.lget(f, :basicHudFactory), :BOTTOMLEFT) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, JR.int32(JR.get(this, :bufferZone) + 2))
            JR.lset(f, :y, JR.int32(JR.int32(JR.lget(f, :height) - JR.lget(f, :maxHeight)) - JR.get(this, :bufferZone)))
            JR.lset(f, :anchor, (Graphics.jstatic_BOTTOM() and Graphics.jstatic_LEFT()))
        else
            if (JR.get(JR.lget(f, :basicHudFactory), :BOTTOMRIGHT) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, JR.int32(JR.lget(f, :width) - JR.lget(f, :maxWidth)))
            JR.lset(f, :y, JR.int32(JR.int32(JR.lget(f, :height) - JR.lget(f, :maxHeight)) - JR.get(this, :bufferZone)))
            JR.lset(f, :anchor, (Graphics.jstatic_BOTTOM() and Graphics.jstatic_RIGHT()))
        else
            if (JR.get(JR.lget(f, :basicHudFactory), :TOPLEFT) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, JR.int32(JR.get(this, :bufferZone) + 2))
            JR.lset(f, :y, JR.get(this, :bufferZoneY))
            JR.lset(f, :anchor, Anchor.jstatic_TOP_LEFT())
        else
            if (JR.get(JR.lget(f, :basicHudFactory), :TOPRIGHT) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, JR.int32(JR.lget(f, :width) - JR.lget(f, :maxWidth)))
            JR.lset(f, :y, JR.get(this, :bufferZoneY))
            JR.lset(f, :anchor, (Graphics.jstatic_TOP() and Graphics.jstatic_RIGHT()))
        else
            if (JR.get(JR.lget(f, :basicHudFactory), :TOPCENTER) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, (div((JR.int32(JR.lget(f, :width) - JR.lget(f, :maxWidth))), 2)))
            JR.lset(f, :y, JR.get(this, :bufferZoneY))
            JR.lset(f, :anchor, (Graphics.jstatic_TOP() and Graphics.jstatic_HCENTER()))
        else
            if (JR.get(JR.lget(f, :basicHudFactory), :BOTTOMCENTER) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, (div((JR.int32(JR.lget(f, :width) - JR.lget(f, :maxWidth))), 2)))
            JR.lset(f, :y, JR.int32(JR.int32(JR.lget(f, :height) - JR.lget(f, :maxHeight)) - JR.get(this, :bufferZone)))
            JR.lset(f, :anchor, (Graphics.jstatic_BOTTOM() and Graphics.jstatic_HCENTER()))
        else
            if (JR.get(JR.lget(f, :basicHudFactory), :ABSOLUTE) == JR.call(this, :jm_getLocation, [])) do
            JR.lset(f, :x, JR.lget(f, :maxHeight))
            JR.lset(f, :y, JR.lget(f, :maxWidth))
            JR.lset(f, :anchor, 0)
        end
        end
        end
        end
        end
        end
        end
        throw({:jreturn, HudGraphicsPosition.jnew(JR.call(this, :jm_getPoint, [JR.lget(f, :x), JR.lget(f, :y)]), JR.lget(f, :anchor))})
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onDisplayChangeEvent(this, p_displayChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayChangeEvent, p_displayChangeEvent)
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_getPoint(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        throw({:jreturn, JR.call(PointFactory.jm_getInstance(), :jm_createXY, [JR.lget(f, :x), JR.lget(f, :y)])})
    end)
  end


  def jm_getBufferZone(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :bufferZone)})
    end)
  end


  def jm_setBufferZone(this, p_bufferZone) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bufferZone, p_bufferZone)
        JR.put(this, :bufferZone, JR.lget(f, :bufferZone))
        if J2MEUtil.jm_isHTML() do
            JR.put(this, :bufferZoneY, JR.get(this, :bufferZone))
        else
            JR.put(this, :bufferZoneY, JR.int32(JR.get(this, :bufferZone) + 5))
        end
    end)
  end


  def jm_setLocation(this, p_location) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :location, p_location)
        JR.put(this, :location, JR.lget(f, :location))
    end)
  end


  def jm_setDirection(this, p_direction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
        JR.put(this, :direction, JR.lget(f, :direction))
    end)
  end


  def jm_getHudGraphicsPosition(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hudGraphicsPosition)})
    end)
  end


  def jm_getColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :color)})
    end)
  end


  def jm_getX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :x)})
    end)
  end


  def jm_setX(this, p_x) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
        JR.put(this, :x, JR.lget(f, :x))
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColor)})
    end)
  end


  def jm_setY(this, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :y, p_y)
        JR.put(this, :y, JR.lget(f, :y))
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :y)})
    end)
  end


  def jm_paintSSO(this, p_graphics, p_string, p_string2, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :string, p_string)
      JR.lset(f, :string2, p_string2)
      JR.lset(f, :offset, p_offset)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :string), JR.get(this, :x), JR.call(this, :jm_getY, []), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :string2), JR.int32(JR.get(this, :x) + JR.lget(f, :offset)), JR.call(this, :jm_getY, []), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
    end)
  end


  def jm_paintSSOO(this, p_graphics, p_string, p_string2, p_offset, p_offset2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :string, p_string)
      JR.lset(f, :string2, p_string2)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :offset2, p_offset2)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(this, :jm_getColor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :string), JR.int32(JR.get(this, :x) + JR.lget(f, :offset)), JR.call(this, :jm_getY, []), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :string2), JR.int32(JR.get(this, :x) + JR.lget(f, :offset2)), JR.call(this, :jm_getY, []), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
    end)
  end


  def jm_paintDXY(this, p_graphics, p_charArray, p_offset, p_len, p_charArray2, p_offset2, p_len2, p_xOffset, p_xOffset2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :charArray, p_charArray)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :len, p_len)
      JR.lset(f, :charArray2, p_charArray2)
      JR.lset(f, :offset2, p_offset2)
      JR.lset(f, :len2, p_len2)
      JR.lset(f, :xOffset, p_xOffset)
      JR.lset(f, :xOffset2, p_xOffset2)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, [])])
        JR.lset(f, :y, JR.call(this, :jm_getY, []))
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray), JR.lget(f, :offset), JR.lget(f, :len), JR.int32(JR.get(this, :x) + JR.lget(f, :xOffset)), JR.lget(f, :y), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray2), JR.lget(f, :offset2), JR.lget(f, :len2), JR.int32(JR.get(this, :x) + JR.lget(f, :xOffset2)), JR.lget(f, :y), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
    end)
  end


  def jm_paintDX(this, p_graphics, p_charArray, p_offset, p_len, p_charArray2, p_offset2, p_len2, p_xOffset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :charArray, p_charArray)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :len, p_len)
      JR.lset(f, :charArray2, p_charArray2)
      JR.lset(f, :offset2, p_offset2)
      JR.lset(f, :len2, p_len2)
      JR.lset(f, :xOffset, p_xOffset)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, [])])
        JR.lset(f, :y, JR.call(this, :jm_getY, []))
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray), JR.lget(f, :offset), JR.lget(f, :len), JR.get(this, :x), JR.lget(f, :y), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray2), JR.lget(f, :offset2), JR.lget(f, :len2), JR.int32(JR.get(this, :x) + JR.lget(f, :xOffset)), JR.lget(f, :y), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
    end)
  end


  def jm_paintOffsetAndLength(this, p_graphics, p_charArray, p_offset, p_len) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :charArray, p_charArray)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :len, p_len)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, [])])
        JR.lset(f, :y, JR.call(this, :jm_getY, []))
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray), JR.lget(f, :offset), JR.lget(f, :len), JR.get(this, :x), JR.lget(f, :y), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
    end)
  end


  def jm_paintString(this, p_graphics, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :string, p_string)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, [])])
        JR.lset(f, :y, JR.int32(JR.call(this, :jm_getY, []) + JR.get(this, :offsetY)))
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :string), JR.get(this, :x), JR.lget(f, :y), JR.call(JR.get(this, :hudGraphicsPosition), :jm_getAnchor, [])])
    end)
  end
end


