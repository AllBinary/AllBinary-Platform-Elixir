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
# package org.allbinary.business.init

defmodule LicenseInitInfoUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LicenseInitInfoUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :stringUtil, nil)
    JR.put(this, :INITFILENAME, nil)
    JR.put(this, :ABOUT, nil)
    JR.put(this, :PRIVACY_POLICY, nil)
    JR.put(this, :filePath, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :stringUtil, StringUtil.jm_getInstance())
        JR.put(this, :INITFILENAME, "licenseinitdata.dat")
        JR.put(this, :ABOUT, "about")
        JR.put(this, :PRIVACY_POLICY, "privacy_policy")
        JR.put(this, :filePath, JR.get(JR.get(this, :stringUtil), :EMPTY_STRING))
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
        throw({:jreturn, LicenseInitInfoUtil.jstatic_instance()})
    end)
  end


  def jm_setFilePath(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        JR.put(this, :filePath, JR.lget(f, :filePath))
    end)
  end


  def jm_write(this, p_initData) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initData, p_initData)
        if (JR.get(this, :filePath) == JR.get(JR.get(this, :stringUtil), :EMPTY_STRING)) do
            JR.put(this, :filePath, (URLGLOBALS.jm_getMainPath() + JR.get(PATH_GLOBALS.jm_getInstance(), :INIT_PATH)))
        end
        try do
            JR.lset(f, :tsUtil, TsUtil.jm_getInstance())
            JR.lset(f, :dataOutputStream, JR.call(DataOutputStreamFactory.jm_getInstance(), :jm_getInstance, [JR.get(this, :filePath), JR.get(this, :INITFILENAME)]))
            JR.lset(f, :licenseIdCrypted, JR.call(JR.lget(f, :tsUtil), :jm_getByteArray, [JR.call(WeakCrypt.jnew(1), :jm_encrypt, [JR.call(JR.lget(f, :initData), :jm_getLicenseId, [])])]))
            JR.call(JR.lget(f, :dataOutputStream), :jm_writeUTF, [DatabaseEncoder.jm_encode(JR.lget(f, :licenseIdCrypted))])
            JR.lset(f, :numberOfLicenseServers, JR.call(JR.lget(f, :initData), :jm_getNumberOfServers, []))
            JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [JR.lget(f, :numberOfLicenseServers)])
            JR.lset(f, :licenseServerCrypted, nil)
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :numberOfLicenseServers)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :licenseServerCrypted, JR.call(JR.lget(f, :tsUtil), :jm_getByteArray, [JR.call(WeakCrypt.jnew(3), :jm_encrypt, [JR.call(JR.lget(f, :initData), :jm_getServer, [JR.lget(f, :index)])])]))
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeUTF, [DatabaseEncoder.jm_encode(JR.lget(f, :licenseServerCrypted))])
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Command Failed: " <> JR.get(this, :INITFILENAME), this, "write", JR.lget(f, :e)])
            JR.call(FileStreamFactory.jm_getInstance(), :jm_delete, [JR.get(this, :filePath), JR.get(this, :INITFILENAME)])
            throw({:jexception, JR.lget(f, :e)})
        end
    end)
  end


  def jm_read(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_readAgain, [0])})
    end)
  end


  def jm_readAgain(this, p_initializeCounter) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initializeCounter, p_initializeCounter)
        JR.lset(f, :METHOD_NAME, "readAgain")
        if (JR.get(this, :filePath) == JR.get(JR.get(this, :stringUtil), :EMPTY_STRING)) do
            JR.put(this, :filePath, (URLGLOBALS.jm_getMainPath() + JR.get(PATH_GLOBALS.jm_getInstance(), :INIT_PATH)))
        end
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["LicenseInitInfo File: " <> JR.get(this, :INITFILENAME), this, JR.lget(f, :METHOD_NAME)])
            JR.lset(f, :fileStreamFactory, FileStreamFactory.jm_getInstance())
            JR.lset(f, :iFile, JR.call(JR.lget(f, :fileStreamFactory), :jm_getFileInputStreamInstance, [JR.get(this, :filePath), JR.get(this, :INITFILENAME)]))
            if (JR.lget(f, :iFile) != nil) do
                JR.lset(f, :iData, AbDataInputStream.jnew(JR.lget(f, :iFile)))
                JR.lset(f, :initInfo, LicenseInitInfo.jnew())
                JR.lset(f, :decodedByteArray, DatabaseEncoder.jm_decode(JR.call(JR.lget(f, :iData), :jm_readUTF, [])))
                JR.lset(f, :licenseIdDecoded, JR.lget(f, :decodedByteArray))
                JR.call(JR.lget(f, :initInfo), :jm_setLicenseId, [JR.call(WeakCrypt.jnew(1), :jm_decrypt, [JR.lget(f, :licenseIdDecoded)])])
                JR.lset(f, :numberOfLicenseServers, JR.call(JR.lget(f, :iData), :jm_readInt, []))
                JR.lset(f, :NEXT_FILE, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :NEXT)]), :jm_append, [" License Server From File: "]), :jm_toString, []))
                JR.lset(f, :licenseServerDecoded, nil)
                JR.lset(f, :index, 0)
                JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :numberOfLicenseServers)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                    JR.lset(f, :decodedByteArray, DatabaseEncoder.jm_decode(JR.call(JR.lget(f, :iData), :jm_readUTF, [])))
                    JR.lset(f, :licenseServerDecoded, JR.lget(f, :decodedByteArray))
                    JR.call(JR.lget(f, :initInfo), :jm_setServer, [JR.call(WeakCrypt.jnew(3), :jm_decrypt, [JR.lget(f, :licenseServerDecoded)]), JR.lget(f, :index)])
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.lget(f, :NEXT_FILE) <> JR.str(JR.call(JR.lget(f, :initInfo), :jm_getServer, [JR.lget(f, :index)])), this, JR.lget(f, :METHOD_NAME)])
                end)
                throw({:jreturn, JR.lget(f, :initInfo)})
            else
                throw({:jexception, JR.exception("Exception", "Could Not Load License InitInfo: " <> JR.get(this, :INITFILENAME))})
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            try do
                JR.call(JR.get(this, :logUtil), :jm_put, ["Command Failed: " <> JR.get(this, :INITFILENAME), this, JR.lget(f, :METHOD_NAME), JR.lget(f, :e)])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e2, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, ["LicenseInitInfo Read Retry: " <> JR.get(this, :INITFILENAME), this, "readAgain()", JR.lget(f, :e2)])
            end
            throw({:jexception, JR.exception("Exception", "LicenseInitInfo Read Error: " <> JR.get(this, :INITFILENAME))})
        end
    end)
  end


  def jm_getFilePath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :filePath)})
    end)
  end
end


