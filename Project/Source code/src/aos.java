// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import com.dianxinos.powermanager.settings.view.GpsSwitchView;
import com.dianxinos.powermanager.settings.view.MobileDataSwitchView;

public class aos extends auu
{

    private LayoutInflater c;
    private GpsSwitchView d;
    private MobileDataSwitchView e;

    public aos(Activity activity)
    {
        super(activity);
        j();
        i();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        setTitle(0x7f0a01d2);
        c = LayoutInflater.from(activity);
        LayoutInflater layoutinflater = c;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        View view = layoutinflater.inflate(0x7f030059, null);
        g();
        a(view);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        d = (GpsSwitchView)view.findViewById(0x7f070173);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        e = (MobileDataSwitchView)view.findViewById(0x7f070172);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        dismiss();
        return true;
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag)
        {
            d.a();
            e.a();
        }
    }
}
