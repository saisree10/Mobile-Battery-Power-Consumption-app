// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ij
{

    public static boolean a = true;
    public static boolean b = true;
    private static final char c[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };

    public static int a(Context context, String s)
    {
        int i;
        try
        {
            i = android.provider.Settings.System.getInt(context.getContentResolver(), s);
        }
        catch (android.provider.Settings.SettingNotFoundException settingnotfoundexception)
        {
            settingnotfoundexception.printStackTrace();
            return -1;
        }
        return i;
    }

    public static String a(String s)
    {
        String s1;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.reset();
            messagedigest.update(s.getBytes());
            s1 = String.valueOf(a(messagedigest.digest()));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            return null;
        }
        return s1;
    }

    public static boolean a(Context context, String s, int i)
    {
        return android.provider.Settings.System.putInt(context.getContentResolver(), s, i);
    }

    public static char[] a(byte abyte0[])
    {
        int i = 0;
        int j = abyte0.length;
        char ac[] = new char[j << 1];
        for (int k = 0; k < j; k++)
        {
            int l = i + 1;
            ac[i] = c[(0xf0 & abyte0[k]) >>> 4];
            i = l + 1;
            ac[l] = c[0xf & abyte0[k]];
        }

        return ac;
    }

}
