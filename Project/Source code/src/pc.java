// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

final class pc
    implements Runnable
{

    final Context a;

    pc(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        nl.a(a).c();
        pa.a(pa.a(a), false);
    }
}
