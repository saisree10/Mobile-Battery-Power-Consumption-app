// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class ca extends cf
{

    ca()
    {
    }

    public Object a()
    {
        return cg.a();
    }

    public Object a(bz bz)
    {
        return cg.a(new cb(this, bz));
    }

    public void a(Object obj, View view, int i)
    {
        cg.a(obj, view, i);
    }

    public void a(Object obj, View view, er er1)
    {
        cg.a(obj, view, er1.a());
    }

    public boolean a(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        return cg.a(obj, view, accessibilityevent);
    }

    public boolean a(Object obj, ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return cg.a(obj, viewgroup, view, accessibilityevent);
    }

    public void b(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        cg.b(obj, view, accessibilityevent);
    }

    public void c(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        cg.c(obj, view, accessibilityevent);
    }

    public void d(Object obj, View view, AccessibilityEvent accessibilityevent)
    {
        cg.d(obj, view, accessibilityevent);
    }
}
