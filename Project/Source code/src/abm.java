// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.ui.InverseTabHost;

public class abm extends BroadcastReceiver
{

    final PowerMgrTabActivity a;

    public abm(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s.equals("com.dianxinos.dxbs.CLOSE_APP"))
        {
            a.finish();
        } else
        {
            if (s.equals("com.dianxinos.dxbs.GOTO_TOOLBOX"))
            {
                PowerMgrTabActivity.f(a, "tab_tag_mode".equals(PowerMgrTabActivity.c(a).getCurrentTabTag()));
                PowerMgrTabActivity.h(a);
                return;
            }
            if ("goto_personal_center".equals(s))
            {
                PowerMgrTabActivity.a(a, intent.getStringExtra("lottery_result"));
                PowerMgrTabActivity.i(a);
                if (PowerMgrTabActivity.j(a) != null)
                {
                    PowerMgrTabActivity.j(a).dismiss();
                }
                PowerMgrTabActivity.k(a);
                return;
            }
            if ("back_from_play_login".equals(s))
            {
                PowerMgrTabActivity.g(a, true);
                PowerMgrTabActivity.a(a, intent.getStringExtra("lottery_result"));
                return;
            }
        }
    }
}
