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
# package org.allbinary.game.layer.identification

defmodule GroupLayerManagerListener do
  def jsuper(), do: LayerManagerEventListener
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> GroupLayerManagerListener.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :list, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GroupLayerManagerListener.jstatic_SINGLETON()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      LayerManagerEventListener.jinit(this)
      jinitfields(this)
        JR.call(LayerManagerEventHandler.jm_getInstance(), :jm_addListener, [this])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :groupList, nil)
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :groupList, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :groupList), :jm_clear, [])
        end)
    end)
  end


  def jm_getGroupSizeFromInterface(this, p_groupInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterfaceCompositeInterface, p_groupInterfaceCompositeInterface)
        JR.lset(f, :groupInterfaceArray, JR.call(JR.lget(f, :groupInterfaceCompositeInterface), :jm_getGroupInterface, []))
        throw({:jreturn, JR.call(this, :jm_getGroupSize, [JR.aget(JR.lget(f, :groupInterfaceArray), 0)])})
    end)
  end


  def jm_getGroupSize(this, p_groupInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
        JR.lset(f, :id, JR.int32(JR.call(JR.lget(f, :groupInterface), :jm_getGroupId, [])))
        throw({:jreturn, JR.call(this, :jm_getGroupSizeById, [JR.lget(f, :id)])})
    end)
  end


  def jm_getList(this, p_groupInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
        JR.lset(f, :id, JR.int32(JR.call(JR.lget(f, :groupInterface), :jm_getGroupId, [])))
        throw({:jreturn, JR.call(this, :jm_getListById, [JR.lget(f, :id)])})
    end)
  end


  def jm_getListById(this, p_groupId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupId, p_groupId)
        JR.lset(f, :groupList, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :groupId)))
        throw({:jreturn, JR.lget(f, :groupList)})
    end)
  end


  def jm_getGroupSizeById(this, p_groupId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupId, p_groupId)
        JR.lset(f, :groupList, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :groupId)))
        JR.lset(f, :size, JR.call(JR.lget(f, :groupList), :jm_size, []))
        throw({:jreturn, JR.lget(f, :size)})
    end)
  end


  def jm_areAllOtherGroupsEmpty(this, p_groupInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :groupInterface, p_groupInterface)
        JR.lset(f, :id, JR.int32(JR.call(JR.lget(f, :groupInterface), :jm_getGroupId, [])))
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if (JR.lget(f, :id) != JR.lget(f, :index)) do
                JR.lset(f, :groupSize, JR.call(this, :jm_getGroupSizeById, [JR.lget(f, :index)]))
                if (JR.lget(f, :groupSize) != 0) do
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Group Size: "]), :jm_appendint, [JR.lget(f, :groupSize)]), :jm_toString, []), this, "areAllOtherGroupsEmpty"])
                    throw({:jreturn, false})
                end
            end
        end)
        throw({:jreturn, true})
    end)
  end


  def jm_isIdInList(this, p_id, p_excludeGroupList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JR.lset(f, :excludeGroupList, p_excludeGroupList)
        JR.lset(f, :size, JR.call(JR.lget(f, :excludeGroupList), :jm_size, []))
        JR.lset(f, :groupInterfaceArray, nil)
        JR.lset(f, :groupInterface, nil)
        JR.lset(f, :groupId, 0)
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :groupInterfaceArray, JR.aget(JR.get(JR.lget(f, :excludeGroupList), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :size2, JR.alength(JR.lget(f, :groupInterfaceArray)))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.lset(f, :groupInterface, JR.aget(JR.lget(f, :groupInterfaceArray), JR.lget(f, :index2)))
                JR.lset(f, :groupId, JR.int32(JR.call(JR.lget(f, :groupInterface), :jm_getGroupId, [])))
                if (JR.lget(f, :groupId) == JR.lget(f, :id)) do
                    throw({:jreturn, true})
                end
            end)
        end)
        throw({:jreturn, false})
    end)
  end


  def jm_areAllOtherGroupsLessThan(this, p_excludeGroupList, p_maxSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :excludeGroupList, p_excludeGroupList)
      JR.lset(f, :maxSize, p_maxSize)
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if !JR.call(this, :jm_isIdInList, [JR.lget(f, :index), JR.lget(f, :excludeGroupList)]) do
                JR.lset(f, :groupSize, JR.call(this, :jm_getGroupSizeById, [JR.lget(f, :index)]))
                if (JR.lget(f, :groupSize) >= JR.lget(f, :maxSize)) do
                    throw({:jreturn, false})
                end
            end
        end)
        throw({:jreturn, true})
    end)
  end


  def jm_init(this, p_total) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :total, p_total)
        JR.jwhile(fn -> (JR.call(JR.get(this, :list), :jm_size, []) <= JR.int32(JR.lget(f, :total) + 1)) end, fn ->
            JR.call(JR.get(this, :list), :jm_add, [BasicArrayListD.jnew()])
        end)
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


  def jm_onCreateLayerManagerEvent(this, p_layerManagerEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManagerEvent, p_layerManagerEvent)
        JR.lset(f, :layerInterface, JR.call(JR.lget(f, :layerManagerEvent), :jm_getLayerInterface, []))
        JR.lset(f, :groupInterfaceArray, JR.call(JR.lget(f, :layerInterface), :jm_getGroupInterface, []))
        JR.lset(f, :size, JR.alength(JR.lget(f, :groupInterfaceArray)))
        JR.lset(f, :id, 0)
        JR.lset(f, :groupList, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :id, JR.int32(JR.call(JR.aget(JR.lget(f, :groupInterfaceArray), JR.lget(f, :index)), :jm_getGroupId, [])))
            JR.lset(f, :groupList, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :id)))
            if (JR.lget(f, :groupList) == nil) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["id: "]), :jm_appendint, [JR.lget(f, :id)]), :jm_toString, []), this, "onCreateLayerManagerEvent"])
            end
            if !JR.call(JR.lget(f, :groupList), :jm_contains, [JR.lget(f, :layerInterface)]) do
                JR.call(JR.lget(f, :groupList), :jm_add, [JR.lget(f, :layerInterface)])
            else
                nil
            end
        end)
    end)
  end


  def jm_onDeleteLayerManagerEvent(this, p_layerManagerEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManagerEvent, p_layerManagerEvent)
        JR.lset(f, :layerInterface, JR.call(JR.lget(f, :layerManagerEvent), :jm_getLayerInterface, []))
        JR.lset(f, :groupInterfaceArray, JR.call(JR.lget(f, :layerInterface), :jm_getGroupInterface, []))
        JR.lset(f, :size, JR.alength(JR.lget(f, :groupInterfaceArray)))
        JR.lset(f, :id, 0)
        JR.lset(f, :groupList, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :id, JR.int32(JR.call(JR.aget(JR.lget(f, :groupInterfaceArray), JR.lget(f, :index)), :jm_getGroupId, [])))
            JR.lset(f, :groupList, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :id)))
            JR.call(JR.lget(f, :groupList), :jm_remove, [JR.lget(f, :layerInterface)])
        end)
    end)
  end


  def jm_log(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :GROUP, "Group: ")
        JR.lset(f, :SPACE, JR.get(CommonSeps.jm_getInstance(), :SPACE))
        JR.lset(f, :TOTAL_LABEL, JR.get(CommonLabels.jm_getInstance(), :TOTAL_LABEL))
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :groupList, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :GROUP)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SPACE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :TOTAL_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.lget(f, :groupList), :jm_size, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SPACE)])
        end)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "log"])
    end)
  end
end


