// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class sj
{

    private static final String a[] = {
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "k", 
        "l", "m", "n", "o"
    };
    private sl b;
    private Context c;
    private String d;

    sj(Context context, String s)
    {
        b = new sl(this, context, s);
        c = context;
        d = s;
    }

    private sk a(String s, String as[], String s1)
    {
        Cursor cursor1 = b.getReadableDatabase().query(d, a, s, as, null, null, "a ASC", s1);
        Cursor cursor = cursor1;
        JSONArray jsonarray = new JSONArray();
        long l;
        l = 0L;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_513;
        }
        if (cursor.getCount() <= 0)
        {
            break MISSING_BLOCK_LABEL_513;
        }
        cursor.moveToFirst();
        int j = 0;
_L7:
        long l1 = cursor.getLong(0);
        l = l1;
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("b", cursor.getString(1));
        jsonobject.put("c", cursor.getString(2));
        jsonobject.put("d", cursor.getString(3));
        jsonobject.put("e", cursor.getString(4));
        jsonobject.put("f", cursor.getString(5));
        jsonobject.put("g", cursor.getString(6));
        jsonobject.put("h", cursor.getString(7));
        jsonobject.put("i", cursor.getString(8));
        jsonobject.put("k", cursor.getString(9));
        jsonobject.put("l", cursor.getString(10));
        jsonobject.put("m", cursor.getString(11));
        jsonobject.put("n", cursor.getString(12));
        jsonobject.put("o", cursor.getString(13));
        jsonarray.put(jsonobject);
        int i = j + 1;
_L3:
        if (cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        sk sk1;
        if (ud.c)
        {
            Log.i("stat.AppDatabase", (new StringBuilder()).append("There are ").append(i).append(" records are dumped out and the largest row id is ").append(l).append(".").toString());
        }
        sk1 = new sk(this, jsonarray.toString(), l);
        if (cursor != null)
        {
            cursor.close();
        }
        return sk1;
        JSONException jsonexception;
        jsonexception;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to creat JSONObject!", jsonexception);
        }
        b(l);
        i = j;
          goto _L3
        Exception exception1;
        exception1;
        cursor = null;
_L6:
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to query the db.", exception1);
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return null;
        Exception exception;
        exception;
        cursor = null;
_L5:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L5; else goto _L4
_L4:
        exception1;
        if (true) goto _L6; else goto _L2
_L2:
        j = i;
          goto _L7
        i = 0;
          goto _L1
    }

    private void a(String s, String as[])
    {
        SQLiteDatabase sqlitedatabase = null;
        sqlitedatabase = b.getWritableDatabase();
        sqlitedatabase.delete(d, s, as);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Faild to clear data from db!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void b(long l)
    {
        SQLiteDatabase sqlitedatabase;
        if (ud.c)
        {
            Log.i("stat.AppDatabase", (new StringBuilder()).append("The record with rowId = ").append(l).append(" will be deleted.").toString());
        }
        sqlitedatabase = null;
        sqlitedatabase = b.getWritableDatabase();
        String s = d;
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        sqlitedatabase.delete(s, "a=?", as);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to deleteByRowId!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private long c()
    {
        Cursor cursor = null;
        Cursor cursor2 = b.getReadableDatabase().query(d, new String[] {
            "a"
        }, null, null, null, null, "a ASC", "1");
        if (cursor2 == null) goto _L2; else goto _L1
_L1:
        if (cursor2.getCount() <= 0) goto _L2; else goto _L3
_L3:
        long l1;
        cursor2.moveToFirst();
        l1 = cursor2.getLong(0);
        long l = l1;
_L8:
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return l;
        Exception exception1;
        exception1;
        Cursor cursor1 = null;
_L6:
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to query the db.", exception1);
        }
        Exception exception;
        if (cursor1 != null)
        {
            cursor1.close();
            return 0L;
        } else
        {
            return 0L;
        }
        exception;
_L5:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor1;
        if (true) goto _L5; else goto _L4
_L4:
        exception1;
        cursor1 = cursor2;
        if (true) goto _L6; else goto _L2
_L2:
        l = 0L;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public int a()
    {
        int i;
        try
        {
            i = ue.a(b.getReadableDatabase());
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.AppDatabase", "Failed to get the Size of DB", exception);
            }
            return 0;
        }
        return i;
    }

    public void a(int i)
    {
        SQLiteDatabase sqlitedatabase = null;
        sqlitedatabase = b.getWritableDatabase();
        String s = d;
        String as[] = new String[1];
        as[0] = String.valueOf(i);
        sqlitedatabase.delete(s, "j=?", as);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "DeleteByPublicKeyVersion has Exception!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(long l)
    {
        if (l <= 0L)
        {
            a(null, null);
            return;
        } else
        {
            String as[] = new String[1];
            as[0] = String.valueOf(l);
            a("a<=?", as);
            return;
        }
    }

    public boolean a(td td1)
    {
        SQLiteDatabase sqlitedatabase = null;
        int i;
        long l;
        sqlitedatabase = b.getWritableDatabase();
        i = ue.a(sqlitedatabase);
        l = tg.b(c);
        if (ud.c)
        {
            Log.i("stat.AppDatabase", (new StringBuilder()).append("Current db file is ").append(sqlitedatabase.getPath()).append(" and its size is ").append(i).append(" and its max size is ").append(l).append(".").toString());
        }
        if ((long)i <= l)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        b(c());
        long l1;
        ContentValues contentvalues = new ContentValues();
        String s = td1.o();
        contentvalues.put("b", te.b(td1.m(), s));
        contentvalues.put("c", te.b(td1.a(), s));
        contentvalues.put("d", te.b(td1.b(), s));
        contentvalues.put("e", te.b(td1.c(), s));
        contentvalues.put("f", te.b(td1.g(), s));
        contentvalues.put("g", te.b(td1.e(), s));
        contentvalues.put("h", te.b(td1.f(), s));
        contentvalues.put("i", td1.l());
        contentvalues.put("j", Integer.valueOf(td1.n()));
        contentvalues.put("k", te.b(td1.h(), s));
        contentvalues.put("l", te.b(td1.d(), s));
        contentvalues.put("m", te.b(td1.i(), s));
        contentvalues.put("n", te.b(td1.j(), s));
        contentvalues.put("o", te.b(td1.k(), s));
        l1 = sqlitedatabase.insert(d, null, contentvalues);
        boolean flag;
        int j = l1 != 0L;
        flag = false;
        if (j >= 0)
        {
            flag = true;
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_372;
        }
        sqlitedatabase.close();
_L2:
        return flag;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception4);
        return flag;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to push to DB!", exception2);
        }
        flag = false;
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return false;
        Exception exception3;
        exception3;
        boolean flag1;
        flag1 = ud.d;
        flag = false;
        if (!flag1) goto _L2; else goto _L4
_L4:
        Log.e("stat.AppDatabase", "Failed to close the db!", exception3);
        return false;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_464;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public sk b(int i)
    {
        String s;
        if (i <= 0)
        {
            s = null;
        } else
        {
            s = String.valueOf(i);
        }
        return a(null, null, s);
    }

    public boolean b()
    {
        boolean flag = true;
        Cursor cursor = b.getReadableDatabase().query(d, null, null, null, null, null, null, "1");
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        int i;
        i = cursor.getCount();
        cursor.close();
        boolean flag1;
        if (i == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.AppDatabase", "Failed to judge db empty!", exception);
            return flag;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

}
