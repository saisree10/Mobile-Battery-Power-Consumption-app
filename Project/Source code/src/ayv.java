// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.HandlerThread;

public final class ayv
{

    private static final HandlerThread a;
    private static final Handler b;

    public static void a(Runnable runnable)
    {
        b.post(runnable);
    }

    public static void a(Runnable runnable, long l)
    {
        b.postDelayed(runnable, l);
    }

    static 
    {
        a = new HandlerThread("AsyncHandler");
        a.start();
        b = new Handler(a.getLooper());
    }
}
