// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.dianxinos.powermanager.feedback.FeedbackDialog;

public class ake extends Handler
{

    final FeedbackDialog a;

    public ake(FeedbackDialog feedbackdialog)
    {
        a = feedbackdialog;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            azi.a().b(new akf(this, FeedbackDialog.a(a).obtainMessage(2), (String)message.obj, null));
        } else
        if (message.what == 2)
        {
            if (((Boolean)message.obj).booleanValue())
            {
                FeedbackDialog.a(a, "");
                FeedbackDialog.b(a, "");
                android.content.Context context1 = FeedbackDialog.b(a);
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Toast.makeText(context1, 0x7f0a0111, 0).show();
                return;
            } else
            {
                android.content.Context context = FeedbackDialog.c(a);
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Toast.makeText(context, 0x7f0a0112, 0).show();
                return;
            }
        }
    }
}
