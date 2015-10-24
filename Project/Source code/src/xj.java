// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import java.util.HashSet;

public class xj extends xi
{

    public xj(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS traffic (_id INTEGER PRIMARY KEY,date INTEGER,uid INTEGER,pkg_name TEXT,version INTEGER,fg_received INTEGER,fg_sended INTEGER,fg_timeu INTEGER,bg_received INTEGER,bg_sended INTEGER,bg_timeu INTEGER,create_time INTEGER);");
    }

    private String b(wy wy1, long l)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("date").append("=").append(l);
        stringbuilder.append(" AND ").append("uid").append("=").append(wy1.a);
        return stringbuilder.toString();
    }

    public SparseArray a(HashSet hashset, long l)
    {
        long l1 = l(l);
        long l2 = m(l);
        String as[] = {
            "uid", "pkg_name", "version", "fg_received", "fg_sended", "fg_timeu", "bg_received", "bg_sended", "bg_timeu", "date"
        };
        String as1[] = new String[2];
        as1[0] = String.valueOf(l2);
        as1[1] = String.valueOf(l1);
        Cursor cursor = a.query("traffic", as, "date >= ? and date <= ?", as1, null, null, null);
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
                zs.c("NetTrafficDbTable", (new StringBuilder()).append("skip, no package name found for uid: ").append(i).toString());
            } else
            if (j != c(s1))
            {
                zs.c("NetTrafficDbTable", "skip old version");
            } else
            {
                long l3 = cursor.getLong(3);
                long l4 = cursor.getLong(4);
                long l5 = cursor.getLong(5);
                long l6 = cursor.getLong(6);
                long l7 = cursor.getLong(7);
                long l8 = cursor.getLong(8);
                hashset.add(Long.valueOf(cursor.getInt(9)));
                wy wy1 = (wy)sparsearray.get(i);
                if (wy1 == null)
                {
                    wy1 = new wy();
                    wy1.a = i;
                    wy1.b = b(s1);
                    sparsearray.put(i, wy1);
                }
                wz wz1 = wy1.d;
                wz1.a = l3 + wz1.a;
                wz wz2 = wy1.d;
                wz2.b = l4 + wz2.b;
                wz wz3 = wy1.d;
                wz3.c = l5 + wz3.c;
                wz wz4 = wy1.e;
                wz4.a = wz4.a + (l3 + l6);
                wz wz5 = wy1.e;
                wz5.b = wz5.b + (l4 + l7);
                wz wz6 = wy1.e;
                wz6.c = wz6.c + (l5 + l8);
            }
        }
        cursor.close();
        return sparsearray;
    }

    public void a(int i)
    {
        String s = (new StringBuilder()).append("uid=").append(i).toString();
        a.delete("traffic", s, null);
    }

    public void a(int i, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("pkg_name", s);
        String s1 = (new StringBuilder()).append("uid=").append(i).toString();
        a.update("traffic", contentvalues, s1, null);
    }

    public void a(long l)
    {
        long l1 = e(l - 0x9a7ec800L);
        String s = (new StringBuilder()).append("date < ").append(l1).toString();
        a.delete("traffic", s, null);
    }

    public void a(SparseArray sparsearray, long l)
    {
        String as[] = {
            "uid", "pkg_name", "fg_received", "fg_sended", "fg_timeu", "bg_received", "bg_sended", "bg_timeu"
        };
        String s = (new StringBuilder()).append("date=").append(l).toString();
        Cursor cursor = a.query("traffic", as, s, null, null, null, null);
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
                zs.c("NetTrafficDbTable", (new StringBuilder()).append("skip, no package name found for uid: ").append(i).toString());
            } else
            {
                long l1 = cursor.getLong(2);
                long l2 = cursor.getLong(3);
                long l3 = cursor.getLong(4);
                long l4 = cursor.getLong(5);
                long l5 = cursor.getLong(6);
                long l6 = cursor.getLong(7);
                wy wy1 = new wy();
                wy1.a = i;
                wy1.b = s1;
                wy1.d.a = l1;
                wy1.d.b = l2;
                wy1.d.c = l3;
                wy1.e.a = l1 + l4;
                wy1.e.b = l2 + l5;
                wy1.e.c = l3 + l6;
                sparsearray.put(i, wy1);
            }
        }
        cursor.close();
    }

    public boolean a(wy wy1, long l)
    {
        if (wy1.d.c > wy1.e.c || wy1.d.a > wy1.e.a || wy1.d.b > wy1.e.b)
        {
            zs.d("NetTrafficDbTable", (new StringBuilder()).append("bad traffic stat, pkgName: ").append(wy1.b).append(", fgData: ").append(wy1.d).append(", totalData: ").append(wy1.e).toString());
            return false;
        }
        String s = b(wy1, l);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("fg_received", Long.valueOf(wy1.d.a));
        contentvalues.put("fg_sended", Long.valueOf(wy1.d.b));
        contentvalues.put("fg_timeu", Long.valueOf(wy1.d.c));
        contentvalues.put("bg_received", Long.valueOf(wy1.e.a - wy1.d.a));
        contentvalues.put("bg_sended", Long.valueOf(wy1.e.b - wy1.d.b));
        contentvalues.put("bg_timeu", Long.valueOf(wy1.e.c - wy1.d.c));
        Cursor cursor = a.query("traffic", new String[] {
            "_id"
        }, s, null, null, null, null);
        if (cursor.moveToFirst())
        {
            a.update("traffic", contentvalues, s, null);
        } else
        {
            contentvalues.put("date", Long.valueOf(l));
            contentvalues.put("uid", Integer.valueOf(wy1.a));
            contentvalues.put("pkg_name", wy1.b);
            contentvalues.put("version", Integer.valueOf(c(wy1.b)));
            contentvalues.put("create_time", Long.valueOf(System.currentTimeMillis()));
            a.insert("traffic", null, contentvalues);
        }
        cursor.close();
        return true;
    }
}
