// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.TabWidget;
import android.widget.Toast;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.ui.InverseTabHost;

public class abw extends Handler
{

    final PowerMgrTabActivity a;

    private abw(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public abw(PowerMgrTabActivity powermgrtabactivity, abm abm)
    {
        this(powermgrtabactivity);
    }

    public void handleMessage(Message message)
    {
        if (message.what != PowerMgrTabActivity.a())
        {
            if (message.what == PowerMgrTabActivity.b())
            {
                PowerMgrTabActivity powermgrtabactivity = a;
                PowerMgrTabActivity powermgrtabactivity1 = a;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Toast.makeText(powermgrtabactivity, powermgrtabactivity1.getString(0x7f0a0191), 0).show();
                return;
            }
            if (message.what == PowerMgrTabActivity.c())
            {
                a.finish();
                return;
            }
            if (message.what == PowerMgrTabActivity.d() && PowerMgrTabActivity.a(a).h() && PowerMgrTabActivity.a(a))
            {
                View view = PowerMgrTabActivity.c(a).getTabWidget().getChildAt(PowerMgrTabActivity.b(a));
                com.dianxinos.dxbs.R.id _tmp1 = ly.f;
                view.findViewById(0x7f070230).setVisibility(0);
                return;
            }
        }
    }
}
