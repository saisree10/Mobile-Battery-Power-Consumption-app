// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.powermanager.toolbox.ToolboxActivity;

public class aun extends mc
{

    final ToolboxActivity a;

    public aun(ToolboxActivity toolboxactivity)
    {
        a = toolboxactivity;
        super();
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        ToolboxActivity.a(a);
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult, String s)
    {
        ToolboxActivity.c(a);
    }

    public void b(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        ToolboxActivity.b(a);
    }
}
