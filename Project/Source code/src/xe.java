// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class xe extends xi
{

    public xe(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS ram (_id INTEGER PRIMARY KEY,hour INTEGER,pkg_name TEXT,version INTEGER,fg_l INTEGER,fg_h INTEGER,fg_a INTEGER,fg_c INTEGER,bg_l INTEGER,bg_h INTEGER,bg_a INTEGER,bg_c INTEGER);");
    }

    public List a(long l)
    {
        long l1 = h(l);
        long l2 = i(l);
        String as[] = {
            "pkg_name", "version", "fg_l", "fg_h", "fg_a", "fg_c", "bg_l", "bg_h", "bg_a", "bg_c"
        };
        String as1[] = new String[2];
        as1[0] = String.valueOf(l1);
        as1[1] = String.valueOf(l2);
        Cursor cursor = a.query("ram", as, "hour >= ? and hour <= ?", as1, null, null, null);
        HashMap hashmap = new HashMap();
        do
        {
            if (!cursor.moveToNext())
            {
                break;
            }
            String s = cursor.getString(0);
            if (cursor.getInt(1) == c(s))
            {
                int i = cursor.getInt(2);
                int j = cursor.getInt(3);
                int k = cursor.getInt(4);
                int i1 = cursor.getInt(5);
                int j1 = cursor.getInt(6);
                int k1 = cursor.getInt(7);
                int i2 = cursor.getInt(8);
                int j2 = cursor.getInt(9);
                ww ww1 = (ww)hashmap.get(s);
                if (ww1 == null)
                {
                    ww1 = new ww();
                    ww1.a = s;
                    hashmap.put(s, ww1);
                }
                ww1.b.a(new xl(i, j, k, i1));
                ww1.c.a(new xl(j1, k1, i2, j2));
            }
        } while (true);
        cursor.close();
        return new ArrayList(hashmap.values());
    }

    public void a(String s)
    {
        String as[] = {
            s
        };
        a.delete("ram", "pkg_name=?", as);
    }

    public void a(HashMap hashmap, long l)
    {
        String as[] = {
            "pkg_name", "fg_l", "fg_h", "fg_a", "fg_c", "bg_l", "bg_h", "bg_a", "bg_c"
        };
        String s = (new StringBuilder()).append("hour=").append(l).toString();
        Cursor cursor = a.query("ram", as, s, null, null, null, null);
        hashmap.clear();
        ww ww1;
        for (; cursor.moveToNext(); hashmap.put(ww1.a, ww1))
        {
            ww1 = new ww();
            ww1.a = cursor.getString(0);
            ww1.b.a = cursor.getInt(1);
            ww1.b.b = cursor.getInt(2);
            ww1.b.c = cursor.getInt(3);
            ww1.b.d = cursor.getInt(4);
            ww1.c.a = cursor.getInt(5);
            ww1.c.b = cursor.getInt(6);
            ww1.c.c = cursor.getInt(7);
            ww1.c.d = cursor.getInt(8);
        }

        cursor.close();
    }

    public void a(ww ww1, long l)
    {
        String as[] = new String[2];
        as[0] = ww1.a;
        as[1] = String.valueOf(l);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("fg_l", Integer.valueOf(ww1.b.a));
        contentvalues.put("fg_h", Integer.valueOf(ww1.b.b));
        contentvalues.put("fg_a", Integer.valueOf(ww1.b.c));
        contentvalues.put("fg_c", Integer.valueOf(ww1.b.d));
        contentvalues.put("bg_l", Integer.valueOf(ww1.c.a));
        contentvalues.put("bg_h", Integer.valueOf(ww1.c.b));
        contentvalues.put("bg_a", Integer.valueOf(ww1.c.c));
        contentvalues.put("bg_c", Integer.valueOf(ww1.c.d));
        Cursor cursor = a.query("ram", new String[] {
            "_id"
        }, "pkg_name=? AND hour=?", as, null, null, null);
        if (cursor.moveToFirst())
        {
            a.update("ram", contentvalues, "pkg_name=? AND hour=?", as);
        } else
        {
            contentvalues.put("hour", Long.valueOf(l));
            contentvalues.put("pkg_name", ww1.a);
            contentvalues.put("version", Integer.valueOf(c(ww1.a)));
            a.insert("ram", null, contentvalues);
        }
        cursor.close();
    }

    public void b(long l)
    {
        long l1 = f(l - 0xa4cb800L);
        String s = (new StringBuilder()).append("hour < ").append(l1).toString();
        a.delete("ram", s, null);
    }
}
