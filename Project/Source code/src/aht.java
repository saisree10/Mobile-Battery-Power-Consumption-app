// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;

public class aht extends ahp
{

    private ContentResolver a;
    private ahq h;
    private ahu i;

    public aht(Context context)
    {
        super(context);
        f = azw.g;
        if (!f)
        {
            return;
        } else
        {
            a = context.getContentResolver();
            i = new ahu(this, new Handler());
            return;
        }
    }

    static ContentResolver a(aht aht1)
    {
        return aht1.a;
    }

    static ahq b(aht aht1)
    {
        return aht1.h;
    }

    public void a(ahq ahq)
    {
        if (!f)
        {
            return;
        } else
        {
            i.a();
            h = ahq;
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        }
        ContentResolver contentresolver = a;
        int j;
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        android.provider.Settings.System.putInt(contentresolver, "haptic_feedback_enabled", j);
    }

    public boolean a()
    {
        boolean flag = true;
        if (!f)
        {
            return false;
        }
        if (android.provider.Settings.System.getInt(a, "haptic_feedback_enabled", 0) != flag)
        {
            flag = false;
        }
        g = flag;
        return g;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c9);
    }

    public String toString()
    {
        return "HapticFeedbackCommand ";
    }
}
