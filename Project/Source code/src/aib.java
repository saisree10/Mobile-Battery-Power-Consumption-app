// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;

public class aib extends ahp
{

    private ContentResolver a;
    private aic h;

    public aib(Context context)
    {
        super(context);
        a = context.getContentResolver();
        h = new aic(this, new Handler());
        f = false;
    }

    static ContentResolver a(aib aib1)
    {
        return aib1.a;
    }

    public void a(ahq ahq)
    {
        h.a();
        e = ahq;
    }

    public void a(boolean flag)
    {
        ContentResolver contentresolver = a;
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        android.provider.Settings.System.putInt(contentresolver, "accelerometer_rotation", i);
    }

    public boolean a()
    {
        boolean flag = true;
        if (android.provider.Settings.System.getInt(a, "accelerometer_rotation", 0) != flag)
        {
            flag = false;
        }
        g = flag;
        return g;
    }

    public String toString()
    {
        return "RotationCommand ";
    }
}
