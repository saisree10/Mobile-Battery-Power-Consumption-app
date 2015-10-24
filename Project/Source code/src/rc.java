// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.view.View;

public abstract class rc extends Fragment
{

    public int a;
    protected Activity b;
    protected Resources c;
    protected View d;

    public rc()
    {
        b = null;
        c = null;
    }

    protected View a(int i)
    {
        return d.findViewById(i);
    }

    public boolean a()
    {
        return false;
    }

    public void a_()
    {
    }

    public void b_()
    {
    }

    public void d()
    {
    }

    public void e()
    {
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        b = activity;
        c = activity.getResources();
    }

    public void onDetach()
    {
        super.onDetach();
    }
}
