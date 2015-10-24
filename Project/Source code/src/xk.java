// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class xk extends xi
{

    public xk(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS system (_id INTEGER PRIMARY KEY,hour INTEGER,cpu_l INTEGER,cpu_h INTEGER,cpu_a INTEGER,cpu_c INTEGER,ram_l INTEGER,ram_h INTEGER,ram_a INTEGER,ram_c INTEGER);");
    }

    public void a(long l)
    {
        long l1 = g(l - 0x5265c00L);
        String s = (new StringBuilder()).append("hour < ").append(l1).toString();
        a.delete("system", s, null);
    }

    public void a(xb xb1)
    {
        String s = (new StringBuilder()).append("hour=").append(xb1.a).toString();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("cpu_l", Integer.valueOf(xb1.b.a));
        contentvalues.put("cpu_h", Integer.valueOf(xb1.b.b));
        contentvalues.put("cpu_a", Integer.valueOf(xb1.b.c));
        contentvalues.put("cpu_c", Integer.valueOf(xb1.b.d));
        contentvalues.put("ram_l", Integer.valueOf(xb1.c.a));
        contentvalues.put("ram_h", Integer.valueOf(xb1.c.b));
        contentvalues.put("ram_a", Integer.valueOf(xb1.c.c));
        contentvalues.put("ram_c", Integer.valueOf(xb1.c.d));
        Cursor cursor = a.query("system", new String[] {
            "_id"
        }, s, null, null, null, null);
        if (cursor.moveToFirst())
        {
            a.update("system", contentvalues, s, null);
        } else
        {
            contentvalues.put("hour", Long.valueOf(xb1.a));
            a.insert("system", null, contentvalues);
        }
        cursor.close();
    }

    public void a(xb xb1, long l)
    {
        String as[] = {
            "cpu_l", "cpu_h", "cpu_a", "cpu_c", "ram_l", "ram_h", "ram_a", "ram_c"
        };
        String s = (new StringBuilder()).append("hour=").append(l).toString();
        Cursor cursor = a.query("system", as, s, null, null, null, null);
        xb1.a(l);
        if (cursor.moveToNext())
        {
            xb1.b.a = cursor.getInt(0);
            xb1.b.b = cursor.getInt(1);
            xb1.b.c = cursor.getInt(2);
            xb1.b.d = cursor.getInt(3);
            xb1.c.a = cursor.getInt(4);
            xb1.c.b = cursor.getInt(5);
            xb1.c.c = cursor.getInt(6);
            xb1.c.d = cursor.getInt(7);
        }
        cursor.close();
    }
}
