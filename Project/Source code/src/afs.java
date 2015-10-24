// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Calendar;

public class afs
{

    private static volatile afs b = null;
    private aft a;
    private SQLiteDatabase c;
    private Context d;

    private afs(Context context)
    {
        a = null;
        d = context;
        a = new aft(this, d, "dx_chargings.db", null, 1);
        c = a.getWritableDatabase();
    }

    public static afs a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        afs;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new afs(context);
        }
        afs;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        afs;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int a()
    {
        this;
        JVM INSTR monitorenter ;
        Cursor cursor;
        boolean flag;
        cursor = c.rawQuery("select sum(health) from chargings", null);
        flag = cursor.moveToFirst();
        int i;
        i = 0;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        i = cursor.getInt(0);
        cursor.close();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public afu a(int i, int j, int k)
    {
        this;
        JVM INSTR monitorenter ;
        Cursor cursor1 = c.query("chargings", null, (new StringBuilder()).append("year=").append(i).append(" AND ").append("month").append("=").append(j).append(" AND ").append("day").append("=").append(k).toString(), null, null, null, null);
        if (!cursor1.moveToFirst()) goto _L2; else goto _L1
_L1:
        afu afu1;
        afu1 = new afu(this);
        afu1.a = cursor1.getInt(cursor1.getColumnIndex("year"));
        afu1.b = cursor1.getInt(cursor1.getColumnIndex("month"));
        afu1.c = cursor1.getInt(cursor1.getColumnIndex("day"));
        afu1.d = cursor1.getInt(cursor1.getColumnIndex("normal"));
        afu1.e = cursor1.getInt(cursor1.getColumnIndex("health"));
        if (cursor1 == null)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        cursor1.close();
_L6:
        this;
        JVM INSTR monitorexit ;
        return afu1;
_L2:
        if (cursor1 == null) goto _L4; else goto _L3
_L3:
        cursor1.close();
          goto _L4
_L5:
        Cursor cursor;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        cursor.close();
        Exception exception;
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        cursor = cursor1;
          goto _L5
_L4:
        afu1 = null;
          goto _L6
        exception;
        cursor = null;
          goto _L5
    }

    public void a(afu afu1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("year", Integer.valueOf(afu1.a));
        contentvalues.put("month", Integer.valueOf(afu1.b));
        contentvalues.put("day", Integer.valueOf(afu1.c));
        contentvalues.put("normal", Integer.valueOf(afu1.d));
        contentvalues.put("health", Integer.valueOf(afu1.e));
        c.insert("chargings", null, contentvalues);
    }

    public afu b()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = calendar.get(1);
        int j = calendar.get(2);
        int k = calendar.get(5);
        afu afu1 = a(i, j, k);
        if (afu1 == null)
        {
            afu1 = new afu(this);
            afu1.a = i;
            afu1.b = j;
            afu1.c = k;
            afu1.d = 0;
            afu1.e = 0;
        }
        return afu1;
    }

    public void b(afu afu1)
    {
        if (a(afu1.a, afu1.b, afu1.c) == null)
        {
            a(afu1);
            return;
        } else
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("normal", Integer.valueOf(afu1.d));
            contentvalues.put("health", Integer.valueOf(afu1.e));
            c.update("chargings", contentvalues, (new StringBuilder()).append("year=").append(afu1.a).append(" AND ").append("month").append("=").append(afu1.b).append(" AND ").append("day").append("=").append(afu1.c).toString(), null);
            return;
        }
    }

}
