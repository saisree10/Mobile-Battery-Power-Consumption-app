// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.usage.AppsPowerUsageHistory;
import java.util.Comparator;

public class aye
    implements Comparator
{

    final AppsPowerUsageHistory a;

    public aye(AppsPowerUsageHistory appspowerusagehistory)
    {
        a = appspowerusagehistory;
        super();
    }

    public int a(atl atl1, atl atl2)
    {
        if (atl2.f > atl1.f)
        {
            return 1;
        }
        return atl2.f >= atl1.f ? 0 : -1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((atl)obj, (atl)obj1);
    }
}
