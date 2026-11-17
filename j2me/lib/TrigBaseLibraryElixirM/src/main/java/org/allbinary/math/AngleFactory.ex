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
# package org.allbinary.math

defmodule AngleFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AngleFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :TOTAL_ANGLE, 0)
    JR.put(this, :QUARTER_TOTAL_ANGLE, 0)
    JR.put(this, :angleArray, nil)
    JR.put(this, :NEGATIVE_ONE, 0)
    JR.put(this, :NOT_ANGLE, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :frameUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :TOTAL_ANGLE, 360)
        JR.put(this, :QUARTER_TOTAL_ANGLE, 90)
        JR.put(this, :angleArray, JR.anew(JR.int32(JR.get(this, :TOTAL_ANGLE)), nil))
        JR.put(this, :NEGATIVE_ONE, JR.int16(-1))
        JR.put(this, :NOT_ANGLE, NamedAngle.jnew(JR.get(this, :NEGATIVE_ONE), JR.get(CommonStrings.jm_getInstance(), :EMPTY)))
        
        
        
        
        JR.put(this, :frameUtil, FrameUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AngleFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :commonPhoneStrings, CommonPhoneStrings.jm_getInstance())
        JR.lset(f, :total, JR.int16(JR.alength(JR.get(this, :angleArray))))
        JR.put(this, :UP, NamedAngle.jnew(JR.int16(0), JR.get(JR.lget(f, :commonPhoneStrings), :UP)))
        JR.aset(JR.get(this, :angleArray), 0, JR.get(this, :UP))
        JR.lset(f, :index, 1)
        JR.jfor(fn -> (JR.lget(f, :index) < 90) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :angleArray), JR.lget(f, :index), Angle.jnew(JR.int16(JR.lget(f, :index))))
        end)
        JR.put(this, :RIGHT, NamedAngle.jnew(JR.int16(90), JR.get(JR.lget(f, :commonPhoneStrings), :RIGHT)))
        JR.aset(JR.get(this, :angleArray), 90, JR.get(this, :RIGHT))
        JR.lset(f, :index, 91)
        JR.jfor(fn -> (JR.lget(f, :index) < 180) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :angleArray), JR.lget(f, :index), Angle.jnew(JR.int16(JR.lget(f, :index))))
        end)
        JR.put(this, :DOWN, NamedAngle.jnew(JR.int16(180), JR.get(JR.lget(f, :commonPhoneStrings), :DOWN)))
        JR.aset(JR.get(this, :angleArray), 180, JR.get(this, :DOWN))
        JR.lset(f, :index, 181)
        JR.jfor(fn -> (JR.lget(f, :index) < 270) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :angleArray), JR.lget(f, :index), Angle.jnew(JR.int16(JR.lget(f, :index))))
        end)
        JR.put(this, :LEFT, NamedAngle.jnew(JR.int16(270), JR.get(JR.lget(f, :commonPhoneStrings), :LEFT)))
        JR.aset(JR.get(this, :angleArray), 270, JR.get(this, :LEFT))
        JR.lset(f, :index, 271)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.int32(JR.lget(f, :total))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :angleArray), JR.lget(f, :index), Angle.jnew(JR.int16(JR.lget(f, :index))))
        end)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getAt(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.lset(f, :adjustedIndex, JR.int32(JR.call(JR.get(this, :frameUtil), :jm_adjustAngleToFrameAngle, [JR.lget(f, :index)])))
        throw({:jreturn, JR.aget(JR.get(this, :angleArray), JR.lget(f, :adjustedIndex))})
    end)
  end


  def jm_getClosestDirection(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        if ((((JR.lget(f, :angle) >= 315) && (JR.lget(f, :angle) < 360))) || (((JR.lget(f, :angle) >= 0) && (JR.lget(f, :angle) < 45)))) do
            throw({:jreturn, JR.get(this, :UP)})
        else
            if ((JR.lget(f, :angle) >= 45) && (JR.lget(f, :angle) < 135)) do
            throw({:jreturn, JR.get(this, :RIGHT)})
        else
            if ((JR.lget(f, :angle) >= 135) && (JR.lget(f, :angle) < 225)) do
            throw({:jreturn, JR.get(this, :DOWN)})
        else
            if ((JR.lget(f, :angle) >= 225) && (JR.lget(f, :angle) < 315)) do
            throw({:jreturn, JR.get(this, :LEFT)})
        end
        end
        end
        end
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getGeneralDirection(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :NOT_ANGLE)})
    end)
  end


  def jm_main(p_args) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :args, p_args)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < 360) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_appendint, [JR.lget(f, :index)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :FORWARD_SLASH)]), :jm_appendshort, [JR.int16(JR.call(JR.call(JR.lget(f, :angleFactory), :jm_getClosestDirection, [JR.lget(f, :index)]), :jm_getValue, []))]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :NEW_LINE)])
        end)
        JR.call(LogUtil.jm_getInstance(), :jm_putF, [JR.call(JR.lget(f, :stringMaker), :jm_toString, []), "main", "main"])
    end)
  end
end


