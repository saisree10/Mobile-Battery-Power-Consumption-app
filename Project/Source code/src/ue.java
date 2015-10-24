// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class ue
{

    public static int a(SQLiteDatabase sqlitedatabase)
    {
        FileInputStream fileinputstream = null;
        FileInputStream fileinputstream1 = new FileInputStream(new File(sqlitedatabase.getPath()));
        int j = fileinputstream1.available();
        int i;
        i = j;
        if (fileinputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        fileinputstream1.close();
_L2:
        return i;
        IOException ioexception7;
        ioexception7;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.DBUtils", "Close has IOException!", ioexception7);
        return i;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        fileinputstream1 = null;
_L21:
        if (ud.d)
        {
            Log.e("stat.DBUtils", "GetDbSize has FileNotFoundException!", filenotfoundexception);
        }
        i = 0;
        if (fileinputstream1 == null) goto _L2; else goto _L3
_L3:
        fileinputstream1.close();
        return 0;
        IOException ioexception1;
        ioexception1;
        boolean flag;
        flag = ud.d;
        i = 0;
        if (!flag) goto _L2; else goto _L4
_L4:
        Log.e("stat.DBUtils", "Close has IOException!", ioexception1);
        return 0;
        SecurityException securityexception;
        securityexception;
_L20:
        if (ud.d)
        {
            Log.e("stat.DBUtils", "GetDbSize has SecurityException!", securityexception);
        }
        i = 0;
        if (fileinputstream == null) goto _L2; else goto _L5
_L5:
        fileinputstream.close();
        return 0;
        IOException ioexception2;
        ioexception2;
        boolean flag1;
        flag1 = ud.d;
        i = 0;
        if (!flag1) goto _L2; else goto _L6
_L6:
        Log.e("stat.DBUtils", "Close has IOException!", ioexception2);
        return 0;
        NullPointerException nullpointerexception;
        nullpointerexception;
_L19:
        if (ud.d)
        {
            Log.e("stat.DBUtils", "GetDbSize has NullPointerException!", nullpointerexception);
        }
        i = 0;
        if (fileinputstream == null) goto _L2; else goto _L7
_L7:
        fileinputstream.close();
        return 0;
        IOException ioexception3;
        ioexception3;
        boolean flag2;
        flag2 = ud.d;
        i = 0;
        if (!flag2) goto _L2; else goto _L8
_L8:
        Log.e("stat.DBUtils", "Close has IOException!", ioexception3);
        return 0;
        IOException ioexception4;
        ioexception4;
_L18:
        if (ud.d)
        {
            Log.e("stat.DBUtils", "GetDbSize has IOException!", ioexception4);
        }
        i = 0;
        if (fileinputstream == null) goto _L2; else goto _L9
_L9:
        fileinputstream.close();
        return 0;
        IOException ioexception5;
        ioexception5;
        boolean flag3;
        flag3 = ud.d;
        i = 0;
        if (!flag3) goto _L2; else goto _L10
_L10:
        Log.e("stat.DBUtils", "Close has IOException!", ioexception5);
        return 0;
        Exception exception1;
        exception1;
_L17:
        if (ud.d)
        {
            Log.e("stat.DBUtils", "GetDbSize has Exception!", exception1);
        }
        i = 0;
        if (fileinputstream == null) goto _L2; else goto _L11
_L11:
        fileinputstream.close();
        return 0;
        IOException ioexception6;
        ioexception6;
        boolean flag4;
        flag4 = ud.d;
        i = 0;
        if (!flag4) goto _L2; else goto _L12
_L12:
        Log.e("stat.DBUtils", "Close has IOException!", ioexception6);
        return 0;
        Exception exception;
        exception;
_L16:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_363;
        }
        fileinputstream.close();
_L14:
        throw exception;
        IOException ioexception;
        ioexception;
        if (ud.d)
        {
            Log.e("stat.DBUtils", "Close has IOException!", ioexception);
        }
        if (true) goto _L14; else goto _L13
_L13:
        exception;
        fileinputstream = fileinputstream1;
        if (true) goto _L16; else goto _L15
_L15:
        exception1;
        fileinputstream = fileinputstream1;
          goto _L17
        ioexception4;
        fileinputstream = fileinputstream1;
          goto _L18
        nullpointerexception;
        fileinputstream = fileinputstream1;
          goto _L19
        securityexception;
        fileinputstream = fileinputstream1;
          goto _L20
        filenotfoundexception;
          goto _L21
    }

    public static long a(SQLiteDatabase sqlitedatabase, String s, String s1)
    {
        Cursor cursor = null;
        Cursor cursor2 = sqlitedatabase.query(s, new String[] {
            s1
        }, null, null, null, null, (new StringBuilder()).append(s1).append(" ASC").toString(), "1");
        if (cursor2 == null) goto _L2; else goto _L1
_L1:
        if (cursor2.getCount() <= 0) goto _L2; else goto _L3
_L3:
        long l1;
        cursor2.moveToFirst();
        l1 = cursor2.getLong(0);
        long l = l1;
_L11:
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return l;
        SQLiteException sqliteexception;
        sqliteexception;
        Cursor cursor1 = null;
_L9:
        if (ud.d)
        {
            Log.e("stat.DBUtils", (new StringBuilder()).append("Failed to query the db of ").append(s).toString(), sqliteexception);
        }
        if (cursor1 != null)
        {
            cursor1.close();
            return 0L;
        }
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
_L7:
        if (ud.d)
        {
            Log.e("stat.DBUtils", (new StringBuilder()).append("Failed to query the db of ").append(s).toString(), exception1);
        }
        if (cursor != null)
        {
            cursor.close();
            return 0L;
        }
        break; /* Loop/switch isn't completed */
        Exception exception;
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
        cursor = cursor2;
        if (true) goto _L7; else goto _L6
_L6:
        break; /* Loop/switch isn't completed */
        sqliteexception;
        cursor1 = cursor2;
        if (true) goto _L9; else goto _L8
_L8:
        return 0L;
_L2:
        l = 0L;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public static long a(SQLiteDatabase sqlitedatabase, String s, String as[], String as1[], String as2[])
    {
        Cursor cursor2 = sqlitedatabase.query(s, as, a(as1), as2, null, null, null);
        Cursor cursor;
        cursor = cursor2;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        long l;
        if (cursor.getCount() <= 0)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        cursor.moveToFirst();
        l = cursor.getLong(0);
        if (cursor != null)
        {
            cursor.close();
        }
        return l;
        if (cursor != null)
        {
            cursor.close();
        }
        return -1L;
        SQLiteException sqliteexception;
        sqliteexception;
        Cursor cursor1 = null;
_L6:
        if (ud.d)
        {
            Log.e("stat.DBUtils", (new StringBuilder()).append("Failed to query to DB of ").append(s).toString(), sqliteexception);
        }
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return -1L;
        Exception exception1;
        exception1;
        cursor = null;
_L4:
        if (ud.d)
        {
            Log.e("stat.DBUtils", (new StringBuilder()).append("Failed to query to DB of ").append(s).toString(), exception1);
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return -1L;
        Exception exception;
        exception;
        cursor = null;
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor1;
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
        if (true) goto _L4; else goto _L3
_L3:
        sqliteexception;
        cursor1 = cursor;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static String a(String as[])
    {
        int i = as.length;
        String s = null;
        if (i > 0)
        {
            StringBuilder stringbuilder = new StringBuilder();
            boolean flag = true;
            int j = as.length;
            int k = 0;
            while (k < j) 
            {
                String s1 = as[k];
                if (!flag)
                {
                    stringbuilder.append(" AND ");
                } else
                {
                    flag = false;
                }
                stringbuilder.append(s1);
                stringbuilder.append("=?");
                k++;
            }
            s = stringbuilder.toString();
        }
        return s;
    }

    public static void a(Context context, SQLiteDatabase sqlitedatabase, String s, String s1)
    {
        int i = a(sqlitedatabase);
        long l = tg.b(context);
        if ((long)i > l)
        {
            a(sqlitedatabase, s, s1, a(sqlitedatabase, s, s1));
        }
    }

    public static void a(SQLiteDatabase sqlitedatabase, String s, String s1, long l)
    {
        if (ud.c)
        {
            Log.i("stat.DBUtils", (new StringBuilder()).append("The record in ").append(s).append(" with rowId = ").append(l).append("will be delete.").toString());
        }
        String s2 = (new StringBuilder()).append(s1).append("=?").toString();
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        sqlitedatabase.delete(s, s2, as);
_L2:
        return;
        SQLiteException sqliteexception;
        sqliteexception;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.DBUtils", (new StringBuilder()).append("Failed to deleteByRowId in ").append(s).toString(), sqliteexception);
        return;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.DBUtils", (new StringBuilder()).append("Failed to deleteByRowId in ").append(s).toString(), exception);
            return;
        }
          goto _L2
    }

    public static void a(SQLiteDatabase sqlitedatabase, String s, String as[], String as1[], String as2[], String as3[])
    {
        ContentValues contentvalues = new ContentValues();
        for (int i = 0; i < as1.length; i++)
        {
            contentvalues.put(as[i], as1[i]);
        }

        sqlitedatabase.update(s, contentvalues, a(as2), as3);
    }
}
