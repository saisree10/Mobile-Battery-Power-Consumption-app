// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.View;

final class ape
    implements android.view.View.OnClickListener
{

    final Context a;
    final auu b;

    ape(Context context, auu auu1)
    {
        a = context;
        b = auu1;
        super();
    }

    public void onClick(View view)
    {
        apb.a(a);
        b.dismiss();
    }
}
