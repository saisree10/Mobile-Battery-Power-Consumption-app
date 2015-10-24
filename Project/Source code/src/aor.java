// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.settings.BrightnessChangeActivity;

public class aor extends Handler
{

    final BrightnessChangeActivity a;

    public aor(BrightnessChangeActivity brightnesschangeactivity)
    {
        a = brightnesschangeactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        a.finish();
        super.handleMessage(message);
    }
}
