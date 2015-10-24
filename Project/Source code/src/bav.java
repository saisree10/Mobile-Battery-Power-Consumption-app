// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class bav extends bbd
{

    final bat a;

    bav(bat bat1)
    {
        a = bat1;
        super(null);
    }

    public Object call()
    {
        bat.a(a).set(true);
        Process.setThreadPriority(10);
        return bat.a(a, a.a(b));
    }
}
