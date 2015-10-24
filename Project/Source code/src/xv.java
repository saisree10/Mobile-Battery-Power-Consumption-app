// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

public class xv extends Handler
{

    private WeakReference a;

    public xv(xw xw1)
    {
        a = new WeakReference(xw1);
    }

    public void handleMessage(Message message)
    {
        xw xw1 = (xw)a.get();
        if (xw1 != null)
        {
            xw1.a(message);
        }
    }
}
