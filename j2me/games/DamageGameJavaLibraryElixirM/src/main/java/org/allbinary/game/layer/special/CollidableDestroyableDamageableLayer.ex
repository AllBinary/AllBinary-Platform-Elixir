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
# package org.allbinary.game.layer.special

defmodule CollidableDestroyableDamageableLayer do
  def jsuper(), do: CollidableCompositeLayer
def jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(), do: JR.static_get(__MODULE__, :NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(value), do: JR.static_put(__MODULE__, :NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, value)
def jstatic_READYFOREXPLOSION(), do: JR.static_get(__MODULE__, :READYFOREXPLOSION, fn -> "ReadyForExplosion: " end)
  def jstatic_set_READYFOREXPLOSION(value), do: JR.static_put(__MODULE__, :READYFOREXPLOSION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :groupInterface, nil)
    JR.put(this, :readyForExplosion, false)
    JR.put(this, :initWidth, 0)
    JR.put(this, :initHeight, 0)
    JR.put(this, :initX, 0)
    JR.put(this, :initY, 0)
    JR.put(this, :initZ, 0)
    JR.put(this, :partInterfaceArrayP, nil)
    JR.put(this, :pickupBehavior, nil)
    JR.put(this, :allBinaryGameLayerManagerP, nil)
    JR.put(this, :isDraggable, false)
    JR.put(this, :isDragged, false)
    JR.put(this, :isDropped, false)
        
        JR.put(this, :readyForExplosion, false)
        
        
        JR.put(this, :initX, 0)
        JR.put(this, :initY, 0)
        JR.put(this, :initZ, 0)
        JR.put(this, :partInterfaceArrayP, PartInterfaceUtil.jm_getZeroArray())
        
        JR.put(this, :allBinaryGameLayerManagerP, AllBinaryGameLayerManager.jm_getNullInstance())
        JR.put(this, :isDraggable, false)
        JR.put(this, :isDragged, false)
        JR.put(this, :isDropped, false)
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            CollidableDestroyableDamageableLayer.jstatic_set_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(CollidableDestroyableDamageableLayer.jnew(JR.get(BasicGroupFactory.jm_getInstance(), :NONE_ARRAY), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), RectangleFactory.jstatic_SINGLETON(), ViewPositionBase.jstatic_NULL_VIEW_POSITION()))
        end
        throw({:jreturn, CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER()})
    end)
  end


  def jinit(this, p_groupInterface, p_name, p_layerInfo, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
      JR.lset(f, :name, p_name)
      JR.lset(f, :layerInfo, p_layerInfo)
      JR.lset(f, :viewPosition, p_viewPosition)
        CollidableCompositeLayer.jinit(this, JR.lget(f, :name), JR.lget(f, :layerInfo), JR.lget(f, :viewPosition), CollidableNeverCollideBehaviorFactory.jm_getInstance())
        CollidableDestroyableDamageableLayer.jinitfields(this)
        JR.put(this, :initWidth, JR.call(JR.lget(f, :layerInfo), :jm_getWidth, []))
        JR.put(this, :initHeight, JR.call(JR.lget(f, :layerInfo), :jm_getHeight, []))
        JR.put(this, :groupInterface, JR.lget(f, :groupInterface))
        JR.put(this, :pickupBehavior, PickupBehavior.jm_getNullInstance())
    end)
  end

  def jnew(p_groupInterface, p_name, p_layerInfo, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_groupInterface, p_name, p_layerInfo, p_viewPosition)
    this
  end


  def jm_initPosition(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setPosition, [JR.get(this, :initX), JR.get(this, :initY), JR.get(this, :initZ)])
    end)
  end


  def jm_initPositionXYZ(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.put(this, :initX, JR.lget(f, :x))
        JR.put(this, :initY, JR.lget(f, :y))
        JR.put(this, :initZ, JR.lget(f, :z))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        CollidableCompositeLayer.jm_paint(this, JR.lget(f, :graphics))
    end)
  end


  def jm_damage(this, p_damage, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
      JR.lset(f, :damageType, p_damageType)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_getDamage(this, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damageType, p_damageType)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_isDestroyed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_getGroupInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :groupInterface)})
    end)
  end


  def jm_setGroupInterface(this, p_teamInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :teamInterface, p_teamInterface)
        JR.put(this, :groupInterface, JR.lget(f, :teamInterface))
    end)
  end


  def jm_setAllBinaryGameLayerManager(this, p_allBinaryGameLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameLayerManager, p_allBinaryGameLayerManager)
        JR.put(this, :allBinaryGameLayerManagerP, JR.lget(f, :allBinaryGameLayerManager))
        if (JR.get(this, :allBinaryGameLayerManagerP) == nil) do
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
    end)
  end


  def jm_isReadyForExplosion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :readyForExplosion)})
    end)
  end


  def jm_setReadyForExplosion(this, p_isReadyForExplosion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isReadyForExplosion, p_isReadyForExplosion)
        JR.put(this, :readyForExplosion, JR.lget(f, :isReadyForExplosion))
    end)
  end


  def jm_getInitWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initWidth)})
    end)
  end


  def jm_getInitHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initHeight)})
    end)
  end


  def jm_getInitX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initX)})
    end)
  end


  def jm_getInitY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initY)})
    end)
  end


  def jm_up(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_down(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_right(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_left(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_strafeLeft(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_strafeRight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_fire(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special1(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special2(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special3(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special4(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special5(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_upAnalog(this, p_yAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :yAnalogValue, p_yAnalogValue)
        nil
    end)
  end


  def jm_downAnalog(this, p_yAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :yAnalogValue, p_yAnalogValue)
        nil
    end)
  end


  def jm_rightAnalog(this, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        nil
    end)
  end


  def jm_leftAnalog(this, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        nil
    end)
  end


  def jm_rightTrigger(this, p_layerManager, p_gameKeyEvent, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        nil
    end)
  end


  def jm_leftTrigger(this, p_layerManager, p_gameKeyEvent, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        nil
    end)
  end


  def jm_onDestroyed(this, p_destroyedEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :destroyedEvent, p_destroyedEvent)
        nil
    end)
  end


  def jm_getPickupBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :pickupBehavior)})
    end)
  end


  def jm_setPickupBehavior(this, p_pickupBehavior) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickupBehavior, p_pickupBehavior)
        JR.put(this, :pickupBehavior, JR.lget(f, :pickupBehavior))
    end)
  end


  def jm_addPart(this, p_pickedUpLayerInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, p_pickedUpLayerInterfaceFactoryInterface)
        nil
    end)
  end


  def jm_setPartInterfaceArray(this, p_partInterfaceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :partInterfaceArray, p_partInterfaceArray)
        JR.put(this, :partInterfaceArrayP, JR.lget(f, :partInterfaceArray))
    end)
  end


  def jm_getPartInterfaceArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :partInterfaceArrayP)})
    end)
  end


  def jm_toStringAppend(this, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringBuffer, p_stringBuffer)
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :positionStrings, PositionStrings.jm_getInstance())
        CollidableCompositeLayer.jm_toStringAppend(this, JR.lget(f, :stringBuffer))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :NEW_LINE)])
        JR.lset(f, :groupInterfaceArray, JR.call(this, :jm_getGroupInterface, []))
        JR.lset(f, :size, JR.alength(JR.lget(f, :groupInterfaceArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.aget(JR.lget(f, :groupInterfaceArray), JR.lget(f, :index)), :jm_toString, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA)])
        end)
        JR.lset(f, :pickupBehavior, JR.call(this, :jm_getPickupBehavior, []))
        if (JR.lget(f, :pickupBehavior) != nil) do
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :NEW_LINE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :pickupBehavior), :jm_toString, [])])
        end
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :NEW_LINE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [CollidableDestroyableDamageableLayer.jstatic_READYFOREXPLOSION()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.get(this, :readyForExplosion)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :NEW_LINE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonStrings), :INIT)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :X_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :initX)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Y_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :initX)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Z_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :initZ)])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(this, :jm_toStringAppend, [JR.lget(f, :stringBuffer)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


