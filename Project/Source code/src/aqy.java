// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.dianxinos.powermanager.skinshop.SkinShopViewPager;

public class aqy extends bz
{

    final SkinShopViewPager b;

    public aqy(SkinShopViewPager skinshopviewpager)
    {
        b = skinshopviewpager;
        super();
    }

    public void a(View view, er er1)
    {
        boolean flag = true;
        super.a(view, er1);
        er1.a(com/dianxinos/powermanager/skinshop/SkinShopViewPager.getName());
        if (SkinShopViewPager.b(b) == null || SkinShopViewPager.b(b).c() <= flag)
        {
            flag = false;
        }
        er1.a(flag);
        if (SkinShopViewPager.b(b) != null && SkinShopViewPager.c(b) >= 0 && SkinShopViewPager.c(b) < -1 + SkinShopViewPager.b(b).c())
        {
            er1.a(4096);
        }
        if (SkinShopViewPager.b(b) != null && SkinShopViewPager.c(b) > 0 && SkinShopViewPager.c(b) < SkinShopViewPager.b(b).c())
        {
            er1.a(8192);
        }
    }

    public void d(View view, AccessibilityEvent accessibilityevent)
    {
        super.d(view, accessibilityevent);
        accessibilityevent.setClassName(com/dianxinos/powermanager/skinshop/SkinShopViewPager.getName());
    }
}
