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
# package org.allbinary.game.displayable.canvas

defmodule MyFormUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MyFormUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :popupMenuRectangle, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :popupMenuRectangle, RectangleFactory.jstatic_SINGLETON())
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
        throw({:jreturn, MyFormUtil.jstatic_instance()})
    end)
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :isOpenGL, JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)]))
        JR.lset(f, :TOTAL_CHAR_WIDTH, (if (JR.call(SWTJOGLProcessor.jm_getInstance(), :jm_isJOGL, []) && JR.lget(f, :isOpenGL)), do: 2, else: 3))
        JR.lset(f, :width, MyFontProcessor.jm_defaultStringWidth(JR.lget(f, :font), JR.lget(f, :TOTAL_CHAR_WIDTH)))
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        if (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) < 320) do
            JR.put(this, :popupMenuRectangle, Rectangle.jnew(JR.call(JR.lget(f, :pointFactory), :jm_createXY, [0, 25]), JR.lget(f, :width), (((JR.call(JR.lget(f, :font), :jm_getHeight, []) * 4)) + 2)))
        else
            JR.put(this, :popupMenuRectangle, Rectangle.jnew(JR.call(JR.lget(f, :pointFactory), :jm_createXY, [0, (JR.call(JR.lget(f, :displayInfo), :jm_getLastHalfHeight, []) - 70)]), JR.lget(f, :width), ((JR.call(JR.lget(f, :font), :jm_getHeight, []) * 5))))
        end
    end)
  end


  def jm_getPopupMenuRectangle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :popupMenuRectangle)})
    end)
  end
end


