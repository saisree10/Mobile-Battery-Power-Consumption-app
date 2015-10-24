// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;

final class sz
{

    public static final Long a = Long.valueOf(0x9a7ec800L);
    private ta b;
    private Context c;
    private String d;
    private String e[] = {
        "e", "f", "b"
    };
    private String f[] = {
        "c", "d"
    };

    public sz(Context context, String s)
    {
        b = new ta(this, context, s);
        c = context;
        d = s;
    }

    public void a()
    {
        SQLiteDatabase sqlitedatabase = null;
        sqlitedatabase = b.getWritableDatabase();
        Long long1 = Long.valueOf(System.currentTimeMillis() - a.longValue());
        String as[] = new String[1];
        as[0] = String.valueOf(long1);
        sqlitedatabase.delete(d, "d<?", as);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to clean!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(tc tc1, long l)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase1 = b.getWritableDatabase();
        String as[] = {
            "c"
        };
        String as1[] = new String[1];
        as1[0] = String.valueOf(l);
        String as2[] = new String[3];
        as2[0] = tc1.d();
        as2[1] = String.valueOf(tc1.e());
        as2[2] = tc1.c();
        ue.a(sqlitedatabase1, d, as, as1, e, as2);
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        sqlitedatabase1.close();
_L2:
        return;
        Exception exception6;
        exception6;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception6);
        return;
        Exception exception2;
        exception2;
_L9:
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Faile to updateCount!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
_L8:
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception5;
        exception5;
        sqlitedatabase = sqlitedatabase1;
        exception = exception5;
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception4;
        exception4;
        sqlitedatabase = sqlitedatabase1;
        exception2 = exception4;
          goto _L9
    }

    public boolean a(tc tc1)
    {
        SQLiteDatabase sqlitedatabase;
        boolean flag;
        sqlitedatabase = null;
        flag = true;
        SQLiteDatabase sqlitedatabase2 = b.getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        long l;
        ue.a(c, sqlitedatabase, d, "a");
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("b", tc1.c());
        contentvalues.put("c", Integer.valueOf(1));
        contentvalues.put("d", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("e", tc1.d());
        contentvalues.put("f", Integer.valueOf(tc1.e()));
        l = sqlitedatabase.insert(d, null, contentvalues);
        if (l < 0L)
        {
            flag = false;
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        sqlitedatabase.close();
_L2:
        return flag;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception4);
        return flag;
        SQLiteException sqliteexception;
        sqliteexception;
        SQLiteDatabase sqlitedatabase1 = null;
_L10:
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "failed to push to DB!");
        }
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        sqlitedatabase1.close();
_L4:
        return false;
        Exception exception3;
        exception3;
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to close the db!", exception3);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
_L8:
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception2;
        exception2;
        sqlitedatabase = sqlitedatabase1;
        exception = exception2;
        if (true) goto _L8; else goto _L7
_L7:
        SQLiteException sqliteexception1;
        sqliteexception1;
        sqlitedatabase1 = sqlitedatabase;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public long b(tc tc1)
    {
        SQLiteDatabase sqlitedatabase = b.getReadableDatabase();
        String as[] = {
            "c"
        };
        String as1[] = new String[3];
        as1[0] = tc1.d();
        as1[1] = String.valueOf(tc1.e());
        as1[2] = tc1.c();
        return ue.a(sqlitedatabase, d, as, e, as1);
    }

    public long c(tc tc1)
    {
        SQLiteDatabase sqlitedatabase = b.getReadableDatabase();
        String as[] = {
            "d"
        };
        String as1[] = new String[3];
        as1[0] = tc1.d();
        as1[1] = String.valueOf(tc1.e());
        as1[2] = tc1.c();
        return ue.a(sqlitedatabase, d, as, e, as1);
    }

    public void d(tc tc1)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase1 = b.getWritableDatabase();
        String as[] = new String[2];
        as[0] = String.valueOf(0);
        as[1] = String.valueOf(System.currentTimeMillis());
        String as1[] = new String[3];
        as1[0] = tc1.d();
        as1[1] = String.valueOf(tc1.e());
        as1[2] = tc1.c();
        ue.a(sqlitedatabase1, d, f, as, e, as1);
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        sqlitedatabase1.close();
_L2:
        return;
        Exception exception6;
        exception6;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception6);
        return;
        Exception exception2;
        exception2;
_L9:
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to resetCount!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.CrashDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
_L8:
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.CrashDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception5;
        exception5;
        sqlitedatabase = sqlitedatabase1;
        exception = exception5;
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception4;
        exception4;
        sqlitedatabase = sqlitedatabase1;
        exception2 = exception4;
          goto _L9
    }

}
