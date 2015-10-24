// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import java.util.HashMap;

public class xg extends xi
{

    private static final String b[] = {
        "pkg_name", "fg", "bg", "screen", "count", "last_startup"
    };

    public xg(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS startup (_id INTEGER PRIMARY KEY,pkg_name TEXT,fg INTEGER,bg INTEGER,screen INTEGER,count INTEGER,last_startup INTEGER);");
    }

    public void a(String s)
    {
        String as[] = {
            s
        };
        a.delete("startup", "pkg_name=?", as);
    }

    public void a(HashMap hashmap)
    {
        Cursor cursor = a.query("startup", b, null, null, null, null, null);
        long l = SystemClock.elapsedRealtime();
        hashmap.clear();
        wx wx1;
        for (; cursor.moveToNext(); hashmap.put(wx1.a, wx1))
        {
            wx1 = new wx();
            wx1.a = cursor.getString(0);
            wx1.b = l;
            wx1.c = cursor.getLong(1);
            wx1.d = l;
            wx1.e = cursor.getLong(3);
            wx1.f = cursor.getInt(4);
            wx1.g = cursor.getLong(5);
        }

        cursor.close();
    }

    public void a(wx wx1)
    {
        String as[] = new String[1];
        as[0] = wx1.a;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("pkg_name", wx1.a);
        contentvalues.put("fg", Long.valueOf(wx1.c));
        contentvalues.put("bg", Integer.valueOf(0));
        contentvalues.put("screen", Long.valueOf(wx1.e));
        contentvalues.put("count", Integer.valueOf(wx1.f));
        contentvalues.put("last_startup", Long.valueOf(wx1.g));
        Cursor cursor = a.query("startup", new String[] {
            "_id"
        }, "pkg_name=?", as, null, null, null);
        if (cursor.moveToFirst())
        {
            a.update("startup", contentvalues, "pkg_name=?", as);
        } else
        {
            a.insert("startup", null, contentvalues);
        }
        cursor.close();
    }

}
