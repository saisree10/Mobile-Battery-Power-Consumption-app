// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.View;

final class apd
    implements android.view.View.OnClickListener
{

    final Context a;
    final int b;
    final boolean c;

    apd(Context context, int i, boolean flag)
    {
        a = context;
        b = i;
        c = flag;
        super();
    }

    public void onClick(View view)
    {
        apb.a(a, b, c);
    }
}
