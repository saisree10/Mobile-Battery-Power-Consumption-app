// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.TimeoutException;

public abstract class anp
{

    final String a[];
    boolean b;
    int c;
    int d;
    int e;
    anr f;

    public transient anp(String as[])
    {
        b = false;
        e = 25000;
        f = null;
        a = as;
    }

    public String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < a.length; i++)
        {
            stringbuilder.append((new StringBuilder()).append(a[i]).append(" 2>&1").toString());
            stringbuilder.append('\n');
        }

        azt.a("Command", (new StringBuilder()).append("Sending command(s): ").append(stringbuilder.toString()).toString());
        return stringbuilder.toString();
    }

    public void a(int i)
    {
        azt.a("Command", (new StringBuilder()).append("ID: ").append(d).append(", ExitCode: ").append(i).toString());
        a(d, i);
    }

    public abstract void a(int i, int j);

    public abstract void a(int i, String s);

    public void a(anr anr1, int i)
    {
        f = anr1;
        d = i;
    }

    public void a(OutputStream outputstream)
    {
        outputstream.write(a().getBytes());
    }

    public void a(String s)
    {
        azt.a("Command", (new StringBuilder()).append("ID: ").append(d).append(", Output: ").append(s).toString());
        a(d, s);
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
_L4:
        boolean flag = b;
        if (flag)
        {
            break; /* Loop/switch isn't completed */
        }
        wait(e);
_L2:
        if (!b)
        {
            b = true;
            b("Timeout");
            throw new TimeoutException("Timeout has occurred.");
        }
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        azt.b("Command", "InterruptedException in waitForFinish()", interruptedexception);
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        a(c);
        this;
        JVM INSTR monitorexit ;
    }

    public void b(int i)
    {
        azt.a("Command", (new StringBuilder()).append("Command ").append(i).append(" finished.").toString());
    }

    public void b(String s)
    {
        try
        {
            f.close();
            azt.a("Command", "Terminating the shell.");
            c(s);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public void c(int i)
    {
        this;
        JVM INSTR monitorenter ;
        c = i;
        b = true;
        b(d);
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(String s)
    {
        c(-1);
        azt.a("Command", (new StringBuilder()).append("Command ").append(d).append(" did not finish, because of ").append(s).toString());
    }
}
