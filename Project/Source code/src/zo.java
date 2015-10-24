// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class zo
{

    private static SimpleDateFormat a = null;
    private static SimpleDateFormat b = null;

    public static String a(long l)
    {
        return a().format(new Date(l));
    }

    public static String a(Context context, long l)
    {
        String as[] = (new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault())).format(new Date(l)).split("-");
        int ai[] = new int[3];
        for (int i = 0; i < as.length; i++)
        {
            ai[i] = Integer.parseInt(as[i]);
        }

        String as1[] = (new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault())).format(Calendar.getInstance().getTime()).split("-");
        int ai1[] = new int[3];
        for (int j = 0; j < as1.length; j++)
        {
            ai1[j] = Integer.parseInt(as1[j]);
        }

        if (ai1[0] - ai[0] < 0 || ai1[1] - ai[1] < 0 || ai1[2] - ai[2] < 0)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context.getString(0x7f0a02f5);
        }
        if (ai1[0] - ai[0] > 0)
        {
            return (new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault())).format(new Date(l));
        }
        if (ai1[1] - ai[1] == 0)
        {
            if (ai1[2] - ai[2] == 0)
            {
                String s = (new SimpleDateFormat("KK:mm a", Locale.getDefault())).format(new Date(l));
                StringBuilder stringbuilder = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                return stringbuilder.append(context.getString(0x7f0a02f3)).append(" ").append(s).toString();
            }
            if (ai1[2] - ai[2] == 1)
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                return context.getString(0x7f0a02f4);
            } else
            {
                return (new SimpleDateFormat("MM/dd", Locale.getDefault())).format(new Date(l));
            }
        } else
        {
            return (new SimpleDateFormat("MM/dd", Locale.getDefault())).format(new Date(l));
        }
    }

    public static SimpleDateFormat a()
    {
        if (a == null)
        {
            a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        }
        return a;
    }

}
