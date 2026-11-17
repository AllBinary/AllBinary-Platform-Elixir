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
# package org.allbinary.graphics.displayable

defmodule DisplayInfoSingleton do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> DisplayInfoSingleton.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonLabels, nil)
    JR.put(this, :commonSeps, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :ORIENTATION, nil)
    JR.put(this, :ADJUSTING_FOR_SCALING_IN_PORTRAIT, nil)
    JR.put(this, :ADJUSTING_FOR_SCALING_IN_LANDSCAPE, nil)
    JR.put(this, :last, nil)
    JR.put(this, :lastHalf, nil)
    JR.put(this, :full, nil)
    JR.put(this, :top, 0)
    JR.put(this, :left, 0)
    JR.put(this, :xOffset, 0)
    JR.put(this, :yOffset, 0)
    JR.put(this, :scaleLargestTo, 0.0)
    JR.put(this, :WIDTH, 0)
    JR.put(this, :HEIGHT, 0)
    JR.put(this, :CUSTOM_WIDTH, 0)
    JR.put(this, :CUSTOM_HEIGHT, 0)
    JR.put(this, :scalableListener, nil)
    JR.put(this, :displayRatio, 0.0)
    JR.put(this, :ratio, 0.0)
    JR.put(this, :SET_LAST_SIZE_METHOD_NAME, nil)
    JR.put(this, :FULL_WIDTH, nil)
    JR.put(this, :FULL_HEIGHT, nil)
    JR.put(this, :LAST_WIDTH, nil)
    JR.put(this, :LAST_HEIGHT, nil)
    JR.put(this, :PORTRAIT, nil)
    JR.put(this, :LANDSCAPE, nil)
    JR.put(this, :displayChangeEvent, nil)
    JR.put(this, :FIRE_METHOD_NAME, nil)
    JR.put(this, :REASON, nil)
    JR.put(this, :UPDATE_FROM_ORIENTATION_CHANGE, nil)
    JR.put(this, :list, nil)
    JR.put(this, :DISPLAY_INFO, nil)
    JR.put(this, :FULL, nil)
    JR.put(this, :LAST, nil)
    JR.put(this, :LAST_HALF, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonLabels, CommonLabels.jm_getInstance())
        JR.put(this, :commonSeps, CommonSeps.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :ORIENTATION, "ORIENTATION")
        JR.put(this, :ADJUSTING_FOR_SCALING_IN_PORTRAIT, "Adjusting for Scaling in portrait display ratio: ")
        JR.put(this, :ADJUSTING_FOR_SCALING_IN_LANDSCAPE, "Adjusting for Scaling in landscape display ratio: ")
        JR.put(this, :last, JR.anew(4, 0))
        JR.put(this, :lastHalf, JR.anew(4, 0))
        JR.put(this, :full, JR.anew(4, 0))
        JR.put(this, :top, 0)
        JR.put(this, :left, 0)
        JR.put(this, :xOffset, 0)
        JR.put(this, :yOffset, 0)
        JR.put(this, :scaleLargestTo, 0.0)
        JR.put(this, :WIDTH, 0)
        JR.put(this, :HEIGHT, 1)
        JR.put(this, :CUSTOM_WIDTH, 2)
        JR.put(this, :CUSTOM_HEIGHT, 3)
        JR.put(this, :scalableListener, BaseScalable.jnew())
        JR.put(this, :displayRatio, 0.0)
        JR.put(this, :ratio, 1.0)
        JR.put(this, :SET_LAST_SIZE_METHOD_NAME, "setLastSize")
        JR.put(this, :FULL_WIDTH, " FullWidth: ")
        JR.put(this, :FULL_HEIGHT, " FullHeight: ")
        JR.put(this, :LAST_WIDTH, "LastWidth: ")
        JR.put(this, :LAST_HEIGHT, " LastHeight: ")
        JR.put(this, :PORTRAIT, "Portrait")
        JR.put(this, :LANDSCAPE, "Landscape")
        JR.put(this, :displayChangeEvent, DisplayChangeEvent.jnew(this))
        JR.put(this, :FIRE_METHOD_NAME, "fire")
        JR.put(this, :REASON, "reason: ")
        JR.put(this, :UPDATE_FROM_ORIENTATION_CHANGE, "Updating from Orientation Change ")
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :DISPLAY_INFO, "Display Info: ")
        JR.put(this, :FULL, "full")
        JR.put(this, :LAST, "last")
        JR.put(this, :LAST_HALF, "lastHalf")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DisplayInfoSingleton.jstatic_SINGLETON()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :size, JR.alength(JR.get(this, :last)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :last), JR.lget(f, :index), 0)
            JR.aset(JR.get(this, :lastHalf), JR.lget(f, :index), 0)
            JR.aset(JR.get(this, :full), JR.lget(f, :index), 0)
        end)
        if AndroidUtil.jm_isAndroid() do
            JR.put(this, :scaleLargestTo, 640.0)
        else
            JR.put(this, :scaleLargestTo, 1080.0)
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getLastHalf(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastHalf)})
    end)
  end


  def jm_getLast(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :last)})
    end)
  end


  def jm_getFull(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :full)})
    end)
  end


  def jm_getScaleLargestTo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scaleLargestTo)})
    end)
  end


  def jm_setScaleLargestTo(this, p_scaleLargestTo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleLargestTo, p_scaleLargestTo)
        JR.put(this, :scaleLargestTo, (JR.lget(f, :scaleLargestTo) * 1.0))
    end)
  end


  def jm_setLastSize(this, p_aLastWidth, p_aLastHeight, p_reason) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aLastWidth, p_aLastWidth)
      JR.lset(f, :aLastHeight, p_aLastHeight)
      JR.lset(f, :reason, p_reason)
        if ((JR.aget(JR.get(this, :full), JR.get(this, :WIDTH)) != JR.lget(f, :aLastWidth)) || (JR.aget(JR.get(this, :full), JR.get(this, :HEIGHT)) != JR.lget(f, :aLastHeight))) do
            JR.call(this, :jm_setLastSizeForce, [JR.lget(f, :aLastWidth), JR.lget(f, :aLastHeight), JR.lget(f, :reason)])
        end
    end)
  end


  def jm_setLastSizeForce(this, p_aLastWidth, p_aLastHeight, p_reason) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aLastWidth, p_aLastWidth)
      JR.lset(f, :aLastHeight, p_aLastHeight)
      JR.lset(f, :reason, p_reason)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.lget(f, :reason)]), :jm_toString, []), this, JR.get(this, :SET_LAST_SIZE_METHOD_NAME)])
        JR.lset(f, :aFullWidth, JR.lget(f, :aLastWidth))
        JR.lset(f, :aFullHeight, JR.lget(f, :aLastHeight))
        JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :FULL_WIDTH)]), :jm_appendint, [JR.lget(f, :aFullWidth)]), :jm_append, [JR.get(this, :FULL_HEIGHT)]), :jm_appendint, [JR.lget(f, :aFullHeight)]), :jm_append, [JR.call(this, :jm_toString, [])]), :jm_toString, []), this, JR.get(this, :SET_LAST_SIZE_METHOD_NAME)])
        JR.lset(f, :operatingSystemInterface, JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
        if JR.call(JR.lget(f, :operatingSystemInterface), :jm_isOverScan, []) do
            JR.lset(f, :aLastWidth, ((JR.lget(f, :aLastWidth) * JR.call(JR.lget(f, :operatingSystemInterface), :jm_getOverScanXPercent, [])) / 100))
            JR.lset(f, :aLastHeight, ((JR.lget(f, :aLastHeight) * JR.call(JR.lget(f, :operatingSystemInterface), :jm_getOverScanYPercent, [])) / 100))
        end
        if JR.call(JR.lget(f, :operatingSystemInterface), :jm_isScalable, []) do
            if JR.call(this, :jm_isPortraitWH, [JR.lget(f, :aLastWidth), JR.lget(f, :aLastHeight)]) do
                if ((JR.lget(f, :aLastHeight) * 1.0) > JR.get(this, :scaleLargestTo)) do
                    JR.put(this, :displayRatio, (JR.get(this, :scaleLargestTo) / (JR.lget(f, :aLastHeight) * 1.0)))
                    JR.put(this, :ratio, ((JR.lget(f, :aLastHeight) * 1.0) / JR.get(this, :scaleLargestTo)))
                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :ADJUSTING_FOR_SCALING_IN_PORTRAIT)]), :jm_appendfloat, [JR.get(this, :displayRatio)]), :jm_toString, []), this, JR.get(this, :SET_LAST_SIZE_METHOD_NAME)])
                    JR.lset(f, :aLastWidth, JR.int32(JR.d2i((((JR.lget(f, :aLastWidth) * 1.0) * JR.get(this, :displayRatio))))))
                    JR.lset(f, :aLastHeight, JR.int32(JR.d2i((((JR.lget(f, :aLastHeight) * 1.0) * JR.get(this, :displayRatio))))))
                    JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                else
                    JR.put(this, :ratio, 1.0)
                    JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                end
            else
                if ((JR.lget(f, :aLastWidth) * 1.0) > JR.get(this, :scaleLargestTo)) do
                    JR.put(this, :displayRatio, (JR.get(this, :scaleLargestTo) / (JR.lget(f, :aLastWidth) * 1.0)))
                    JR.put(this, :ratio, ((JR.lget(f, :aLastWidth) * 1.0) / JR.get(this, :scaleLargestTo)))
                    JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :ADJUSTING_FOR_SCALING_IN_LANDSCAPE)]), :jm_appendfloat, [JR.get(this, :displayRatio)]), :jm_toString, []), this, JR.get(this, :SET_LAST_SIZE_METHOD_NAME)])
                    JR.lset(f, :aLastWidth, JR.int32(JR.d2i((((JR.lget(f, :aLastWidth) * 1.0) * JR.get(this, :displayRatio))))))
                    JR.lset(f, :aLastHeight, JR.int32(JR.d2i((((JR.lget(f, :aLastHeight) * 1.0) * JR.get(this, :displayRatio))))))
                    JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                else
                    JR.put(this, :ratio, 1.0)
                    JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                end
            end
        end
        JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :LAST_WIDTH)]), :jm_appendint, [JR.lget(f, :aLastWidth)]), :jm_append, [JR.get(this, :LAST_HEIGHT)]), :jm_appendint, [JR.lget(f, :aLastHeight)]), :jm_toString, []), this, JR.get(this, :SET_LAST_SIZE_METHOD_NAME)])
        JR.put(this, :xOffset, JR.int32(JR.lget(f, :aFullWidth) - JR.lget(f, :aLastWidth)))
        JR.put(this, :yOffset, JR.int32(JR.lget(f, :aFullHeight) - JR.lget(f, :aLastHeight)))
        JR.put(this, :left, JR.call(JR.get(this, :scalableListener), :jm_getLeft, [JR.get(this, :xOffset)]))
        JR.put(this, :top, JR.call(JR.get(this, :scalableListener), :jm_getTop, [JR.get(this, :yOffset)]))
        JR.aset(JR.get(this, :full), JR.get(this, :WIDTH), JR.lget(f, :aFullWidth))
        JR.aset(JR.get(this, :full), JR.get(this, :HEIGHT), JR.lget(f, :aFullHeight))
        JR.aset(JR.get(this, :last), JR.get(this, :WIDTH), JR.lget(f, :aLastWidth))
        JR.aset(JR.get(this, :lastHalf), JR.get(this, :WIDTH), (Bitwise.bsr(JR.aget(JR.get(this, :last), JR.get(this, :WIDTH)), 1)))
        JR.aset(JR.get(this, :last), JR.get(this, :HEIGHT), JR.lget(f, :aLastHeight))
        JR.aset(JR.get(this, :lastHalf), JR.get(this, :HEIGHT), (Bitwise.bsr(JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT)), 1)))
        JR.call(SWTJOGLProcessor.jm_getInstance(), :jm_setCustom, [JR.lget(f, :aLastWidth), JR.lget(f, :aLastHeight), JR.get(this, :ratio)])
        JR.call(this, :jm_add, [JR.get(this, :SET_LAST_SIZE_METHOD_NAME)])
    end)
  end


  def jm_isPortraitWH(this, p_lastWidth, p_lastHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lastWidth, p_lastWidth)
      JR.lset(f, :lastHeight, p_lastHeight)
        if (JR.lget(f, :lastHeight) > JR.lget(f, :lastWidth)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_isPortrait(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_isPortraitWH, [JR.aget(JR.get(this, :last), JR.get(this, :WIDTH)), JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT))])})
    end)
  end


  def jm_add(this, p_reason) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :reason, p_reason)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :REASON)]), :jm_append, [JR.lget(f, :reason)]), :jm_toString, []), this, JR.get(this, :FIRE_METHOD_NAME)])
        JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(this, :jm_toStringAppend, [JR.lget(f, :stringMaker)]), this, JR.get(this, :FIRE_METHOD_NAME)])
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :reason)])
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            if (JR.call(JR.get(this, :list), :jm_size, []) > 0) do
                JR.call(this, :jm_processForced, [])
            end
            JR.call(JR.get(this, :list), :jm_clear, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE(JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(this, :FIRE_METHOD_NAME), JR.lget(f, :e))
        end
    end)
  end


  def jm_processForced(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :swtJOGLProcessor, SWTJOGLProcessor.jm_getInstance())
            JR.call(JR.lget(f, :swtJOGLProcessor), :jm_clear, [])
            JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :displayChangeEvent)])
            JR.call(LastDisplayChangeEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :displayChangeEvent)])
            JR.call(JR.lget(f, :swtJOGLProcessor), :jm_onSurfaceChanged, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE(JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(this, :FIRE_METHOD_NAME), JR.lget(f, :e))
        end
    end)
  end


  def jm_update(this, p_displayable, p_reason) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayable, p_displayable)
      JR.lset(f, :reason, p_reason)
        JR.lset(f, :aLastWidth, JR.call(JR.lget(f, :displayable), :jm_getWidth, []))
        JR.lset(f, :aLastHeight, JR.call(JR.lget(f, :displayable), :jm_getHeight, []))
        JR.lset(f, :aFullWidth, JR.lget(f, :aLastWidth))
        JR.lset(f, :aFullHeight, JR.lget(f, :aLastHeight))
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.lget(f, :reason)]), :jm_append, [JR.get(this, :LAST_WIDTH)]), :jm_appendint, [JR.lget(f, :aLastWidth)]), :jm_append, [JR.get(this, :LAST_HEIGHT)]), :jm_appendint, [JR.lget(f, :aLastHeight)]), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)]), :jm_append, [JR.call(this, :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
        if ((JR.lget(f, :aLastWidth) > 0) && (JR.lget(f, :aLastHeight) > 0)) do
            JR.lset(f, :features, Features.jm_getInstance())
            JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
            if ((!JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL)]) || (JR.aget(JR.get(this, :last), JR.get(this, :WIDTH)) != JR.lget(f, :aLastWidth))) || (JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT)) != JR.lget(f, :aLastHeight))) do
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :UPDATE_FROM_ORIENTATION_CHANGE)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
                JR.lset(f, :operatingSystemInterface, JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
                if JR.call(JR.lget(f, :operatingSystemInterface), :jm_isOverScan, []) do
                    JR.lset(f, :aLastWidth, ((JR.lget(f, :aLastWidth) * JR.call(JR.lget(f, :operatingSystemInterface), :jm_getOverScanXPercent, [])) / 100))
                    JR.lset(f, :aLastHeight, ((JR.lget(f, :aLastHeight) * JR.call(JR.lget(f, :operatingSystemInterface), :jm_getOverScanYPercent, [])) / 100))
                end
                if JR.call(JR.lget(f, :operatingSystemInterface), :jm_isScalable, []) do
                    if JR.call(this, :jm_isPortraitWH, [JR.lget(f, :aLastWidth), JR.lget(f, :aLastHeight)]) do
                        if ((JR.lget(f, :aLastHeight) * 1.0) > JR.get(this, :scaleLargestTo)) do
                            JR.put(this, :displayRatio, (JR.get(this, :scaleLargestTo) / (JR.lget(f, :aLastHeight) * 1.0)))
                            JR.put(this, :ratio, ((JR.lget(f, :aLastHeight) * 1.0) / JR.get(this, :scaleLargestTo)))
                            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :ADJUSTING_FOR_SCALING_IN_PORTRAIT)]), :jm_appendfloat, [JR.get(this, :displayRatio)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
                            JR.lset(f, :aLastWidth, JR.int32(JR.d2i((((JR.lget(f, :aLastWidth) * 1.0) * JR.get(this, :displayRatio))))))
                            JR.lset(f, :aLastHeight, JR.int32(JR.d2i((((JR.lget(f, :aLastHeight) * 1.0) * JR.get(this, :displayRatio))))))
                            JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                        else
                            JR.put(this, :ratio, 1.0)
                            JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                        end
                    else
                        if ((JR.lget(f, :aLastWidth) * 1.0) > JR.get(this, :scaleLargestTo)) do
                            JR.put(this, :displayRatio, (JR.get(this, :scaleLargestTo) / (JR.lget(f, :aLastWidth) * 1.0)))
                            JR.put(this, :ratio, ((JR.lget(f, :aLastWidth) * 1.0) / JR.get(this, :scaleLargestTo)))
                            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :ADJUSTING_FOR_SCALING_IN_LANDSCAPE)]), :jm_appendfloat, [JR.get(this, :displayRatio)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
                            JR.lset(f, :aLastWidth, JR.int32(JR.d2i((((JR.lget(f, :aLastWidth) * 1.0) * JR.get(this, :displayRatio))))))
                            JR.lset(f, :aLastHeight, JR.int32(JR.d2i((((JR.lget(f, :aLastHeight) * 1.0) * JR.get(this, :displayRatio))))))
                            JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                        else
                            JR.put(this, :ratio, 1.0)
                            JR.call(JR.get(this, :scalableListener), :jm_scale, [JR.get(this, :ratio)])
                        end
                    end
                end
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :UPDATE_FROM_ORIENTATION_CHANGE)]), :jm_append, [JR.get(this, :LAST_WIDTH)]), :jm_appendint, [JR.lget(f, :aLastWidth)]), :jm_append, [JR.get(this, :LAST_HEIGHT)]), :jm_appendint, [JR.lget(f, :aLastHeight)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
                JR.put(this, :xOffset, JR.int32(JR.lget(f, :aFullWidth) - JR.lget(f, :aLastWidth)))
                JR.put(this, :yOffset, JR.int32(JR.lget(f, :aFullHeight) - JR.lget(f, :aLastHeight)))
                JR.put(this, :left, JR.call(JR.get(this, :scalableListener), :jm_getLeft, [JR.get(this, :xOffset)]))
                JR.put(this, :top, JR.call(JR.get(this, :scalableListener), :jm_getTop, [JR.get(this, :yOffset)]))
                JR.aset(JR.get(this, :full), JR.get(this, :WIDTH), JR.lget(f, :aFullWidth))
                JR.aset(JR.get(this, :full), JR.get(this, :HEIGHT), JR.lget(f, :aFullHeight))
                JR.aset(JR.get(this, :last), JR.get(this, :WIDTH), JR.lget(f, :aLastWidth))
                JR.aset(JR.get(this, :lastHalf), JR.get(this, :WIDTH), (Bitwise.bsr(JR.aget(JR.get(this, :last), JR.get(this, :WIDTH)), 1)))
                JR.aset(JR.get(this, :last), JR.get(this, :HEIGHT), JR.lget(f, :aLastHeight))
                JR.aset(JR.get(this, :lastHalf), JR.get(this, :HEIGHT), (Bitwise.bsr(JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT)), 1)))
                JR.call(SWTJOGLProcessor.jm_getInstance(), :jm_setCustom, [JR.lget(f, :aLastWidth), JR.lget(f, :aLastHeight), JR.get(this, :ratio)])
                JR.call(this, :jm_add, [JR.get(JR.get(this, :commonStrings), :UPDATE)])
            end
        end
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        throw({:jreturn, JR.call(this, :jm_toStringAppend, [JR.lget(f, :stringBuffer)])})
    end)
  end


  def jm_toStringAppend(this, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringBuffer, p_stringBuffer)
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :DISPLAY_INFO)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :FULL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :WIDTH_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.aget(JR.get(this, :full), JR.get(this, :WIDTH))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :FULL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.aget(JR.get(this, :full), JR.get(this, :HEIGHT))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :LAST)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :WIDTH_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.aget(JR.get(this, :last), JR.get(this, :WIDTH))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :LAST)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :LAST_HALF)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :WIDTH_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.aget(JR.get(this, :lastHalf), JR.get(this, :WIDTH))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :LAST_HALF)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.aget(JR.get(this, :lastHalf), JR.get(this, :HEIGHT))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [(if JR.call(this, :jm_isPortrait, []), do: JR.get(this, :PORTRAIT), else: JR.get(this, :LANDSCAPE))])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getTop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :top)})
    end)
  end


  def jm_getLeft(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :left)})
    end)
  end


  def jm_getLastWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :last), JR.get(this, :WIDTH))})
    end)
  end


  def jm_getLastHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT))})
    end)
  end


  def jm_getLastHalfWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :lastHalf), JR.get(this, :WIDTH))})
    end)
  end


  def jm_getLastHalfHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :lastHalf), JR.get(this, :HEIGHT))})
    end)
  end


  def jm_getCustomLastWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :last), JR.get(this, :CUSTOM_WIDTH))})
    end)
  end


  def jm_getCustomLastHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :last), JR.get(this, :CUSTOM_HEIGHT))})
    end)
  end


  def jm_getRawLastWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :last), JR.get(this, :WIDTH))})
    end)
  end


  def jm_getRawLastHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.get(this, :last), JR.get(this, :HEIGHT))})
    end)
  end


  def jm_setCustom(this, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.aset(JR.get(this, :last), JR.get(this, :CUSTOM_WIDTH), JR.lget(f, :width))
        JR.aset(JR.get(this, :lastHalf), JR.get(this, :CUSTOM_WIDTH), (Bitwise.bsr(JR.aget(JR.get(this, :last), JR.get(this, :CUSTOM_WIDTH)), 1)))
        JR.aset(JR.get(this, :last), JR.get(this, :CUSTOM_HEIGHT), JR.lget(f, :height))
        JR.aset(JR.get(this, :lastHalf), JR.get(this, :CUSTOM_HEIGHT), (Bitwise.bsr(JR.aget(JR.get(this, :last), JR.get(this, :CUSTOM_HEIGHT)), 1)))
    end)
  end


  def jm_setScalableListener(this, p_scalableListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scalableListener, p_scalableListener)
        JR.put(this, :scalableListener, JR.lget(f, :scalableListener))
    end)
  end


  def jm_getScalableListener(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scalableListener)})
    end)
  end


  def jm_getRatio(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :ratio)})
    end)
  end


  def jm_getDisplayRatio(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :displayRatio)})
    end)
  end


  def jm_setOffset(this, p_left, p_top) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :left, p_left)
      JR.lset(f, :top, p_top)
        JR.put(this, :left, JR.lget(f, :left))
    end)
  end


  def jm_getxOffset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :xOffset)})
    end)
  end


  def jm_getyOffset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :yOffset)})
    end)
  end
end


