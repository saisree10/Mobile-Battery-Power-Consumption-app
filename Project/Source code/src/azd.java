// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.SparseIntArray;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class azd
{

    private static SparseIntArray a = new SparseIntArray();
    private static String b[];

    public static SparseIntArray a()
    {
        FileReader filereader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state");
        BufferedReader bufferedreader = new BufferedReader(filereader);
        a.clear();
_L3:
        String s = bufferedreader.readLine();
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[] = s.split("\\s+");
        a.append(Integer.parseInt(as[0]), Integer.parseInt(as[1]));
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L10:
        filenotfoundexception.printStackTrace();
        IOException ioexception7;
        IOException ioexception8;
        if (filereader != null)
        {
            try
            {
                filereader.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception5)
            {
                ioexception5.printStackTrace();
                return null;
            }
        }
_L5:
        return null;
_L2:
        if (filereader != null)
        {
            try
            {
                filereader.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception8)
            {
                ioexception8.printStackTrace();
            }
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception7)
            {
                ioexception7.printStackTrace();
            }
        }
        return a;
        IOException ioexception;
        ioexception;
        bufferedreader = null;
        filereader = null;
_L8:
        ioexception.printStackTrace();
        if (filereader != null)
        {
            try
            {
                filereader.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        }
        if (bufferedreader == null) goto _L5; else goto _L4
_L4:
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
            return null;
        }
        return null;
        Exception exception2;
        exception2;
        Exception exception;
        bufferedreader = null;
        filereader = null;
        exception = exception2;
_L7:
        if (filereader != null)
        {
            try
            {
                filereader.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        throw exception;
        Exception exception1;
        exception1;
        exception = exception1;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception;
        bufferedreader = null;
          goto _L8
        ioexception;
          goto _L8
        filenotfoundexception;
        bufferedreader = null;
        filereader = null;
        continue; /* Loop/switch isn't completed */
        filenotfoundexception;
        bufferedreader = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static String b()
    {
        int i;
label0:
        {
            if (a != null)
            {
                i = a.size();
                if (i != 0)
                {
                    break label0;
                }
            }
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int j = 0; j < i; j++)
        {
            int k = a.keyAt(j);
            stringbuilder.append(k);
            stringbuilder.append(",");
            stringbuilder.append(10 * a.get(k));
            if (j != i - 1)
            {
                stringbuilder.append(",");
            }
        }

        return stringbuilder.toString();
    }

    public static void c()
    {
        FileReader filereader = null;
        FileReader filereader1 = new FileReader("/proc/stat");
        BufferedReader bufferedreader = new BufferedReader(filereader1);
        String as[];
        String as1[];
        as = bufferedreader.readLine().split("\\s+");
        as1 = new String[-1 + as.length];
        int i = 1;
_L2:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        as1[i - 1] = String.valueOf(10 * Integer.parseInt(as[i]));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        b = as1;
        if (filereader1 != null)
        {
            try
            {
                filereader1.close();
            }
            catch (IOException ioexception8)
            {
                ioexception8.printStackTrace();
            }
        }
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        bufferedreader.close();
_L4:
        return;
        IOException ioexception7;
        ioexception7;
        ioexception7.printStackTrace();
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        bufferedreader = null;
_L9:
        filenotfoundexception.printStackTrace();
        if (filereader != null)
        {
            try
            {
                filereader.close();
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        }
        if (bufferedreader == null) goto _L4; else goto _L3
_L3:
        try
        {
            bufferedreader.close();
            return;
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return;
        IOException ioexception4;
        ioexception4;
        bufferedreader = null;
        filereader1 = null;
_L8:
        ioexception4.printStackTrace();
        if (filereader1 != null)
        {
            try
            {
                filereader1.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
        }
        if (bufferedreader == null) goto _L4; else goto _L5
_L5:
        try
        {
            bufferedreader.close();
            return;
        }
        catch (IOException ioexception5)
        {
            ioexception5.printStackTrace();
        }
        return;
        Exception exception;
        exception;
        bufferedreader = null;
        filereader1 = null;
_L7:
        if (filereader1 != null)
        {
            try
            {
                filereader1.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        filereader1 = filereader;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception4;
        bufferedreader = null;
          goto _L8
        ioexception4;
          goto _L8
        filenotfoundexception;
        filereader = filereader1;
        bufferedreader = null;
          goto _L9
        filenotfoundexception;
        filereader = filereader1;
          goto _L9
    }

    public static String d()
    {
        if (b == null || b.length == 0)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        int i = b.length;
        for (int j = 1; j < i; j++)
        {
            stringbuilder.append(b[j]);
            if (j != i - 1)
            {
                stringbuilder.append(",");
            }
        }

        return stringbuilder.toString();
    }

}
