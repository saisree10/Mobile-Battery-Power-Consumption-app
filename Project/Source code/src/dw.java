// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class dw
{

    public static void a(View view, Object obj)
    {
        view.setAccessibilityDelegate((android.view.View.AccessibilityDelegate)obj);
    }

    public static boolean a(View view, int i)
    {
        return view.canScrollHorizontally(i);
    }
}
