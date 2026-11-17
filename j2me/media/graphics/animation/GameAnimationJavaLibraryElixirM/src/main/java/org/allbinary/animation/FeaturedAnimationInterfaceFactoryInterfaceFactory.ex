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
# package org.allbinary.animation

defmodule FeaturedAnimationInterfaceFactoryInterfaceFactory do
  def jsuper(), do: FeaturedResourceFactory
def jstatic_INSTANCE(), do: JR.static_get(__MODULE__, :INSTANCE, fn -> FeaturedAnimationInterfaceFactoryInterfaceFactory.jnew() end)
  def jstatic_set_INSTANCE(value), do: JR.static_put(__MODULE__, :INSTANCE, value)

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
      FeaturedResourceFactory.jinit(this)
      jinitfields(this)
        nil
    end)
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
        throw({:jreturn, FeaturedAnimationInterfaceFactoryInterfaceFactory.jstatic_INSTANCE()})
    end)
  end


  def jm_getRectangle(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        throw({:jreturn, JR.call(this, :jm_getRectangleXY, [JR.lget(f, :resource), 0, 0])})
    end)
  end


  def jm_getRectangleXY(this, p_resource, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :list, JR.call(this, :jm_getList, []))
        JR.lset(f, :scale, JR.call(JR.call(JR.get(GameConfigurationCentral.jm_getInstance(), :SCALE), :jm_getValue, []), :jm_intValue, []))
        JR.lset(f, :size, JR.call(JR.call(this, :jm_getList, []), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :featureInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            if JR.call(JR.lget(f, :featureInterface), :jm_isFeature, []) do
                JR.lset(f, :rectangle, JR.call(JR.lget(f, :featureInterface), :jm_getRectangle, [JR.lget(f, :resource)]))
                if (JR.lget(f, :rectangle) != RectangleFactory.jstatic_SINGLETON()) do
                    throw({:jreturn, Rectangle.jnew(JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :x), JR.lget(f, :y)]), (Bitwise.bsr(((JR.call(JR.lget(f, :rectangle), :jm_getWidth, []) * JR.lget(f, :scale))), 1)), (Bitwise.bsr(((JR.call(JR.lget(f, :rectangle), :jm_getHeight, []) * JR.lget(f, :scale))), 1)))})
                end
            end
        end)
        throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["No rectangle available for current feature selection or Resource: "]), :jm_append, [JR.lget(f, :resource)]), :jm_toString, []))})
    end)
  end


  def jm_getProcedural(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        throw({:jreturn, JR.call(this, :jm_getBasicAnimationInterfaceFactoryInstance, [JR.lget(f, :resource)])})
    end)
  end


  def jm_get(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        throw({:jreturn, JR.call(this, :jm_getBasicAnimationInterfaceFactoryInstance, [JR.lget(f, :resource)])})
    end)
  end


  def jm_getBasicAnimationInterfaceFactoryInstance(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        JR.lset(f, :list, JR.call(this, :jm_getList, []))
        JR.lset(f, :resourceTypeAvailableList, BasicArrayListD.jnew())
        JR.lset(f, :size, JR.call(JR.call(this, :jm_getList, []), :jm_size, []))
        JR.lset(f, :featureInterface, nil)
        JR.lset(f, :animationInterfaceFactoryInterface, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :featureInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            if JR.call(JR.lget(f, :featureInterface), :jm_isFeature, []) do
                JR.call(JR.lget(f, :resourceTypeAvailableList), :jm_add, [JR.lget(f, :featureInterface)])
                JR.lset(f, :animationInterfaceFactoryInterface, JR.call(JR.lget(f, :featureInterface), :jm_getBasicAnimationInterfaceFactoryInstance, [JR.lget(f, :resource)]))
                if (JR.lget(f, :animationInterfaceFactoryInterface) != NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY()) do
                    throw({:jreturn, JR.lget(f, :animationInterfaceFactoryInterface)})
                end
            end
        end)
        if (JR.call(JR.lget(f, :resourceTypeAvailableList), :jm_size, []) > 0) do
            JR.lset(f, :NO_ANIMATION_AVAILABLE_FROM, "No animation available from: ")
            JR.lset(f, :FOR_FACTORIES, " factories: ")
            JR.lset(f, :FOR_RESOURCE, " for Resource: ")
            JR.lset(f, :HAS_KEY, " has: ")
            JR.lset(f, :RESOURCES_LABEL, " resources ")
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :NO_ANIMATION_AVAILABLE_FROM)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.lget(f, :resourceTypeAvailableList), :jm_size, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :FORWARD_SLASH)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :size)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :FOR_FACTORIES)])
            JR.lset(f, :size2, JR.call(JR.lget(f, :resourceTypeAvailableList), :jm_size, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.call(JR.lget(f, :resourceTypeAvailableList), :jm_get, [JR.lget(f, :index)]), :jm_toString, [])])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COMMA_SEP)])
            end)
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :FOR_RESOURCE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :resource)])
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :NEW_LINE)])
                JR.lset(f, :featureInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                if JR.call(JR.lget(f, :featureInterface), :jm_isFeature, []) do
                    JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :featureInterface)])])
                    JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :HAS_KEY)])
                    JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.call(JR.lget(f, :featureInterface), :jm_getHashtable, []), :jm_size, [])])
                    JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :RESOURCES_LABEL)])
                end
            end)
            throw({:jexception, JR.exception("Exception", JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))})
        else
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :featureInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :featureInterface), :jm_toString, [])])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
            end)
            JR.lset(f, :result, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, ["No feature resource type available for Resource: "]), :jm_append, [JR.lget(f, :resource)]), :jm_append, [" Resource Factories Available: "]), :jm_append, [JR.lget(f, :result)]), :jm_toString, []))})
        end
    end)
  end
end


