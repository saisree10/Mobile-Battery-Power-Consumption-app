// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.SkinShopViewPager;

public class aqs
    implements Runnable
{

    final SkinShopViewPager a;

    public aqs(SkinShopViewPager skinshopviewpager)
    {
        a = skinshopviewpager;
        super();
    }

    public void run()
    {
        SkinShopViewPager.a(a, 0);
        a.c();
    }
}
