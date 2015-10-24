// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.Context;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aze
{

    private static final char a[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };

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

    public static ArrayList a(Context context)
    {
        ArrayList arraylist = new ArrayList();
        List list = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses();
        if (list == null)
        {
            return arraylist;
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            String as[] = runningappprocessinfo.pkgList;
            String s;
            if (as == null || as.length == 0)
            {
                s = runningappprocessinfo.processName;
            } else
            {
                s = runningappprocessinfo.pkgList[0];
            }
            try
            {
                acn acn1 = acq.e(s);
                if ((azy.c(s) || runningappprocessinfo.importance >= 300 && !acn1.c && !azy.a(s, context)) && !arraylist.contains(s))
                {
                    arraylist.add(s);
                }
            }
            catch (Exception exception) { }
        } while (true);
        return arraylist;
    }

    public static char[] a(byte abyte0[])
    {
        int i = 0;
        int j = abyte0.length;
        char ac[] = new char[j << 1];
        for (int k = 0; k < j; k++)
        {
            int l = i + 1;
            ac[i] = a[(0xf0 & abyte0[k]) >>> 4];
            i = l + 1;
            ac[l] = a[0xf & abyte0[k]];
        }

        return ac;
    }

}
