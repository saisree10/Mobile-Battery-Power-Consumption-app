// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.menu.AppListActivity;
import com.dianxinos.powermanager.menu.AppWhiteListActivity;

public class alh
    implements android.view.View.OnClickListener
{

    final AppWhiteListActivity a;

    public alh(AppWhiteListActivity appwhitelistactivity)
    {
        a = appwhitelistactivity;
        super();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent(a, com/dianxinos/powermanager/menu/AppListActivity);
        a.startActivity(intent);
    }
}
