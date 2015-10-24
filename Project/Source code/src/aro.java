// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;

class aro extends Handler
{

    final arm a;

    private aro(arm arm1)
    {
        a = arm1;
        super();
    }

    aro(arm arm1, arn arn)
    {
        this(arm1);
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            arm.a(a).a(a);
        } else
        {
            if (message.what == 2)
            {
                arm.a(a, false);
                arm.a(a).b(a);
                return;
            }
            if (message.what == 3)
            {
                try
                {
                    arm.d(a).addView(arm.b(a), arm.c(a));
                    arm.b(a, true);
                    return;
                }
                catch (Exception exception)
                {
                    azt.d("FloatSwitchWindow", (new StringBuilder()).append("aleady added view : ").append(exception.toString()).toString());
                }
                return;
            }
        }
    }
}
