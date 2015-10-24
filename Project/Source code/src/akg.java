// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.EditText;
import com.dianxinos.powermanager.feedback.FeedbackDialog;

public class akg
    implements android.view.View.OnClickListener
{

    final FeedbackDialog a;

    public akg(FeedbackDialog feedbackdialog)
    {
        a = feedbackdialog;
        super();
    }

    public void onClick(View view)
    {
        String s = FeedbackDialog.e(a).getText().toString();
        String s1 = FeedbackDialog.f(a).getText().toString();
        Resources resources = FeedbackDialog.g(a).getResources();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s2 = resources.getString(0x7f0a0175);
        if (s.length() > 0)
        {
            FeedbackDialog.a(a, s);
            FeedbackDialog.b(a, s1);
            FeedbackDialog.a(a).sendMessage(FeedbackDialog.a(a).obtainMessage(1, (new StringBuilder()).append(s).append(" ").append(s2).append(s1).toString()));
            a.dismiss();
        }
    }
}
