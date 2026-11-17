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
# package org.allbinary.game.layer

defmodule GameLayerUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
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


  def jm_isOnScreen(p_layer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :viewPosition, JR.call(JR.lget(f, :layer), :jm_getViewPosition, []))
        throw({:jreturn, GameLayerUtil.jm_isInside(JR.call(JR.lget(f, :viewPosition), :jm_getX, []), JR.call(JR.lget(f, :viewPosition), :jm_getY, []), JR.call(JR.lget(f, :viewPosition), :jm_getX2, []), JR.call(JR.lget(f, :viewPosition), :jm_getY2, []), 0, 0, JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []), JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []))})
    end)
  end


  def jm_isInside(p_rectX1, p_rectY1, p_rectX2, p_rectY2, p_rect2X1, p_rect2Y1, p_rect2X2, p_rect2Y2) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectX1, p_rectX1)
      JR.lset(f, :rectY1, p_rectY1)
      JR.lset(f, :rectX2, p_rectX2)
      JR.lset(f, :rectY2, p_rectY2)
      JR.lset(f, :rect2X1, p_rect2X1)
      JR.lset(f, :rect2Y1, p_rect2Y1)
      JR.lset(f, :rect2X2, p_rect2X2)
      JR.lset(f, :rect2Y2, p_rect2Y2)
        if ((((JR.lget(f, :rectX1) > JR.lget(f, :rect2X1)) && (JR.lget(f, :rectX2) < JR.lget(f, :rect2X2))) && (JR.lget(f, :rectY1) > JR.lget(f, :rect2Y1))) && (JR.lget(f, :rectY2) < JR.lget(f, :rect2Y2))) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end
end


