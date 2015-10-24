// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.File;
import java.io.IOException;

class bbl
    implements Runnable
{

    final bbk a;

    bbl(bbk bbk1)
    {
        a = bbk1;
        super();
    }

    public void run()
    {
        Object obj = bbk.a(a);
        obj;
        JVM INSTR monitorenter ;
        bbk.a(a, "init disk cache");
        bbk.a(a, bbe.a(new File(bbk.b(a).getCacheDir(), "skinimage"), 1, 1, 0x100000L));
_L1:
        a.a = true;
        bbk.a(a).notifyAll();
        return;
        IOException ioexception;
        ioexception;
        bbk.a(a, ioexception.getMessage());
        ioexception.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
