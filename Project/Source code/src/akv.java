// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

class akv
    implements android.content.DialogInterface.OnClickListener
{

    final Uri a;
    final Context b;
    final aku c;

    akv(aku aku1, Uri uri, Context context)
    {
        c = aku1;
        a = uri;
        b = context;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent("android.intent.action.VIEW", a);
        try
        {
            b.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            c.a();
        }
    }
}
