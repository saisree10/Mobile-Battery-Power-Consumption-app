// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class atz
{

    public static final String a[] = {
        "start_level", "end_level", "data", "type", "count"
    };
    public static final String b[] = {
        "level", "data", "type"
    };
    private static atz f;
    private static byte g[] = new byte[0];
    private static final Object h = new Object();
    private Context c;
    private aua d;
    private SQLiteDatabase e;

    private atz(Context context)
    {
        c = context;
        d = new aua(this, c);
        e = d.getWritableDatabase();
    }

    public static atz a(Context context)
    {
        if (f == null)
        {
            synchronized (g)
            {
                if (f == null)
                {
                    f = new atz(context);
                }
            }
        }
        return f;
        exception;
        abyte0;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
