// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class auz
    implements android.view.View.OnClickListener
{

    final auu a;
    private android.view.View.OnClickListener b;

    public auz(auu auu1, android.view.View.OnClickListener onclicklistener)
    {
        a = auu1;
        super();
        b = onclicklistener;
    }

    public void onClick(View view)
    {
        if (auu.a(a))
        {
            a.dismiss();
        }
        b.onClick(view);
    }
}
