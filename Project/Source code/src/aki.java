// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.widget.EditText;
import com.dianxinos.powermanager.feedback.FeedbackDialog;

public class aki
    implements android.view.View.OnFocusChangeListener
{

    final String a;
    final FeedbackDialog b;

    public aki(FeedbackDialog feedbackdialog, String s)
    {
        b = feedbackdialog;
        a = s;
        super();
    }

    public void onFocusChange(View view, boolean flag)
    {
        EditText edittext = (EditText)view;
        if (!flag)
        {
            edittext.setHint(a);
            return;
        } else
        {
            edittext.setHint("");
            return;
        }
    }
}
