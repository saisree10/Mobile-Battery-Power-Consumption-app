// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings;

import ahl;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import aor;

public class BrightnessChangeActivity extends Activity
{

    private Handler a;

    public BrightnessChangeActivity()
    {
        a = new aor(this);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        int i = getIntent().getIntExtra("brightness_index", 0);
        ahl.a(getWindow(), i);
        a.sendEmptyMessageDelayed(0, 300L);
    }
}
