// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.pm.PackageInfo;
import android.os.Message;
import com.dianxinos.powermanager.feedback.FeedbackDialog;

class akf
    implements Runnable
{

    final ake a;
    private Message b;
    private String c;

    private akf(ake ake1, Message message, String s)
    {
        a = ake1;
        super();
        b = message;
        c = s;
    }

    akf(ake ake1, Message message, String s, ake ake2)
    {
        this(ake1, message, s);
    }

    public void run()
    {
        PackageInfo packageinfo = acq.e("com.dianxinos.dxbs").c();
        String s = (new StringBuilder()).append(packageinfo.versionName).append("_").append(packageinfo.versionCode).toString();
        b.obj = Boolean.valueOf(sa.a(FeedbackDialog.d(a.a), "com.dianxinos.dxbs", s, c, null));
        b.sendToTarget();
        return;
        Exception exception1;
        exception1;
        b.obj = Boolean.valueOf(false);
        b.sendToTarget();
        return;
        Exception exception;
        exception;
        b.sendToTarget();
        throw exception;
    }
}
