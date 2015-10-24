// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.util;

import android.os.Bundle;

public class Utils
{

    private static final String CHAR_SET = "ISO-8859-1";

    public Utils()
    {
    }

    public static String byteToHex(byte byte0)
    {
        char ac[] = {
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
            'a', 'b', 'c', 'd', 'e', 'f'
        };
        char ac1[] = new char[2];
        ac1[0] = ac[0xf & byte0 >> 4];
        ac1[1] = ac[byte0 & 0xf];
        return new String(ac1);
    }

    public static String convert(String s)
    {
        byte abyte0[];
        StringBuffer stringbuffer;
        int i;
        String s1;
        try
        {
            abyte0 = s.getBytes();
            stringbuffer = new StringBuffer();
        }
        catch (Exception exception)
        {
            return null;
        }
        i = 0;
        if (i >= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        if ((0x80 & abyte0[i]) > 0)
        {
            stringbuffer.append((new StringBuilder()).append("%").append(byteToHex(abyte0[i])).toString());
            break MISSING_BLOCK_LABEL_101;
        }
        stringbuffer.append((char)abyte0[i]);
        break MISSING_BLOCK_LABEL_101;
        s1 = new String(stringbuffer.toString().getBytes(), "ISO-8859-1");
        return s1;
        for (i++; false; i++)
        {
        }

        break MISSING_BLOCK_LABEL_16;
    }

    public static String getData(String s, Bundle bundle)
    {
        return bundle.getString(s);
    }
}
