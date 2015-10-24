// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.feedback.FeedbackDialog;

public class akh
    implements android.view.View.OnClickListener
{

    final FeedbackDialog a;

    public akh(FeedbackDialog feedbackdialog)
    {
        a = feedbackdialog;
        super();
    }

    public void onClick(View view)
    {
        FeedbackDialog.a(a, "");
        FeedbackDialog.b(a, "");
        a.dismiss();
    }
}
