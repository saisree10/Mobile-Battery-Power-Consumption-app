// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class fa
{

    private static final fd a;
    private final Object b;

    public fa(Object obj)
    {
        b = obj;
    }

    public static fa a()
    {
        return new fa(a.a());
    }

    public void a(int i)
    {
        a.b(b, i);
    }

    public void a(boolean flag)
    {
        a.a(b, flag);
    }

    public void b(int i)
    {
        a.a(b, i);
    }

    public void c(int i)
    {
        a.c(b, i);
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        fa fa1;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        fa1 = (fa)obj;
        if (b != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (fa1.b == null) goto _L1; else goto _L3
_L3:
        return false;
        if (b.equals(fa1.b)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.hashCode();
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new fe();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            a = new fc();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new fb();
        } else
        {
            a = new ff();
        }
    }
}
