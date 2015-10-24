// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class ni
{

    private static ni a;
    private SQLiteDatabase b;

    public ni(Context context)
    {
        b = (new nj(context)).getWritableDatabase();
    }

    public static ni a(Context context)
    {
        ni;
        JVM INSTR monitorenter ;
        ni ni1;
        if (a == null)
        {
            a = new ni(context);
        }
        ni1 = a;
        ni;
        JVM INSTR monitorexit ;
        return ni1;
        Exception exception;
        exception;
        throw exception;
    }

    public nk a(String s)
    {
        nk nk1 = new nk(s);
        String as[] = {
            "json", "last_modified", "last_pull"
        };
        String as1[] = {
            s
        };
        Cursor cursor = b.query("tb_recommend", as, "child=?", as1, null, null, null);
        if (cursor.moveToFirst())
        {
            nk1.b = cursor.getString(0);
            nk1.c = cursor.getLong(1);
            nk1.d = 0L;
        }
        cursor.close();
        return nk1;
    }

    public void a(nk nk1)
    {
        String as[] = new String[1];
        as[0] = nk1.a;
        ContentValues contentvalues = new ContentValues(4);
        contentvalues.put("json", nk1.b);
        contentvalues.put("last_modified", Long.valueOf(nk1.c));
        contentvalues.put("last_pull", Long.valueOf(nk1.d));
        if (b.update("tb_recommend", contentvalues, "child=?", as) == 0)
        {
            contentvalues.put("child", nk1.a);
            b.insert("tb_recommend", null, contentvalues);
        }
    }
}
