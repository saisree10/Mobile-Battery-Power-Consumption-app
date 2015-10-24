// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class ao
{

    Context a;
    CharSequence b;
    CharSequence c;
    PendingIntent d;
    PendingIntent e;
    RemoteViews f;
    Bitmap g;
    CharSequence h;
    int i;
    int j;
    boolean k;
    av l;
    CharSequence m;
    int n;
    int o;
    boolean p;
    ArrayList q;
    Notification r;

    public ao(Context context)
    {
        q = new ArrayList();
        r = new Notification();
        a = context;
        r.when = System.currentTimeMillis();
        r.audioStreamType = -1;
        j = 0;
    }

    private void a(int i1, boolean flag)
    {
        if (flag)
        {
            Notification notification1 = r;
            notification1.flags = i1 | notification1.flags;
            return;
        } else
        {
            Notification notification = r;
            notification.flags = notification.flags & ~i1;
            return;
        }
    }

    public Notification a()
    {
        return ak.a().a(this);
    }

    public ao a(int i1)
    {
        r.icon = i1;
        return this;
    }

    public ao a(PendingIntent pendingintent)
    {
        d = pendingintent;
        return this;
    }

    public ao a(CharSequence charsequence)
    {
        b = charsequence;
        return this;
    }

    public ao a(boolean flag)
    {
        a(16, flag);
        return this;
    }

    public ao b(CharSequence charsequence)
    {
        c = charsequence;
        return this;
    }

    public ao c(CharSequence charsequence)
    {
        r.tickerText = charsequence;
        return this;
    }
}
