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
# package org.allbinary.game.configuration

defmodule InGameFeatures do
  def jsuper(), do: Init

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    Init.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :LABEL, "Screen Buttons")
        JR.lset(f, :orientationData, OrientationData.jm_getInstance())
        JR.lset(f, :exclusiveOrientationSensorVector, JR.call(JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []), :jm_get, [JR.get(JR.lget(f, :orientationData), :ORIENTATION_SENSOR_INPUT)]))
        JR.lset(f, :inGameFeatureChoiceGroups, InGameFeatureChoiceGroups.jm_getExclusiveInstance())
        if (JR.lget(f, :exclusiveOrientationSensorVector) != nil) do
            JR.lset(f, :inGameExclusiveOrientationSensorVectorCanBeNull, JR.call(JR.call(JR.lget(f, :inGameFeatureChoiceGroups), :jm_get, []), :jm_get, [JR.get(JR.lget(f, :orientationData), :ORIENTATION_SENSOR_INPUT)]))
            if (JR.lget(f, :inGameExclusiveOrientationSensorVectorCanBeNull) == nil) do
                JR.call(this, :jm_addToInGameMenu, [])
            else
                JR.lset(f, :inGameExclusiveOrientationSensorVector, JR.lget(f, :inGameExclusiveOrientationSensorVectorCanBeNull))
                if (JR.call(JR.lget(f, :inGameExclusiveOrientationSensorVector), :jm_size, []) == 0) do
                    JR.call(this, :jm_addToInGameMenu, [])
                end
            end
        end
        JR.lset(f, :features, Features.jm_getInstance())
        if ((JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(TouchFeatureFactory.jm_getInstance(), :SHOW_SCREEN_BUTTONS)]) || JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(TouchFeatureFactory.jm_getInstance(), :AUTO_HIDE_SHOW_SCREEN_BUTTONS)])) || JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(TouchFeatureFactory.jm_getInstance(), :HIDE_SCREEN_BUTTONS)])) do
            JR.lset(f, :exclusiveScreenButtonsVector, BasicArrayListD.jnew())
            JR.lset(f, :touchFeatureFactory, TouchFeatureFactory.jm_getInstance())
            JR.call(JR.lget(f, :exclusiveScreenButtonsVector), :jm_add, [JR.get(JR.lget(f, :touchFeatureFactory), :AUTO_HIDE_SHOW_SCREEN_BUTTONS)])
            JR.call(JR.lget(f, :exclusiveScreenButtonsVector), :jm_add, [JR.get(JR.lget(f, :touchFeatureFactory), :SHOW_SCREEN_BUTTONS)])
            JR.call(JR.lget(f, :exclusiveScreenButtonsVector), :jm_add, [JR.get(JR.lget(f, :touchFeatureFactory), :HIDE_SCREEN_BUTTONS)])
            JR.call(JR.lget(f, :inGameFeatureChoiceGroups), :jm_add, [JR.lget(f, :LABEL), JR.lget(f, :exclusiveScreenButtonsVector)])
        end
    end)
  end


  def jm_addToInGameMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :orientationData, OrientationData.jm_getInstance())
        JR.lset(f, :inGameExclusiveOrientationSensorVector, BasicArrayListD.jnew())
        JR.call(JR.lget(f, :inGameExclusiveOrientationSensorVector), :jm_add, [JR.get(SensorFeatureFactory.jm_getInstance(), :ORIENTATION_SENSORS)])
        JR.call(JR.lget(f, :inGameExclusiveOrientationSensorVector), :jm_add, [JR.get(SensorFeatureFactory.jm_getInstance(), :NO_ORIENTATION)])
        JR.call(InGameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_add, [JR.get(JR.lget(f, :orientationData), :ORIENTATION_SENSOR_INPUT), JR.lget(f, :inGameExclusiveOrientationSensorVector)])
    end)
  end


  def jm_isAny(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :touchFeatureFactory, TouchFeatureFactory.jm_getInstance())
        if ((JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :touchFeatureFactory), :SHOW_SCREEN_BUTTONS)]) || JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :touchFeatureFactory), :AUTO_HIDE_SHOW_SCREEN_BUTTONS)])) || JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :touchFeatureFactory), :HIDE_SCREEN_BUTTONS)])) do
            throw({:jreturn, true})
        end
        JR.lset(f, :exclusiveOrientationSensorVector, JR.call(JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []), :jm_get, [JR.get(OrientationData.jm_getInstance(), :ORIENTATION_SENSOR_INPUT)]))
        if (JR.lget(f, :exclusiveOrientationSensorVector) != nil) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end
end


