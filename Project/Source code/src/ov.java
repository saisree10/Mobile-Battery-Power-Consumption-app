// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ov
{

    private static final ThreadFactory a = new ow();
    private static ov b;
    private static final Object c = new Object();
    private HashMap d;
    private oq e;
    private Handler f;
    private ox g;
    private ThreadPoolExecutor h;
    private HashMap i;

    private ov()
    {
        i = new HashMap();
        d = new HashMap();
        g = new ox();
        g.a = oh.toolbox_default_app_icon;
        g.b = 108;
        g.c = 108;
        h = new ThreadPoolExecutor(5, 32, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), a);
    }

    static oq a(ov ov1)
    {
        return ov1.e;
    }

    public static ov a()
    {
        ov;
        JVM INSTR monitorenter ;
        ov ov1;
        if (b == null)
        {
            b = new ov();
        }
        ov1 = b;
        ov;
        JVM INSTR monitorexit ;
        return ov1;
        Exception exception;
        exception;
        throw exception;
    }

    static HashMap b(ov ov1)
    {
        return ov1.d;
    }

    static Handler c(ov ov1)
    {
        return ov1.f;
    }

    public void a(Context context)
    {
        e = oq.a(context);
        f = new Handler(context.getMainLooper());
    }

    void a(String s)
    {
        synchronized (c)
        {
            i.remove(s);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, ImageView imageview)
    {
        a(s, imageview, g);
    }

    public void a(String s, ImageView imageview, ox ox1)
    {
        WeakReference weakreference = (WeakReference)d.get(s);
        imageview.setTag(0xfacecafe, s);
        if (weakreference != null && weakreference.get() != null)
        {
            imageview.setImageBitmap((Bitmap)weakreference.get());
            return;
        }
        imageview.setImageResource(ox1.a);
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (!i.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_100;
        }
        ((oy)i.get(s)).a(imageview);
_L1:
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        oy oy1 = new oy(this, s, ox1);
        oy1.a(imageview);
        i.put(s, oy1);
        h.execute(oy1);
          goto _L1
    }

}
