// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class bbh extends FilterOutputStream
{

    final bbg a;

    private bbh(bbg bbg1, OutputStream outputstream)
    {
        a = bbg1;
        super(outputstream);
    }

    bbh(bbg bbg1, OutputStream outputstream, bbf bbf)
    {
        this(bbg1, outputstream);
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
            bbg.a(a, true);
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
            bbg.a(a, true);
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
            bbg.a(a, true);
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
            bbg.a(a, true);
        }
    }
}
