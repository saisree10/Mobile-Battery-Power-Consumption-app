// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class agm
{

    private static agm b;
    agn a;
    private Context c;
    private SQLiteDatabase d;

    public agm(Context context)
    {
        c = context;
        a = new agn(this, c);
        d = a.getWritableDatabase();
    }

    public static agm a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        agm;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new agm(context);
        }
        agm;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        agm;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
