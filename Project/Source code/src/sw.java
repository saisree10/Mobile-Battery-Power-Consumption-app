// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.math.BigDecimal;
import java.math.BigInteger;
import org.json.JSONObject;

public class sw
{

    public static int a(int i, Object obj)
    {
        int j;
        j = 1;
        if (j == i && !(obj instanceof JSONObject) && !(obj instanceof Number))
        {
            return -1;
        }
        if (!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        j = 8;
_L4:
        return j;
_L2:
        if (obj instanceof byte[])
        {
            j = 10;
        } else
        if (obj instanceof JSONObject)
        {
            j = 9;
        } else
        if (obj instanceof Byte)
        {
            j = 0;
        } else
        if (!(obj instanceof Short))
        {
            if (obj instanceof Integer)
            {
                j = 2;
            } else
            if (obj instanceof Long)
            {
                j = 3;
            } else
            if (obj instanceof Float)
            {
                j = 4;
            } else
            if (obj instanceof Double)
            {
                j = 5;
            } else
            if (obj instanceof BigInteger)
            {
                j = 6;
            } else
            if (obj instanceof BigDecimal)
            {
                j = 7;
            } else
            {
                j = -1;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static boolean a(int i)
    {
        return i == 0 || 1 == i || 2 == i || 3 == i || 4 == i || 5 == i || 6 == i || 7 == i || 8 == i || 9 == i || 10 == i;
    }
}
