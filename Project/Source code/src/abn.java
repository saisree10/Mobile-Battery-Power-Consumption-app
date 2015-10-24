// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.ui.MainTitle;

public class abn
    implements android.view.View.OnClickListener
{

    final PowerMgrTabActivity a;

    public abn(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void onClick(View view)
    {
        PowerMgrTabActivity.s(a).setRightButtonClickable(false);
        boolean flag = zc.a(a);
        PowerMgrTabActivity powermgrtabactivity = a;
        String s;
        if (flag)
        {
            s = "mbmtnc";
        } else
        {
            s = "mbmtnoc";
        }
        bal.a(powermgrtabactivity, "msgbox", s, Integer.valueOf(1));
        PowerMgrTabActivity.b(a, 0);
    }
}
