// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import com.dianxinos.powermanager.update.DownloadActivity;

public class axh extends Handler
{

    final DownloadActivity a;

    private axh(DownloadActivity downloadactivity)
    {
        a = downloadactivity;
        super();
    }

    public axh(DownloadActivity downloadactivity, axf axf)
    {
        this(downloadactivity);
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            a.finish();
            return;

        case 2: // '\002'
            DownloadActivity.b(a).setProgress(message.arg1);
            break;
        }
    }
}
