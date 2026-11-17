# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.game.multiplayer.layer

defmodule RemoteInfo do
  def jsuper(), do: JObject
def jstatic_NEW_PLAYER_ID(), do: JR.static_get(__MODULE__, :NEW_PLAYER_ID, fn -> 0 end)
  def jstatic_set_NEW_PLAYER_ID(value), do: JR.static_put(__MODULE__, :NEW_PLAYER_ID, value)
def jstatic_REMOTE_INFO(), do: JR.static_get(__MODULE__, :REMOTE_INFO, fn -> RemoteInfo.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), -1, -1, RemoteInfo.jstatic_NEW_PLAYER_ID()) end)
  def jstatic_set_REMOTE_INFO(value), do: JR.static_put(__MODULE__, :REMOTE_INFO, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_username, p_actorSessionId, p_playerInputId, p_id) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :username, p_username)
      JR.lset(f, :actorSessionId, p_actorSessionId)
      JR.lset(f, :playerInputId, p_playerInputId)
      JR.lset(f, :id, p_id)
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_username, p_actorSessionId, p_playerInputId, p_id) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_username, p_actorSessionId, p_playerInputId, p_id)
    this
  end
end


