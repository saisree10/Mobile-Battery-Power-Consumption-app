// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class bey
{

    private final int a;
    protected final byte b = 61;
    protected final int c;
    protected byte d[];
    protected int e;
    protected boolean f;
    protected int g;
    protected int h;
    private final int i;
    private final int j;
    private int k;

    protected bey(int l, int i1, int j1, int k1)
    {
        a = l;
        i = i1;
        int l1;
        if (j1 > 0 && k1 > 0)
        {
            l1 = i1 * (j1 / i1);
        } else
        {
            l1 = 0;
        }
        c = l1;
        j = k1;
    }

    private void c()
    {
        if (d == null)
        {
            d = new byte[b()];
            e = 0;
            k = 0;
            return;
        } else
        {
            byte abyte0[] = new byte[2 * d.length];
            System.arraycopy(d, 0, abyte0, 0, d.length);
            d = abyte0;
            return;
        }
    }

    private void d()
    {
        d = null;
        e = 0;
        k = 0;
        g = 0;
        h = 0;
        f = false;
    }

    int a()
    {
        if (d != null)
        {
            return e - k;
        } else
        {
            return 0;
        }
    }

    protected void a(int l)
    {
        if (d == null || d.length < l + e)
        {
            c();
        }
    }

    abstract void a(byte abyte0[], int l, int i1);

    protected abstract boolean a(byte byte0);

    protected int b()
    {
        return 8192;
    }

    abstract void b(byte abyte0[], int l, int i1);

    int c(byte abyte0[], int l, int i1)
    {
        if (d != null)
        {
            int j1 = Math.min(a(), i1);
            System.arraycopy(d, k, abyte0, l, j1);
            k = j1 + k;
            if (k >= e)
            {
                d = null;
            }
            return j1;
        }
        return !f ? 0 : -1;
    }

    public byte[] c(byte abyte0[])
    {
        d();
        if (abyte0 == null || abyte0.length == 0)
        {
            return abyte0;
        } else
        {
            b(abyte0, 0, abyte0.length);
            b(abyte0, 0, -1);
            byte abyte1[] = new byte[e];
            c(abyte1, 0, abyte1.length);
            return abyte1;
        }
    }

    public byte[] d(byte abyte0[])
    {
        d();
        if (abyte0 == null || abyte0.length == 0)
        {
            return abyte0;
        } else
        {
            a(abyte0, 0, abyte0.length);
            a(abyte0, 0, -1);
            byte abyte1[] = new byte[e - k];
            c(abyte1, 0, abyte1.length);
            return abyte1;
        }
    }

    protected boolean e(byte abyte0[])
    {
        if (abyte0 != null)
        {
            int l = 0;
            while (l < abyte0.length) 
            {
                if (61 == abyte0[l] || a(abyte0[l]))
                {
                    return true;
                }
                l++;
            }
        }
        return false;
    }

    public long f(byte abyte0[])
    {
        long l = (long)((-1 + (abyte0.length + a)) / a) * (long)i;
        if (c > 0)
        {
            l += (((l + (long)c) - 1L) / (long)c) * (long)j;
        }
        return l;
    }
}
