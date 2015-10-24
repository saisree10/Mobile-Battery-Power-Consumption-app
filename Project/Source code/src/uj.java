// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

class uj
    implements Runnable
{

    final ui a;

    uj(ui ui1)
    {
        a = ui1;
        super();
    }

    public void run()
    {
        if (ud.b)
        {
            Log.d("stat.TokenUtils", "enter in reportTokenJob!");
        }
        ui.a(a, ui.a(a, ui.a(a)));
        if (ud.c)
        {
            Log.i("stat.TokenUtils", (new StringBuilder()).append("New status: ").append(ui.b(a)).toString());
        }
        if (ui.b(a))
        {
            ui.c(a);
        }
    }
}
