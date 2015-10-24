// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.SkinShopViewPager;

public class aqt
    implements Runnable
{

    final int a;
    final SkinShopViewPager b;

    public aqt(SkinShopViewPager skinshopviewpager, int i)
    {
        b = skinshopviewpager;
        a = i;
        super();
    }

    public void run()
    {
        if (a == 0)
        {
            b.scrollTo(a - (int)SkinShopViewPager.a(b), 0);
            return;
        } else
        {
            b.scrollTo(a, 0);
            return;
        }
    }
}
