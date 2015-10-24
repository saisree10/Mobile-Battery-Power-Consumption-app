// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;

class qu
    implements android.content.DialogInterface.OnCancelListener
{

    final qs a;

    qu(qs qs1)
    {
        a = qs1;
        super();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        nz.b("ToolboxTctbClickHandler", "User Canceled Dialog.");
        a.c();
    }
}
