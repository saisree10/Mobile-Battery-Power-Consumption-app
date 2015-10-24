// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.KeyEvent;
import android.widget.TextView;
import com.dianxinos.powermanager.mode.NewModeActivity;

public class ang
    implements android.widget.TextView.OnEditorActionListener
{

    final NewModeActivity a;

    public ang(NewModeActivity newmodeactivity)
    {
        a = newmodeactivity;
        super();
    }

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        NewModeActivity.a(a, true);
        return false;
    }
}
