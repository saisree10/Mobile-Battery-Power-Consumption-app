// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.feedback;

import ake;
import akg;
import akh;
import aki;
import akj;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import auu;
import gm;
import ly;

public class FeedbackDialog extends auu
{

    private Handler c;
    private EditText d;
    private EditText e;

    public FeedbackDialog(Context context)
    {
        super(context);
        c = new ake(this);
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03003c, null);
        b(view);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        setTitle(0x7f0a010e);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        a(0x7f0a0110, new akg(this));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        b(0x7f0a0115, new akh(this));
        String s = a();
        String s1 = b();
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        d = (EditText)view.findViewById(0x7f0700e5);
        d.setText(s);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        e = (EditText)view.findViewById(0x7f0700e6);
        e.setText(s1);
        Resources resources = a.getResources();
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        String s2 = resources.getString(0x7f0a010f);
        e.setOnFocusChangeListener(new aki(this, s2));
        d.addTextChangedListener(new akj(this));
        Button button = b;
        boolean flag;
        if (s != null && s.length() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        button.setEnabled(flag);
        setCanceledOnTouchOutside(false);
    }

    public static Handler a(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.c;
    }

    private String a()
    {
        return a.getSharedPreferences("feedback", 0).getString("content", "");
    }

    public static void a(FeedbackDialog feedbackdialog, String s)
    {
        feedbackdialog.a(s);
    }

    private void a(String s)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("feedback", 0).edit();
        editor.putString("content", s);
        gm.a(editor);
    }

    public static Context b(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.a;
    }

    private String b()
    {
        return a.getSharedPreferences("feedback", 0).getString("contact", "");
    }

    public static void b(FeedbackDialog feedbackdialog, String s)
    {
        feedbackdialog.d(s);
    }

    public static Context c(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.a;
    }

    public static Context d(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.a;
    }

    private void d(String s)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("feedback", 0).edit();
        editor.putString("contact", s);
        gm.a(editor);
    }

    public static EditText e(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.d;
    }

    public static EditText f(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.e;
    }

    public static Context g(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.a;
    }

    public static Button h(FeedbackDialog feedbackdialog)
    {
        return feedbackdialog.b;
    }
}
