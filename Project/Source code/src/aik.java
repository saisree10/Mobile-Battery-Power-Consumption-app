// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

public class aik
{

    private static aik b;
    private Context a;
    private ail c;
    private SQLiteDatabase d;

    private aik(Context context)
    {
        a = context;
        c = new ail(this, a, "batterycurve.db", null, 1);
        d = c.getWritableDatabase();
    }

    public static aik a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        aik;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new aik(context);
        }
        aik;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        aik;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ain a()
    {
        this;
        JVM INSTR monitorenter ;
        Cursor cursor1 = d.query("battery_info", new String[] {
            "cdate", "yesterday", "today"
        }, null, null, null, null, null);
        if (!cursor1.moveToFirst()) goto _L2; else goto _L1
_L1:
        ain ain1;
        aim aim1 = aim.a(a);
        aim1.getClass();
        ain1 = new ain(aim1);
        ain1.a = cursor1.getLong(cursor1.getColumnIndex("cdate"));
        ain1.b = cursor1.getString(cursor1.getColumnIndex("yesterday"));
        ain1.c = cursor1.getString(cursor1.getColumnIndex("today"));
        if (cursor1 == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        cursor1.close();
_L6:
        this;
        JVM INSTR monitorexit ;
        return ain1;
_L2:
        if (cursor1 == null) goto _L4; else goto _L3
_L3:
        cursor1.close();
          goto _L4
_L5:
        Cursor cursor;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_178;
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
        ain1 = null;
          goto _L6
        exception;
        cursor = null;
          goto _L5
    }

    public void a(ain ain1)
    {
        this;
        JVM INSTR monitorenter ;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("cdate", Long.valueOf(ain1.a));
        if (!TextUtils.isEmpty(ain1.b))
        {
            contentvalues.put("yesterday", ain1.b);
        }
        if (!TextUtils.isEmpty(ain1.c))
        {
            contentvalues.put("today", ain1.c);
        }
        d.insert("battery_info", null, contentvalues);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void b(ain ain1)
    {
        this;
        JVM INSTR monitorenter ;
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("cdate", Long.valueOf(ain1.a));
        contentvalues.put("yesterday", ain1.b);
        contentvalues.put("today", ain1.c);
        Exception exception;
        try
        {
            d.update("battery_info", contentvalues, "id=1", null);
        }
        catch (Exception exception1) { }
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }

    public void c(ain ain1)
    {
        this;
        JVM INSTR monitorenter ;
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("today", ain1.c);
        Exception exception;
        try
        {
            d.update("battery_info", contentvalues, "id=1", null);
        }
        catch (Exception exception1) { }
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }
}
