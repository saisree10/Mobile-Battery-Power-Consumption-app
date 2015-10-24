// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class bz
{

    private static final cc b;
    private static final Object c;
    final Object a;

    public bz()
    {
        a = b.a(this);
    }

    Object a()
    {
        return a;
    }

    public void a(View view, int i)
    {
        b.a(c, view, i);
    }

    public void a(View view, AccessibilityEvent accessibilityevent)
    {
        b.d(c, view, accessibilityevent);
    }

    public void a(View view, er er)
    {
        b.a(c, view, er);
    }

    public boolean a(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return b.a(c, viewgroup, view, accessibilityevent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityevent)
    {
        return b.a(c, view, accessibilityevent);
    }

    public void c(View view, AccessibilityEvent accessibilityevent)
    {
        b.c(c, view, accessibilityevent);
    }

    public void d(View view, AccessibilityEvent accessibilityevent)
    {
        b.b(c, view, accessibilityevent);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            b = new cd();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            b = new ca();
        } else
        {
            b = new cf();
        }
        c = b.a();
    }
}
