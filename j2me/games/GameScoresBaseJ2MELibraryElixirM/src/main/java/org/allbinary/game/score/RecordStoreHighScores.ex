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
# package org.allbinary.game.score

defmodule RecordStoreHighScores do
  def jsuper(), do: HighScores
def jstatic_hashTable(), do: JR.static_get(__MODULE__, :hashTable, fn -> JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []) end)
  def jstatic_set_hashTable(value), do: JR.static_put(__MODULE__, :hashTable, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :platformRecordIdUtil, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :RECORD_ID, nil)
    JR.put(this, :MAXHIGHSCORES, 0)
    JR.put(this, :gameInfo, nil)
    JR.put(this, :abeClientInformation, nil)
    JR.put(this, :recordComparatorInterface, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :platformRecordIdUtil, PlatformRecordIdUtil.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :RECORD_ID, "_HS")
        JR.put(this, :MAXHIGHSCORES, 100)
        
        
        
    nil
  end


  def jinit(this, p_abeClientInformation, p_gameInfo, p_name, p_heading, p_columnTwoHeading, p_recordComparatorInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :name, p_name)
      JR.lset(f, :heading, p_heading)
      JR.lset(f, :columnTwoHeading, p_columnTwoHeading)
      JR.lset(f, :recordComparatorInterface, p_recordComparatorInterface)
        HighScores.jinit(this, JR.lget(f, :name), JR.lget(f, :heading), JR.lget(f, :columnTwoHeading))
        RecordStoreHighScores.jinitfields(this)
        JR.put(this, :abeClientInformation, JR.lget(f, :abeClientInformation))
        JR.put(this, :gameInfo, JR.lget(f, :gameInfo))
        JR.put(this, :recordComparatorInterface, JR.lget(f, :recordComparatorInterface))
        JR.call(this, :jm_load, [])
    end)
  end

  def jnew(p_abeClientInformation, p_gameInfo, p_name, p_heading, p_columnTwoHeading, p_recordComparatorInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_abeClientInformation, p_gameInfo, p_name, p_heading, p_columnTwoHeading, p_recordComparatorInterface)
    this
  end


  def jm_getInstance(p_abeClientInformation, p_gameInfo, p_highScoreName, p_heading, p_columnTwoHeading, p_recordComparatorInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :highScoreName, p_highScoreName)
      JR.lset(f, :heading, p_heading)
      JR.lset(f, :columnTwoHeading, p_columnTwoHeading)
      JR.lset(f, :recordComparatorInterface, p_recordComparatorInterface)
        JR.lset(f, :highScoresCanBeNull, JR.call(RecordStoreHighScores.jstatic_hashTable(), :jm_get, [JR.lget(f, :highScoreName)]))
        if (JR.lget(f, :highScoresCanBeNull) == nil) do
            JR.lset(f, :highScores, RecordStoreHighScores.jnew(JR.lget(f, :abeClientInformation), JR.lget(f, :gameInfo), JR.lget(f, :highScoreName), JR.lget(f, :heading), JR.lget(f, :columnTwoHeading), JR.lget(f, :recordComparatorInterface)))
            JR.call(RecordStoreHighScores.jstatic_hashTable(), :jm_put, [JR.call(JR.lget(f, :highScores), :jm_getName, []), JR.lget(f, :highScores)])
            throw({:jreturn, JR.lget(f, :highScores)})
        end
        throw({:jreturn, JR.lget(f, :highScoresCanBeNull)})
    end)
  end


  def jm_getRecordId(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        throw({:jreturn, JR.call(JR.get(this, :platformRecordIdUtil), :jm_getRecordId, [JR.lget(f, :abeClientInformation), JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :UNDERSCORE)]), :jm_append, [JR.call(this, :jm_getName, [])]), :jm_append, [JR.get(this, :RECORD_ID)]), :jm_toString, [])])})
    end)
  end


  def jm_addHighScore(this, p_newHighScore) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newHighScore, p_newHighScore)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Adding HighScore: "]), :jm_appendlong, [JR.call(JR.lget(f, :newHighScore), :jm_getScore, [])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :ADD)])
            if JR.call(this, :jm_isTooManyHighScores, []) do
                JR.call(JR.get(this, :logUtil), :jm_putF, ["Removing Lowest Score", this, JR.get(JR.get(this, :commonStrings), :ADD)])
                JR.call(this, :jm_removeLowestHighScore, [])
            end
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.get(this, :abeClientInformation)]), true))
            JR.lset(f, :highScoreBytes, JR.call(JR.lget(f, :newHighScore), :jm_getAsBytes, []))
            JR.lset(f, :recordId, JR.call(JR.lget(f, :recordStore), :jm_addRecord, [JR.lget(f, :highScoreBytes), 0, JR.alength(JR.lget(f, :highScoreBytes))]))
            JR.call(this, :jm_load, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :ADD), JR.lget(f, :e)])
        after
            try do
                if (JR.lget(f, :recordStore) != nil) do
                    PreLogUtil.jm_put("Closing RecordStore", this, JR.get(JR.get(this, :commonStrings), :ADD))
                    JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :ADD), JR.lget(f, :e)])
            end
        end
    end)
  end


  def jm_removeLowestHighScore(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.get(this, :abeClientInformation)]), true))
            JR.lset(f, :recordEnum, JR.call(JR.lget(f, :recordStore), :jm_enumerateRecords, [NullRecordFilter.jstatic_NULL_RECORD_FILTER(), NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR(), true]))
            JR.lset(f, :scoreComparator, (JR.get(this, :recordComparatorInterface)))
            JR.lset(f, :bestHighScore, HighScore.jnew(-1, "none", GameInfo.jstatic_NONE(), JR.call(JR.lget(f, :scoreComparator), :jm_getBestScore, [])))
            JR.lset(f, :recordAsBytes, nil)
            JR.lset(f, :byteArrayInputStream, nil)
            JR.lset(f, :inputStream, nil)
            JR.jwhile(fn -> JR.call(JR.lget(f, :recordEnum), :jm_hasNextElement, []) end, fn ->
                JR.lset(f, :id, JR.call(JR.lget(f, :recordEnum), :jm_nextRecordId, []))
                JR.lset(f, :recordAsBytes, JR.call(JR.get(this, :tsUtil), :jm_getRecord, [JR.lget(f, :recordStore), JR.lget(f, :id)]))
                if (JR.lget(f, :recordAsBytes) != nil) do
                    JR.lset(f, :byteArrayInputStream, ByteArrayInputStream.jnew(JR.lget(f, :recordAsBytes)))
                    JR.lset(f, :inputStream, DataInputStream.jnew(JR.lget(f, :byteArrayInputStream)))
                    JR.lset(f, :name, JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))
                    JR.lset(f, :nextScore, JR.call(JR.lget(f, :inputStream), :jm_readLong, []))
                    JR.lset(f, :nextCurrentHighScore, HighScore.jnew(JR.lget(f, :id), JR.lget(f, :name), GameInfo.jstatic_NONE(), JR.lget(f, :nextScore)))
                    if (JR.call(JR.get(this, :recordComparatorInterface), :jm_compare, [JR.call(JR.lget(f, :nextCurrentHighScore), :jm_getAsBytes, []), JR.call(JR.lget(f, :bestHighScore), :jm_getAsBytes, [])]) == RecordComparator.jstatic_FOLLOWS()) do
                        JR.lset(f, :bestHighScore, JR.lget(f, :nextCurrentHighScore))
                    end
                end
            end)
            if (JR.call(JR.lget(f, :bestHighScore), :jm_getId, []) != -1) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Removing Lowest HighScore: "]), :jm_appendlong, [JR.call(JR.lget(f, :bestHighScore), :jm_getScore, [])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :LOAD)])
                JR.call(JR.lget(f, :recordStore), :jm_deleteRecord, [JR.call(JR.lget(f, :bestHighScore), :jm_getId, [])])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "removeLowestHighScore", JR.lget(f, :e)])
        after
            try do
                if (JR.lget(f, :recordStore) != nil) do
                    PreLogUtil.jm_put("Closing RecordStore", this, "removeLowestHighScore")
                    JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "removeLowestHighScore", JR.lget(f, :e)])
            end
        end
    end)
  end


  def jm_load(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.get(this, :abeClientInformation)]), true))
            JR.call(this, :jm_setList, [BasicArrayListD.jnew()])
            JR.lset(f, :recordEnum, JR.call(JR.lget(f, :recordStore), :jm_enumerateRecords, [NullRecordFilter.jstatic_NULL_RECORD_FILTER(), NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR(), true]))
            JR.lset(f, :recordAsBytes, nil)
            JR.lset(f, :byteArrayInputStream, nil)
            JR.lset(f, :inputStream, nil)
            JR.jwhile(fn -> JR.call(JR.lget(f, :recordEnum), :jm_hasNextElement, []) end, fn ->
                JR.lset(f, :id, JR.call(JR.lget(f, :recordEnum), :jm_nextRecordId, []))
                JR.lset(f, :recordAsBytes, JR.call(JR.get(this, :tsUtil), :jm_getRecord, [JR.lget(f, :recordStore), JR.lget(f, :id)]))
                if (JR.lget(f, :recordAsBytes) != nil) do
                    JR.lset(f, :byteArrayInputStream, ByteArrayInputStream.jnew(JR.lget(f, :recordAsBytes)))
                    JR.lset(f, :inputStream, DataInputStream.jnew(JR.lget(f, :byteArrayInputStream)))
                    try do
                        JR.lset(f, :name, JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))
                        JR.lset(f, :score, JR.call(JR.lget(f, :inputStream), :jm_readLong, []))
                        JR.lset(f, :newHighScore, HighScore.jnew(JR.lget(f, :id), JR.lget(f, :name), GameInfo.jstatic_NONE(), JR.lget(f, :score)))
                        JR.lset(f, :list, JR.call(this, :jm_getList, []))
                        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
                        JR.lset(f, :lastIndex, JR.lget(f, :size))
                        JR.lset(f, :index, 0)
                        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                            JR.lset(f, :highScore, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                            if (JR.call(JR.get(this, :recordComparatorInterface), :jm_compare, [JR.call(JR.lget(f, :newHighScore), :jm_getAsBytes, []), JR.call(JR.lget(f, :highScore), :jm_getAsBytes, [])]) == RecordComparator.jstatic_PRECEDES()) do
                                JR.lset(f, :lastIndex, JR.lget(f, :index))
                                throw(:jbreak)
                            end
                        end)
                        JR.call(JR.lget(f, :list), :jm_addAt, [JR.lget(f, :lastIndex), JR.lget(f, :newHighScore)])
                    catch
                        {:jexception, jexception} ->
                            JR.lset(f, :e, jexception)
                        JR.call(JR.get(this, :logUtil), :jm_put, ["EOF", this, JR.get(JR.get(this, :commonStrings), :LOAD), JR.lget(f, :e)])
                        throw({:jexception, JR.lget(f, :e)})
                    end
                end
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["No High Scores", this, JR.get(JR.get(this, :commonStrings), :LOAD), JR.lget(f, :e)])
        after
            try do
                if (JR.lget(f, :recordStore) != nil) do
                    PreLogUtil.jm_put("Closing RecordStore", this, JR.get(JR.get(this, :commonStrings), :LOAD))
                    JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :LOAD), JR.lget(f, :e)])
            end
        end
    end)
  end


  def jm_isTooManyHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if ((JR.call(this, :jm_getList, []) != nil) && (JR.call(JR.call(this, :jm_getList, []), :jm_size, []) < JR.get(this, :MAXHIGHSCORES))) do
            throw({:jreturn, false})
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["HighScores RecordStore Max Reached: "]), :jm_appendint, [JR.get(this, :MAXHIGHSCORES)]), :jm_toString, []), this, "isTooManyHighScores"])
            throw({:jreturn, true})
        end
    end)
  end


  def jm_isBestScore(this, p_newHighScore) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newHighScore, p_newHighScore)
        try do
            if !JR.call(this, :jm_isTooManyHighScores, []) do
                JR.call(JR.get(this, :logUtil), :jm_putF, ["Slot Available for a High Score", this, "isBestScore"])
                throw({:jreturn, true})
            else
                JR.lset(f, :list, JR.call(this, :jm_getList, []))
                JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
                JR.lset(f, :index, 0)
                JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                    JR.lset(f, :highScore, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                    if (JR.call(JR.get(this, :recordComparatorInterface), :jm_compare, [JR.call(JR.lget(f, :newHighScore), :jm_getAsBytes, []), JR.call(JR.lget(f, :highScore), :jm_getAsBytes, [])]) == RecordComparator.jstatic_FOLLOWS()) do
                        JR.call(JR.get(this, :logUtil), :jm_putF, ["Obtained a High Score", this, "isBestScore"])
                        throw({:jreturn, true})
                    end
                end)
            end
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Not a High Score", this, "isBestScore"])
            throw({:jreturn, false})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :ADD), JR.lget(f, :e)])
            throw({:jexception, JR.lget(f, :e)})
        end
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [HighScores.jm_toString(this)])
        JR.lset(f, :list, JR.call(this, :jm_getList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :highScore, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :highScore), :jm_getScoreString, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COMMA_SEP)])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


