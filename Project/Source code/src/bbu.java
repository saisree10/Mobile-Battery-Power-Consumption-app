// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class bbu extends FilterOutputStream
{

    final bbt a;

    private bbu(bbt bbt1, OutputStream outputstream)
    {
        a = bbt1;
        super(outputstream);
    }

    bbu(bbt bbt1, OutputStream outputstream, bbr bbr)
    {
        this(bbt1, outputstream);
    }

    public void close()
    {
        try
        {
            out.close();
            return;
        }
        catch (IOException ioexception)
        {
            bbt.a(a, true);
        }
    }

    public void flush()
    {
        try
        {
            out.flush();
            return;
        }
        catch (IOException ioexception)
        {
            bbt.a(a, true);
        }
    }

    public void write(int i)
    {
        try
        {
            out.write(i);
            return;
        }
        catch (IOException ioexception)
        {
            bbt.a(a, true);
        }
    }

    public void write(byte abyte0[], int i, int j)
    {
        try
        {
            out.write(abyte0, i, j);
            return;
        }
        catch (IOException ioexception)
        {
            bbt.a(a, true);
        }
    }
}
