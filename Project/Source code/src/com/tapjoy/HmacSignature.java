// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.net.Uri;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class HmacSignature
{

    private String _method;
    private String _secret;

    public HmacSignature(String s, String s1)
    {
        _method = s;
        _secret = s1;
    }

    private String prepareMessage(String s, Map map)
    {
        Uri uri = Uri.parse(s);
        String s1 = (new StringBuilder()).append(uri.getScheme()).append("://").append(uri.getHost()).toString();
        boolean flag;
        String s2;
        String s3;
        String s4;
        String s5;
        if (uri.getScheme().equals("http") && uri.getPort() == 80 || uri.getScheme().equals("https") && uri.getPort() == 443)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag && -1 != uri.getPort())
        {
            s1 = (new StringBuilder()).append(s1).append(":").append(uri.getPort()).toString();
        }
        s2 = s1.toLowerCase();
        s3 = (new StringBuilder()).append(s2).append(uri.getPath()).toString();
        s4 = prepareParams(map);
        s5 = (new StringBuilder()).append("POST&").append(Uri.encode(s3)).append("&").append(Uri.encode(s4)).toString();
        Log.v("HmacSignature", (new StringBuilder()).append("Base Url: ").append(s5).toString());
        return s5;
    }

    private String prepareParams(Map map)
    {
        TreeSet treeset = new TreeSet(map.keySet());
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        String s1;
        for (Iterator iterator = treeset.iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append(s).append("=").append(s1).append("&").toString()))
        {
            s = (String)iterator.next();
            s1 = (String)map.get(s);
        }

        stringbuilder.deleteCharAt(stringbuilder.lastIndexOf("&"));
        Log.v("HmacSignature", (new StringBuilder()).append("Unhashed String: ").append(stringbuilder.toString()).toString());
        return stringbuilder.toString();
    }

    public boolean matches(String s, Map map, String s1)
    {
        return sign(s, map).equals(s1);
    }

    public String sign(String s, Map map)
    {
        byte abyte0[];
        StringBuilder stringbuilder;
        int i;
        int j;
        String s1;
        String s2;
        try
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(_secret.getBytes(), _method);
            Mac mac = Mac.getInstance(_method);
            mac.init(secretkeyspec);
            abyte0 = mac.doFinal(prepareMessage(s, map).getBytes());
            stringbuilder = new StringBuilder();
            i = abyte0.length;
        }
        catch (Exception exception)
        {
            return null;
        }
        j = 0;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = Integer.toHexString(0xff & abyte0[j]);
        if (s1.length() == 1)
        {
            stringbuilder.append('0');
        }
        stringbuilder.append(s1);
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_67;
_L1:
        s2 = stringbuilder.toString();
        return s2;
    }
}
