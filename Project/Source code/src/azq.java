// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.Locale;

public class azq
{

    public static String a(Context context, int i)
    {
        int j;
        int k;
        int l;
        String s;
        String s1;
        String s2;
        StringBuilder stringbuilder;
        if (i > 3600)
        {
            int i1 = i / 3600;
            j = i - i1 * 3600;
            k = i1;
        } else
        {
            j = i;
            k = 0;
        }
        if (j >= 60)
        {
            l = j / 60;
            j -= l * 60;
        } else
        {
            l = 0;
        }
        s = Integer.toString(k);
        s1 = Integer.toString(l);
        s2 = Integer.toString(j);
        stringbuilder = new StringBuilder();
        if (k > 0)
        {
            if (l == 0)
            {
                stringbuilder.append(s);
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                stringbuilder.append(context.getString(0x7f0a0231));
            } else
            {
                stringbuilder.append(s);
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                stringbuilder.append(context.getString(0x7f0a0231));
                stringbuilder.append(s1);
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                stringbuilder.append(context.getString(0x7f0a0232));
            }
        } else
        if (l > 0)
        {
            stringbuilder.append(s1);
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            stringbuilder.append(context.getString(0x7f0a0232));
        } else
        {
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            stringbuilder.append(context.getString(0x7f0a0089, new Object[] {
                s2
            }));
        }
        return stringbuilder.toString();
    }

    public static String a(Context context, long l)
    {
        if (l > 0xf4240L)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = Float.valueOf((float)(l / 1000L) / 1000F);
            return a("%.2f MB", aobj2);
        }
        if (l > 1024L)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Float.valueOf((float)(l / 10L) / 100F);
            return a("%.2f KB", aobj1);
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf((int)l);
            return a("%d B", aobj);
        }
    }

    public static transient String a(String s, Object aobj[])
    {
        return String.format(Locale.ENGLISH, s, aobj);
    }

    public static String b(Context context, int i)
    {
        int j;
        int k;
        int l;
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        StringBuilder stringbuilder;
        if (i > 3600)
        {
            int i1 = i / 3600;
            j = i - i1 * 3600;
            k = i1;
        } else
        {
            j = i;
            k = 0;
        }
        if (j >= 60)
        {
            l = j / 60;
            j -= l * 60;
        } else
        {
            l = 0;
        }
        s = Integer.toString(k);
        s1 = Integer.toString(l);
        s2 = Integer.toString(j);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        s3 = context.getString(0x7f0a0231);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        s4 = context.getString(0x7f0a0232);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        s5 = context.getString(0x7f0a0089);
        stringbuilder = new StringBuilder();
        if (k > 0)
        {
            if (l == 0)
            {
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                stringbuilder.append(context.getString(0x7f0a0367, new Object[] {
                    s, s3
                }));
            } else
            {
                com.dianxinos.dxbs.R.string _tmp4 = ly.i;
                stringbuilder.append(context.getString(0x7f0a0367, new Object[] {
                    s, s3
                }));
                stringbuilder.append(" ");
                com.dianxinos.dxbs.R.string _tmp5 = ly.i;
                stringbuilder.append(context.getString(0x7f0a0367, new Object[] {
                    s1, s4
                }));
            }
        } else
        if (l > 0)
        {
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            stringbuilder.append(context.getString(0x7f0a0367, new Object[] {
                s1, s4
            }));
        } else
        {
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            stringbuilder.append(context.getString(0x7f0a0367, new Object[] {
                s2, s5
            }));
        }
        return stringbuilder.toString();
    }

    public static String c(Context context, int i)
    {
        return a(context, i);
    }

    public static String d(Context context, int i)
    {
        int j;
        int k;
        int l;
        String s;
        String s1;
        String s2;
        StringBuilder stringbuilder;
        if (i > 3600)
        {
            int i1 = i / 3600;
            j = i - i1 * 3600;
            k = i1;
        } else
        {
            j = i;
            k = 0;
        }
        if (j >= 60)
        {
            l = j / 60;
            j -= l * 60;
        } else
        {
            l = 0;
        }
        s = Integer.toString(k);
        s1 = Integer.toString(l);
        s2 = Integer.toString(j);
        stringbuilder = new StringBuilder();
        if (k > 0)
        {
            if (l == 0)
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                stringbuilder.append(context.getString(0x7f0a0086, new Object[] {
                    s
                }));
            } else
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                stringbuilder.append(context.getString(0x7f0a0084, new Object[] {
                    s, s1
                }));
            }
        } else
        if (l > 0)
        {
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            stringbuilder.append(context.getString(0x7f0a0088, new Object[] {
                s1
            }));
        } else
        {
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            stringbuilder.append(context.getString(0x7f0a008a, new Object[] {
                s2
            }));
        }
        return stringbuilder.toString();
    }
}
