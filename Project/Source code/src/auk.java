// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import com.dianxinos.powermanager.settings.view.MobileDataSwitchView;
import com.dianxinos.powermanager.settings.view.WlanSwitchView;

public class auk extends auu
{

    private Activity c;
    private LayoutInflater d;
    private WlanSwitchView e;
    private MobileDataSwitchView f;

    public auk(Activity activity)
    {
        super(activity);
        c = activity;
        j();
        i();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        setTitle(0x7f0a0034);
        d = LayoutInflater.from(activity);
        LayoutInflater layoutinflater = d;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        View view = layoutinflater.inflate(0x7f030056, null);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        e = (WlanSwitchView)view.findViewById(0x7f07016b);
        e.setOnClickListener(new aul(this));
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        f = (MobileDataSwitchView)view.findViewById(0x7f07016c);
        f.setOnClickListener(new aum(this));
        g();
        a(view);
    }

    static WlanSwitchView a(auk auk1)
    {
        return auk1.e;
    }

    static Activity b(auk auk1)
    {
        return auk1.c;
    }

    static MobileDataSwitchView c(auk auk1)
    {
        return auk1.f;
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
            f.a();
        }
    }
}
