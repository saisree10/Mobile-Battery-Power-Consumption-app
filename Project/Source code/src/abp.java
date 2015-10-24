// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.ui.InverseTabHost;

public class abp
    implements avj
{

    final PowerMgrTabActivity a;

    public abp(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void a()
    {
        PowerMgrTabActivity.c(a).setCurTabAnimSwitch(false);
        PowerMgrTabActivity.c(a).setCurrentTabByTag("tab_tag_toolbox");
        PowerMgrTabActivity.c(a).setCurTabAnimSwitch(true);
    }
}
