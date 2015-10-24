// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.dianxinos.powermanager.feedback.FeedbackDialog;

public class akj
    implements TextWatcher
{

    final FeedbackDialog a;

    public akj(FeedbackDialog feedbackdialog)
    {
        a = feedbackdialog;
        super();
    }

    public void afterTextChanged(Editable editable)
    {
        String s = editable.toString().trim();
        Button button = FeedbackDialog.h(a);
        boolean flag;
        if (s.length() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        button.setEnabled(flag);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
