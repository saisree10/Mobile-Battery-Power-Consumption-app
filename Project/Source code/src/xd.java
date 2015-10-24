// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;

public class xd extends xi
{

    public xd(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS power (_id INTEGER PRIMARY KEY,hour INTEGER,uid INTEGER,pkg_name TEXT,version INTEGER,fg_timeu INTEGER,fg_cpu INTEGER,fg_wakelock INTEGER,fg_wakeup INTEGER,fg_wifi INTEGER,fg_gps INTEGER,fg_audio INTEGER,fg_video INTEGER,bg_timeu INTEGER,bg_cpu INTEGER,bg_wakelock INTEGER,bg_wakeup INTEGER,bg_wifi INTEGER,bg_gps INTEGER,bg_audio INTEGER,bg_video INTEGER,create_time INTEGER);");
    }

    private String b(wu wu1, long l)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("hour").append("=").append(l);
        stringbuilder.append(" AND ").append("uid").append("=").append(wu1.a);
        return stringbuilder.toString();
    }

    public SparseArray a(long l)
    {
        long l1 = h(l);
        long l2 = i(l);
        String as[] = {
            "uid", "pkg_name", "version", "fg_timeu", "fg_cpu", "fg_wakelock", "fg_wakeup", "fg_wifi", "fg_gps", "fg_audio", 
            "fg_video", "bg_timeu", "bg_cpu", "bg_wakelock", "bg_wakeup", "bg_wifi", "bg_gps", "bg_audio", "bg_video"
        };
        String as1[] = new String[2];
        as1[0] = String.valueOf(l1);
        as1[1] = String.valueOf(l2);
        Cursor cursor = a.query("power", as, "hour >= ? and hour <= ?", as1, null, null, null);
        ws ws1 = ws.a();
        SparseArray sparsearray = new SparseArray();
        while (cursor.moveToNext()) 
        {
            int i = cursor.getInt(0);
            String s = cursor.getString(1);
            int j = cursor.getInt(2);
            String s1;
            if (s == null)
            {
                s1 = ws1.a(i);
            } else
            {
                s1 = s;
            }
            if (s1 == null)
            {
                zs.c("AppPowerDbTable", (new StringBuilder()).append("skip, no package name found for uid: ").append(i).toString());
            } else
            if (j != c(s1))
            {
                zs.c("AppPowerDbTable", "skip old version");
            } else
            {
                long l3 = cursor.getLong(3);
                long l4 = cursor.getLong(4);
                long l5 = cursor.getLong(5);
                int k = cursor.getInt(6);
                long l6 = cursor.getLong(7);
                long l7 = cursor.getLong(8);
                long l8 = cursor.getLong(9);
                long l9 = cursor.getLong(10);
                long l10 = cursor.getLong(11);
                long l11 = cursor.getLong(12);
                long l12 = cursor.getLong(13);
                int i1 = cursor.getInt(14);
                long l13 = cursor.getLong(15);
                long l14 = cursor.getLong(16);
                long l15 = cursor.getLong(17);
                long l16 = cursor.getLong(18);
                wu wu1 = (wu)sparsearray.get(i);
                if (wu1 == null)
                {
                    wu1 = new wu();
                    wu1.a = i;
                    wu1.b = b(s1);
                    sparsearray.put(i, wu1);
                }
                wv wv1 = wu1.d;
                wv1.a = l3 + wv1.a;
                wv wv2 = wu1.d;
                wv2.b = l4 + wv2.b;
                wv wv3 = wu1.d;
                wv3.c = l5 + wv3.c;
                wv wv4 = wu1.d;
                wv4.d = k + wv4.d;
                wv wv5 = wu1.d;
                wv5.e = l6 + wv5.e;
                wv wv6 = wu1.d;
                wv6.f = l7 + wv6.f;
                wv wv7 = wu1.d;
                wv7.g = l8 + wv7.g;
                wv wv8 = wu1.d;
                wv8.h = l9 + wv8.h;
                wv wv9 = wu1.f;
                wv9.a = wv9.a + (l3 + l10);
                wv wv10 = wu1.f;
                wv10.b = wv10.b + (l4 + l11);
                wv wv11 = wu1.f;
                wv11.c = wv11.c + (l5 + l12);
                wv wv12 = wu1.f;
                wv12.d = wv12.d + (k + i1);
                wv wv13 = wu1.f;
                wv13.e = wv13.e + (l6 + l13);
                wv wv14 = wu1.f;
                wv14.f = wv14.f + (l7 + l14);
                wv wv15 = wu1.f;
                wv15.g = wv15.g + (l8 + l15);
                wv wv16 = wu1.f;
                wv16.h = wv16.h + (l9 + l16);
            }
        }
        cursor.close();
        return sparsearray;
    }

    public void a(int i)
    {
        String s = (new StringBuilder()).append("uid=").append(i).toString();
        a.delete("power", s, null);
    }

    public void a(int i, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("pkg_name", s);
        String s1 = (new StringBuilder()).append("uid=").append(i).toString();
        a.update("power", contentvalues, s1, null);
    }

    public void a(SparseArray sparsearray, long l)
    {
        String as[] = {
            "uid", "pkg_name", "fg_timeu", "fg_cpu", "fg_wakelock", "fg_wakeup", "fg_wifi", "fg_gps", "fg_audio", "fg_video", 
            "bg_timeu", "bg_cpu", "bg_wakelock", "bg_wakeup", "bg_wifi", "bg_gps", "bg_audio", "bg_video"
        };
        String s = (new StringBuilder()).append("hour=").append(l).toString();
        Cursor cursor = a.query("power", as, s, null, null, null, null);
        ws ws1 = ws.a();
        sparsearray.clear();
        while (cursor.moveToNext()) 
        {
            int i = cursor.getInt(0);
            String s1 = cursor.getString(1);
            if (s1 == null)
            {
                s1 = ws1.a(i);
            }
            if (s1 == null)
            {
                zs.c("AppPowerDbTable", (new StringBuilder()).append("skip, no package name found for uid: ").append(i).toString());
            } else
            {
                long l1 = cursor.getLong(2);
                long l2 = cursor.getLong(3);
                long l3 = cursor.getLong(4);
                int j = cursor.getInt(5);
                long l4 = cursor.getLong(6);
                long l5 = cursor.getLong(7);
                long l6 = cursor.getLong(8);
                long l7 = cursor.getLong(9);
                long l8 = cursor.getLong(10);
                long l9 = cursor.getLong(11);
                long l10 = cursor.getLong(12);
                int k = cursor.getInt(13);
                long l11 = cursor.getLong(14);
                long l12 = cursor.getLong(15);
                long l13 = cursor.getLong(16);
                long l14 = cursor.getLong(17);
                wu wu1 = new wu();
                wu1.a = i;
                wu1.b = s1;
                wu1.d.a = l1;
                wu1.d.b = l2;
                wu1.d.c = l3;
                wu1.d.d = j;
                wu1.d.e = l4;
                wu1.d.f = l5;
                wu1.d.g = l6;
                wu1.d.h = l7;
                wu1.f.a = l1 + l8;
                wu1.f.b = l2 + l9;
                wu1.f.c = l3 + l10;
                wu1.f.d = j + k;
                wu1.f.e = l4 + l11;
                wu1.f.f = l5 + l12;
                wu1.f.g = l6 + l13;
                wu1.f.h = l7 + l14;
                sparsearray.put(i, wu1);
            }
        }
        cursor.close();
    }

    public boolean a(wu wu1, long l)
    {
        if (wu1.d.a > wu1.f.a || wu1.d.b > wu1.f.b || wu1.d.c > wu1.f.c || wu1.d.d > wu1.f.d || wu1.d.e > wu1.f.e || wu1.d.f > wu1.f.f || wu1.d.g > wu1.f.g || wu1.d.h > wu1.f.h)
        {
            zs.d("AppPowerDbTable", (new StringBuilder()).append("bad power stat, pkgName: ").append(wu1.b).append(", fgData: ").append(wu1.d).append(", totalData: ").append(wu1.f).toString());
            return false;
        }
        String s = b(wu1, l);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("fg_timeu", Long.valueOf(wu1.d.a));
        contentvalues.put("fg_cpu", Long.valueOf(wu1.d.b));
        contentvalues.put("fg_wakelock", Long.valueOf(wu1.d.c));
        contentvalues.put("fg_wakeup", Integer.valueOf(wu1.d.d));
        contentvalues.put("fg_wifi", Long.valueOf(wu1.d.e));
        contentvalues.put("fg_gps", Long.valueOf(wu1.d.f));
        contentvalues.put("fg_audio", Long.valueOf(wu1.d.g));
        contentvalues.put("fg_video", Long.valueOf(wu1.d.h));
        contentvalues.put("bg_timeu", Long.valueOf(wu1.f.a - wu1.d.a));
        contentvalues.put("bg_cpu", Long.valueOf(wu1.f.b - wu1.d.b));
        contentvalues.put("bg_wakelock", Long.valueOf(wu1.f.c - wu1.d.c));
        contentvalues.put("bg_wakeup", Integer.valueOf(wu1.f.d - wu1.d.d));
        contentvalues.put("bg_wifi", Long.valueOf(wu1.f.e - wu1.d.e));
        contentvalues.put("bg_gps", Long.valueOf(wu1.f.f - wu1.d.f));
        contentvalues.put("bg_audio", Long.valueOf(wu1.f.g - wu1.d.g));
        contentvalues.put("bg_video", Long.valueOf(wu1.f.h - wu1.d.h));
        Cursor cursor = a.query("power", new String[] {
            "_id"
        }, s, null, null, null, null);
        if (cursor.moveToFirst())
        {
            a.update("power", contentvalues, s, null);
        } else
        {
            contentvalues.put("hour", Long.valueOf(l));
            contentvalues.put("uid", Integer.valueOf(wu1.a));
            contentvalues.put("pkg_name", wu1.b);
            contentvalues.put("version", Integer.valueOf(c(wu1.b)));
            contentvalues.put("create_time", Long.valueOf(System.currentTimeMillis()));
            a.insert("power", null, contentvalues);
        }
        cursor.close();
        return true;
    }

    public void b(long l)
    {
        long l1 = f(l - 0xa4cb800L);
        String s = (new StringBuilder()).append("hour < ").append(l1).toString();
        a.delete("power", s, null);
    }
}
