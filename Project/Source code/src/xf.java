// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import java.util.HashMap;

public class xf extends xi
{

    private static final String b[] = {
        "date", "pkg_name", "fg", "bg", "screen", "count", "last_startup"
    };

    public xf(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS startup_aip (_id INTEGER PRIMARY KEY,date INTEGER,pkg_name TEXT,fg INTEGER,bg INTEGER,screen INTEGER,count INTEGER,last_startup INTEGER);");
    }

    public HashMap a(long l)
    {
        return c(j(l));
    }

    public void a(String s)
    {
        String as[] = {
            s
        };
        a.delete("startup_aip", "pkg_name=?", as);
    }

    public void a(wx wx1, long l)
    {
        String as[] = new String[2];
        as[0] = wx1.a;
        as[1] = String.valueOf(l);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("pkg_name", wx1.a);
        contentvalues.put("date", Long.valueOf(l));
        contentvalues.put("fg", Long.valueOf(wx1.c));
        contentvalues.put("bg", Integer.valueOf(0));
        contentvalues.put("screen", Long.valueOf(wx1.e));
        contentvalues.put("count", Integer.valueOf(wx1.f));
        contentvalues.put("last_startup", Long.valueOf(wx1.g));
        Cursor cursor = a.query("startup_aip", new String[] {
            "_id"
        }, "pkg_name=? AND date=?", as, null, null, null);
        if (cursor.moveToFirst())
        {
            a.update("startup_aip", contentvalues, "pkg_name=? AND date=?", as);
        } else
        {
            a.insert("startup_aip", null, contentvalues);
        }
        cursor.close();
    }

    public HashMap b(long l)
    {
        return c(k(l));
    }

    public HashMap c(long l)
    {
        HashMap hashmap = new HashMap();
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        Cursor cursor = a.query("startup_aip", b, "date = ? ", as, null, null, null);
        long l1 = SystemClock.elapsedRealtime();
        wx wx1;
        for (; cursor.moveToNext(); hashmap.put(wx1.a, wx1))
        {
            wx1 = new wx();
            wx1.a = cursor.getString(1);
            wx1.b = l1;
            wx1.c = cursor.getLong(2);
            wx1.d = l1;
            wx1.e = cursor.getLong(4);
            wx1.f = cursor.getInt(5);
            wx1.g = cursor.getLong(6);
        }

        cursor.close();
        return hashmap;
    }

    public void d(long l)
    {
        long l1 = k(l);
        String s = (new StringBuilder()).append("date < ").append(l1).toString();
        a.delete("startup_aip", s, null);
    }

}
