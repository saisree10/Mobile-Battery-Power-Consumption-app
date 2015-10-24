// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public final class zm
{

    private static final String a[] = {
        "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq", "/sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq"
    };
    private static final String b[] = {
        "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq", "/sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq"
    };
    private static int c[] = null;

    private static BufferedReader a(String s)
    {
        if (!(new File(s)).exists())
        {
            return null;
        } else
        {
            return new BufferedReader(new FileReader(s));
        }
    }

    public static zn a()
    {
        BufferedReader bufferedreader1 = a("/proc/stat");
        Exception exception1;
        Exception exception3;
label0:
        {
            {
                BufferedReader bufferedreader = bufferedreader1;
                if (bufferedreader != null)
                {
                    break label0;
                }
                Exception exception;
                Exception exception4;
                String s;
                String as[];
                zn zn1;
                Exception exception6;
                if (bufferedreader != null)
                {
                    try
                    {
                        bufferedreader.close();
                    }
                    catch (Exception exception7)
                    {
                        return null;
                    }
                }
            }
            return null;
        }
_L2:
        s = bufferedreader.readLine();
        if (s == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        as = s.split("\\s+");
        if (as.length <= 4 || !as[0].equals("cpu")) goto _L2; else goto _L1
_L1:
        zn1 = new zn();
        zn1.a = zy.a(as[1], 0L);
        zn1.b = zy.a(as[2], 0L);
        zn1.c = zy.a(as[3], 0L);
        zn1.d = zy.a(as[4], 0L);
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (Exception exception5) { }
        }
        return zn1;
        if (bufferedreader == null) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_139;
_L4:
        break MISSING_BLOCK_LABEL_22;
        try
        {
            bufferedreader.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception6)
        {
            return null;
        }
        return null;
        exception3;
        bufferedreader = null;
_L8:
        exception3.printStackTrace();
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception4)
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_22;
        }
        exception;
        bufferedreader = null;
        exception1 = exception;
_L6:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (Exception exception2) { }
        }
        throw exception1;
        exception1;
        if (true) goto _L6; else goto _L5
_L5:
        exception3;
        if (true) goto _L8; else goto _L7
_L7:
    }

}
