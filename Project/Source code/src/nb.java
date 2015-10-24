// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;

class nb extends mn
{

    final my a;
    private nc b;

    public nb(my my1, nc nc1)
    {
        a = my1;
        super();
        b = nc1;
    }

    public void a(int i, long l)
    {
        my.b("onDownloadFailed");
        synchronized (my.a(a))
        {
            my.a(a).remove(b.e);
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(long l)
    {
        my.b("onDownloadSucceed");
        my.a(a, b, l);
        a.c(b);
        synchronized (my.a(a))
        {
            my.a(a).remove(b.e);
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, int i, long l, long l1)
    {
        my.b("onDownloadProgressUpdate");
        my.a(a, b, l);
    }

    public void b(long l)
    {
        my.b("onDownloadCanceled");
        synchronized (my.a(a))
        {
            my.a(a).remove(b.e);
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
