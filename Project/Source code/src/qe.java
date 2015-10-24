// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;

class qe
    implements android.content.DialogInterface.OnCancelListener
{

    final qb a;

    qe(qb qb1)
    {
        a = qb1;
        super();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        nz.b("ToolboxClickHandler", "User Canceled Dialog.");
        a.d();
    }
}
