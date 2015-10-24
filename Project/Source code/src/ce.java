// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class ce
    implements cl
{

    final bz a;
    final cd b;

    ce(cd cd, bz bz1)
    {
        b = cd;
        a = bz1;
        super();
    }

    public void a(View view, int i)
    {
        a.a(view, i);
    }

    public void a(View view, Object obj)
    {
        a.a(view, new er(obj));
    }

    public boolean a(View view, AccessibilityEvent accessibilityevent)
    {
        return a.b(view, accessibilityevent);
    }

    public boolean a(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return a.a(viewgroup, view, accessibilityevent);
    }

    public void b(View view, AccessibilityEvent accessibilityevent)
    {
        a.d(view, accessibilityevent);
    }

    public void c(View view, AccessibilityEvent accessibilityevent)
    {
        a.c(view, accessibilityevent);
    }

    public void d(View view, AccessibilityEvent accessibilityevent)
    {
        a.a(view, accessibilityevent);
    }
}
