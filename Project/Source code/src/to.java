// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.format.DateUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.util.Calendar;

final class to extends SQLiteOpenHelper
{

    private static String a = "a";
    private static String b = "b";
    private final Context c;
    private final String d;
    private final String e;

    public to(Context context, String s)
    {
        super(context, s, null, 1);
        c = context;
        e = s;
        d = (new StringBuilder()).append("CREATE TABLE ").append(s).append("(").append(a).append(" TEXT,").append(b).append(" INTEGER);").toString();
    }

    private int a(SQLiteDatabase sqlitedatabase)
    {
        int i;
        try
        {
            FileInputStream fileinputstream = new FileInputStream(new File(sqlitedatabase.getPath()));
            i = fileinputstream.available();
            fileinputstream.close();
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.EventReportKeyDatabase", "Failed to getDBSize!", exception);
            }
            return 0;
        }
        return i;
    }

    private void a()
    {
        SQLiteDatabase sqlitedatabase = null;
        sqlitedatabase = getWritableDatabase();
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        String s = e;
        String s1 = (new StringBuilder()).append(b).append("< ?").toString();
        String as[] = new String[1];
        as[0] = String.valueOf(calendar.getTimeInMillis());
        sqlitedatabase.delete(s, s1, as);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to delete oldest record!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_185;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private long b(String s)
    {
        Cursor cursor = null;
        Cursor cursor2;
        SQLiteDatabase sqlitedatabase = getReadableDatabase();
        String as[] = new String[1];
        as[0] = b;
        String s1 = (new StringBuilder()).append(a).append("=?").toString();
        String as1[] = {
            s
        };
        cursor2 = sqlitedatabase.query(e, as, s1, as1, null, null, null);
        long l;
        if (cursor2.getCount() <= 0)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        cursor2.moveToFirst();
        l = cursor2.getLong(0);
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return l;
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return -1L;
        Exception exception1;
        exception1;
        Cursor cursor1 = null;
_L4:
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to get report Date in seconds!", exception1);
        }
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return -1L;
        Exception exception;
        exception;
_L2:
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
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
        cursor1 = cursor2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void b(String s, long l)
    {
        SQLiteDatabase sqlitedatabase = null;
        int i;
        long l1;
        sqlitedatabase = getWritableDatabase();
        i = a(sqlitedatabase);
        l1 = tg.b(c);
        if ((long)i <= l1)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        a();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(a, s);
        contentvalues.put(b, Long.valueOf(l));
        sqlitedatabase.insert(e, null, contentvalues);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to insert into db!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(String s, long l)
    {
        String s1;
        SQLiteDatabase sqlitedatabase;
        s1 = ud.a(s);
        sqlitedatabase = null;
        sqlitedatabase = getWritableDatabase();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(b, Long.valueOf(l));
        if (sqlitedatabase.update(e, contentvalues, (new StringBuilder()).append(a).append("=?").toString(), new String[] {
    s1
}) < 1)
        {
            b(s1, l);
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to update db!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventReportKeyDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean a(String s)
    {
        return DateUtils.isToday(Long.valueOf(b(ud.a(s))).longValue());
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        if (ud.c)
        {
            Log.i("stat.EventReportKeyDatabase", (new StringBuilder()).append("Create table ").append(e).append(" with ").append(d).toString());
        }
        sqlitedatabase.execSQL(d);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (ud.c)
        {
            Log.i("stat.EventReportKeyDatabase", (new StringBuilder()).append("Table ").append(e).append(" upgrade from ").append(i).append(" to ").append(j).toString());
        }
        sqlitedatabase.execSQL((new StringBuilder()).append("DROP TABLE IF EXISTS ").append(e).toString());
        sqlitedatabase.execSQL(d);
    }

}
