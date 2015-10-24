// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Message;

class ajl
    implements Runnable
{

    final ajk a;

    ajl(ajk ajk1)
    {
        a = ajk1;
        super();
    }

    public void run()
    {
        a.b();
        Message.obtain(a.d, 10, a).sendToTarget();
    }
}
