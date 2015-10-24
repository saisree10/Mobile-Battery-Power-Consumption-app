// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

class bbx
    implements Closeable
{

    private final InputStream a;
    private final Charset b;
    private byte c[];
    private int d;
    private int e;

    public bbx(InputStream inputstream, int i, Charset charset)
    {
        if (inputstream == null || charset == null)
        {
            throw new NullPointerException();
        }
        if (i < 0)
        {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(bbz.a))
        {
            throw new IllegalArgumentException("Unsupported encoding");
        } else
        {
            a = inputstream;
            b = charset;
            c = new byte[i];
            return;
        }
    }

    public bbx(InputStream inputstream, Charset charset)
    {
        this(inputstream, 8192, charset);
    }

    static Charset a(bbx bbx1)
    {
        return bbx1.b;
    }

    private void b()
    {
        int i = a.read(c, 0, c.length);
        if (i == -1)
        {
            throw new EOFException();
        } else
        {
            d = 0;
            e = i;
            return;
        }
    }

    public String a()
    {
        InputStream inputstream = a;
        inputstream;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            throw new IOException("LineReader is closed");
        }
        break MISSING_BLOCK_LABEL_29;
        Exception exception;
        exception;
        inputstream;
        JVM INSTR monitorexit ;
        throw exception;
        int i;
        if (d >= e)
        {
            b();
        }
        i = d;
_L9:
        if (i == e) goto _L2; else goto _L1
_L1:
        if (c[i] != 10)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        bby bby1;
        int j;
        String s;
        int k;
        String s1;
        if (i != d && c[i - 1] == 13)
        {
            k = i - 1;
        } else
        {
            k = i;
        }
        s1 = new String(c, d, k - d, b.name());
        d = i + 1;
        inputstream;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        bby1 = new bby(this, 80 + (e - d));
_L8:
        bby1.write(c, d, e - d);
        e = -1;
        b();
        j = d;
_L6:
        if (j == e)
        {
            break; /* Loop/switch isn't completed */
        }
        if (c[j] != 10) goto _L4; else goto _L3
_L3:
        if (j != d)
        {
            bby1.write(c, d, j - d);
        }
        d = j + 1;
        s = bby1.toString();
        inputstream;
        JVM INSTR monitorexit ;
        return s;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        i++;
          goto _L9
    }

    public void close()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c = null;
                a.close();
            }
        }
        return;
        exception;
        inputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
