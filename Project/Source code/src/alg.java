// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.menu.AppWhiteListActivity;

public class alg
    implements android.view.View.OnClickListener
{

    final AppWhiteListActivity a;

    public alg(AppWhiteListActivity appwhitelistactivity)
    {
        a = appwhitelistactivity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
