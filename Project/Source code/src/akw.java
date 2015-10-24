// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.DialogInterface;

class akw
    implements android.content.DialogInterface.OnClickListener
{

    final Dialog a;
    final aku b;

    akw(aku aku1, Dialog dialog)
    {
        b = aku1;
        a = dialog;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.dismiss();
        aku.a(b, false);
    }
}
