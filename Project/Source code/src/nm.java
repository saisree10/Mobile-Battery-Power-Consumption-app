// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Looper;

public class nm
{

    public static void a()
    {
        if (android.os.Build.VERSION.SDK_INT > 10)
        {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            throw new IllegalThreadStateException("This method must be invoked on the UI thread.");
        } else
        {
            new nn();
            return;
        }
    }
}
