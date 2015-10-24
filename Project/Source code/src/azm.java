// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;

public class azm
{

    private static volatile azm a = null;

    private azm()
    {
    }

    public static azm a()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        azm;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new azm();
        }
        azm;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        azm;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(String s)
    {
        if (!b(s));
        return false;
    }

    public boolean b(String s)
    {
        boolean flag;
        boolean flag1;
        try
        {
            flag = (new File(s)).exists();
        }
        catch (Exception exception)
        {
            return false;
        }
        flag1 = false;
        if (flag)
        {
            flag1 = true;
        }
        return flag1;
    }

}
