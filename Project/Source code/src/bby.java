// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class bby extends ByteArrayOutputStream
{

    final bbx a;

    bby(bbx bbx1, int i)
    {
        a = bbx1;
        super(i);
    }

    public String toString()
    {
        int i;
        String s;
        if (count > 0 && buf[-1 + count] == 13)
        {
            i = -1 + count;
        } else
        {
            i = count;
        }
        try
        {
            s = new String(buf, 0, i, bbx.a(a).name());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
    }
}
