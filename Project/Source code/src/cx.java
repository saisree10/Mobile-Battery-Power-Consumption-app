// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.KeyEvent;

class cx
{

    public static int a(int i)
    {
        return KeyEvent.normalizeMetaState(i);
    }

    public static boolean a(int i, int j)
    {
        return KeyEvent.metaStateHasModifiers(i, j);
    }

    public static boolean b(int i)
    {
        return KeyEvent.metaStateHasNoModifiers(i);
    }
}
