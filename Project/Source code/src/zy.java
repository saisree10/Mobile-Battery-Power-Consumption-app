// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class zy
{

    public static int a(String s, int i)
    {
        int j = s.length();
        int k = 0;
        do
        {
label0:
            {
                if (k < j)
                {
                    char c = s.charAt(k);
                    if (c < '0' || c > '9')
                    {
                        break label0;
                    }
                    int l = k + 1;
                    do
                    {
                        if (l >= j)
                        {
                            break;
                        }
                        char c1 = s.charAt(l);
                        if (c1 < '0' || c1 > '9')
                        {
                            break;
                        }
                        l++;
                    } while (true);
                    i = Integer.parseInt(s.substring(k, l));
                }
                return i;
            }
            k++;
        } while (true);
    }

    public static long a(String s, long l)
    {
        long l1;
        try
        {
            l1 = Long.parseLong(s);
        }
        catch (Exception exception)
        {
            return l;
        }
        return l1;
    }

    public static String a(String s)
    {
        int i = s.length();
        int j;
        for (j = 0; j < i && (s.charAt(j) <= ' ' || s.charAt(j) == '\240'); j++) { }
        if (j > 0)
        {
            s = s.substring(j);
        }
        return s;
    }

    public static int b(String s, int i)
    {
        int j;
        try
        {
            j = Integer.parseInt(s);
        }
        catch (Exception exception)
        {
            return i;
        }
        return j;
    }
}
