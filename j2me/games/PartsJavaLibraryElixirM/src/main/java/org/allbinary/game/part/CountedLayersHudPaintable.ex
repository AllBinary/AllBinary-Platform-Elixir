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
# package org.allbinary.game.part

defmodule CountedLayersHudPaintable do
  def jsuper(), do: JObject
def jstatic_XXStringWidth(), do: JR.static_get(__MODULE__, :XXStringWidth, fn -> 0 end)
  def jstatic_set_XXStringWidth(value), do: JR.static_put(__MODULE__, :XXStringWidth, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :partInterfaceArray, nil)
    JR.put(this, :countedTotalStringColor, 0)
    JR.put(this, :countedPartsBorder, 0)
    JR.put(this, :startIndex, 0)
    JR.put(this, :dropSize, 0)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :height, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        
        
        
        
        
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :height, 0)
    nil
  end


  def jinit(this, p_partInterfaceArray, p_dropSize, p_startIndex, p_countedTotalStringColor, p_countedPartsBorder) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :partInterfaceArray, p_partInterfaceArray)
      JR.lset(f, :dropSize, p_dropSize)
      JR.lset(f, :startIndex, p_startIndex)
      JR.lset(f, :countedTotalStringColor, p_countedTotalStringColor)
      JR.lset(f, :countedPartsBorder, p_countedPartsBorder)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :partInterfaceArray, JR.lget(f, :partInterfaceArray))
        JR.put(this, :startIndex, JR.lget(f, :startIndex))
        JR.put(this, :countedTotalStringColor, JR.lget(f, :countedTotalStringColor))
        JR.put(this, :countedPartsBorder, JR.lget(f, :countedPartsBorder))
        JR.put(this, :dropSize, JR.lget(f, :dropSize))
    end)
  end

  def jnew(p_partInterfaceArray, p_dropSize, p_startIndex, p_countedTotalStringColor, p_countedPartsBorder) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_partInterfaceArray, p_dropSize, p_startIndex, p_countedTotalStringColor, p_countedPartsBorder)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :height, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        if (JR.get(this, :dropSize) > JR.call(JR.lget(f, :font), :jm_getHeight, [])) do
            JR.put(this, :height, JR.get(this, :dropSize))
        end
        if (CountedLayersHudPaintable.jstatic_XXStringWidth() == 0) do
            JR.lset(f, :XXString, "XX")
            CountedLayersHudPaintable.jstatic_set_XXStringWidth(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.lget(f, :XXString)]))
        end
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :lastWidth, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []))
        JR.lset(f, :widthEdge, JR.int32(JR.lget(f, :lastWidth) - JR.get(this, :dropSize)))
        JR.lset(f, :size, JR.alength(JR.get(this, :partInterfaceArray)))
        JR.lset(f, :count, 0)
        JR.lset(f, :y, 0)
        JR.lset(f, :countedLayerInterfaceFactory, nil)
        JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, nil)
        JR.lset(f, :layerInterface, nil)
        JR.lset(f, :charArray, nil)
        JR.lset(f, :index, JR.get(this, :startIndex))
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :countedLayerInterfaceFactory, JR.aget(JR.get(this, :partInterfaceArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_getTotal, []) > 0) do
                JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_getCountedPickedUpLayerInterfaceFactory, []))
                JR.lset(f, :layerInterface, JR.call(JR.lget(f, :pickedUpLayerInterfaceFactoryInterface), :jm_getIconLayer, []))
                JR.lset(f, :y, JR.int32(40 + (JR.int32(JR.lget(f, :count) * JR.get(this, :height)))))
                JR.call(JR.lget(f, :layerInterface), :jm_setPosition, [JR.lget(f, :widthEdge), JR.lget(f, :y), JR.call(JR.lget(f, :layerInterface), :jm_getZP, [])])
                JR.call(JR.lget(f, :layerInterface), :jm_paint, [JR.lget(f, :graphics)])
                JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :countedTotalStringColor)])
                JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_paint, [JR.lget(f, :graphics)])
                JR.lset(f, :charArray, JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_getTotalString, []))
                JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray), 0, JR.alength(JR.lget(f, :charArray)), (JR.lget(f, :widthEdge) - JR.call(JR.lget(f, :countedLayerInterfaceFactory), :jm_getXOffset, [])), JR.lget(f, :y), 0])
                JR.lpostinc(f, :count, 1)
            end
        end)
        if (JR.lget(f, :count) > 0) do
            JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :countedPartsBorder)])
            JR.call(JR.lget(f, :graphics), :jm_drawRect, [JR.int32(JR.lget(f, :lastWidth) - (JR.int32(CountedLayersHudPaintable.jstatic_XXStringWidth() + JR.get(this, :dropSize)))), 40, JR.int32(CountedLayersHudPaintable.jstatic_XXStringWidth() + JR.get(this, :dropSize)), JR.int32((JR.int32(JR.lget(f, :count) * JR.get(this, :height))) + 3)])
        end
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


