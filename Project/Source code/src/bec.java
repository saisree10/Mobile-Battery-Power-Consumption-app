// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class bec
    implements Serializable
{

    private List a;

    public bec()
    {
        a = new ArrayList();
    }

    public bed a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        bed bed1 = (bed)a.get(i);
        this;
        JVM INSTR monitorexit ;
        return bed1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        a.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(bed bed1)
    {
        this;
        JVM INSTR monitorenter ;
        a.add(bed1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int b()
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public bed[] c()
    {
        this;
        JVM INSTR monitorenter ;
        bed abed[] = (bed[])a.toArray(new bed[0]);
        this;
        JVM INSTR monitorexit ;
        return abed;
        Exception exception;
        exception;
        throw exception;
    }
}
