// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.smart.SmartSettingsActivity;

public class asq
    implements bai
{

    final SmartSettingsActivity a;

    public asq(SmartSettingsActivity smartsettingsactivity)
    {
        a = smartsettingsactivity;
        super();
    }

    public void a(int i)
    {
        switch (i)
        {
        default:
            return;

        case 2: // '\002'
            SmartSettingsActivity.e(a).sendEmptyMessage(SmartSettingsActivity.f());
            return;

        case 1: // '\001'
            SmartSettingsActivity.e(a).sendEmptyMessage(SmartSettingsActivity.g());
            return;

        case 0: // '\0'
            SmartSettingsActivity.e(a).sendEmptyMessage(SmartSettingsActivity.h());
            return;
        }
    }
}
