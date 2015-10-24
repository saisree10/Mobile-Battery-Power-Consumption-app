// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;
import android.view.KeyEvent;

class axp
    implements android.content.DialogInterface.OnKeyListener
{

    final axn a;

    axp(axn axn)
    {
        a = axn;
        super();
    }

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        return i == 84;
    }
}
