// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

public class bdl
{

    private static IllegalStateException a(String s, UnsupportedEncodingException unsupportedencodingexception)
    {
        return new IllegalStateException((new StringBuilder()).append(s).append(": ").append(unsupportedencodingexception).toString());
    }

    public static String a(byte abyte0[])
    {
        return a(abyte0, "UTF-8");
    }

    public static String a(byte abyte0[], String s)
    {
        if (abyte0 == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = new String(abyte0, s);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw a(s, unsupportedencodingexception);
        }
        return s1;
    }
}
