// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TabHost;
import azv;
import ly;

public class InverseTabHost extends TabHost
{

    private boolean a;
    private Animation b;
    private Animation c;
    private Animation d;
    private Animation e;
    private int f;

    public InverseTabHost(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = true;
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        b = AnimationUtils.loadAnimation(context, 0x7f04000d);
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        c = AnimationUtils.loadAnimation(context, 0x7f04000e);
        com.dianxinos.dxbs.R.anim _tmp2 = ly.a;
        d = AnimationUtils.loadAnimation(context, 0x7f04000f);
        com.dianxinos.dxbs.R.anim _tmp3 = ly.a;
        e = AnimationUtils.loadAnimation(context, 0x7f040010);
    }

    public void addTab(android.widget.TabHost.TabSpec tabspec)
    {
        f = 1 + f;
        super.addTab(tabspec);
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag = super.dispatchKeyEvent(keyevent);
        if (!flag && keyevent.getAction() == 0 && keyevent.getKeyCode() == 20)
        {
            View view = getCurrentView();
            View view1 = getCurrentTabView();
            if (view != null && azv.a(view) && view.hasFocus() && view.findFocus().focusSearch(130) == null)
            {
                view1.requestFocus();
                return true;
            }
            if (view1 != null && azv.a(view) && view1.hasFocus())
            {
                view.requestFocus();
                return true;
            }
        }
        return flag;
    }

    public void setCurTabAnimSwitch(boolean flag)
    {
        a = flag;
    }

    public void setCurrentTab(int i)
    {
        if (!a)
        {
            super.setCurrentTab(i);
        } else
        {
            int j = getCurrentTab();
            View view = getCurrentView();
            View view1;
            if (view != null)
            {
                if (j == -1 + f && i == 0)
                {
                    view.startAnimation(e);
                } else
                if (j == 0 && i == -1 + f)
                {
                    view.startAnimation(c);
                } else
                if (i > j)
                {
                    view.startAnimation(c);
                } else
                if (i < j)
                {
                    view.startAnimation(e);
                }
            }
            super.setCurrentTab(i);
            view1 = getCurrentView();
            if (view1 != null)
            {
                if (j == -1 + f && i == 0)
                {
                    view1.startAnimation(b);
                    return;
                }
                if (j == 0 && i == -1 + f)
                {
                    view1.startAnimation(d);
                    return;
                }
                if (i > j)
                {
                    view1.startAnimation(d);
                    return;
                }
                if (i < j)
                {
                    view1.startAnimation(b);
                    return;
                }
            }
        }
    }
}
