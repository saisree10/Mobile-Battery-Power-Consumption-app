// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.drawable.AnimationDrawable;

class pr
    implements Runnable
{

    final pq a;

    pr(pq pq1)
    {
        a = pq1;
        super();
    }

    public void run()
    {
        a.a.stop();
        a.a.start();
    }
}
