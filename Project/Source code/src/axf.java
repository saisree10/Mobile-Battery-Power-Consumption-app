// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.NotificationManager;
import android.view.View;
import com.dianxinos.powermanager.update.DownloadActivity;

public class axf
    implements android.view.View.OnClickListener
{

    final DownloadActivity a;

    public axf(DownloadActivity downloadactivity)
    {
        a = downloadactivity;
        super();
    }

    public void onClick(View view)
    {
        DownloadActivity.a(a).d();
        NotificationManager notificationmanager = (NotificationManager)a.getSystemService("notification");
        notificationmanager.cancel(1);
        notificationmanager.cancel(3);
        axn.e();
        a.finish();
    }
}
