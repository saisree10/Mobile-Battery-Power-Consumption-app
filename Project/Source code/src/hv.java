// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import com.dianxinos.acomponent.ui.ADMainActivity;

public class hv
    implements hk
{

    final ADMainActivity a;

    public hv(ADMainActivity admainactivity)
    {
        a = admainactivity;
        super();
    }

    public void a(int i)
    {
        if (3 == i)
        {
            ADMainActivity.a(a).post(new hw(this));
        }
        if (4 == i)
        {
            ADMainActivity.a(a).post(new hx(this));
        }
    }
}
