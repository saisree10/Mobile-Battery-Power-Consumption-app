// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.Toast;
import com.dianxinos.acomponent.ui.ADMainActivity;

class hw
    implements Runnable
{

    final hv a;

    hw(hv hv1)
    {
        a = hv1;
        super();
    }

    public void run()
    {
        ADMainActivity admainactivity = a.a;
        ADMainActivity admainactivity1 = a.a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Toast.makeText(admainactivity, admainactivity1.getString(0x7f0a0046), 0).show();
    }
}
