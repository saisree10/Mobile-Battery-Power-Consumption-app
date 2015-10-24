// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.Method;

public abstract class aem
{

    private static final Class e[];
    private final Activity a;
    private final Handler b;
    private Method c;
    private Object d[];

    public aem(Activity activity, Handler handler)
    {
        d = new Object[5];
        a = activity;
        b = handler;
        a();
    }

    private void a()
    {
        try
        {
            c = a.getClass().getMethod("startIntentSender", e);
            return;
        }
        catch (SecurityException securityexception)
        {
            c = null;
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            c = null;
        }
    }

    public abstract void a(aeh aeh, akt akt);

    public abstract void a(aei aei, akt akt);

    public abstract void a(aks aks, String s, int i, long l, String s1);

    void a(PendingIntent pendingintent, Intent intent)
    {
        if (c != null)
        {
            try
            {
                d[0] = pendingintent.getIntentSender();
                d[1] = intent;
                d[2] = Integer.valueOf(0);
                d[3] = Integer.valueOf(0);
                d[4] = Integer.valueOf(0);
                c.invoke(a, d);
                return;
            }
            catch (Exception exception)
            {
                Log.e("PurchaseObserver", "error starting activity", exception);
            }
            return;
        }
        try
        {
            pendingintent.send(a, 0, intent);
            return;
        }
        catch (android.app.PendingIntent.CanceledException canceledexception)
        {
            Log.e("PurchaseObserver", "error starting activity", canceledexception);
        }
    }

    public abstract void a(boolean flag);

    void b(aks aks, String s, int i, long l, String s1)
    {
        b.post(new aen(this, aks, s, i, l, s1));
    }

    static 
    {
        Class aclass[] = new Class[5];
        aclass[0] = android/content/IntentSender;
        aclass[1] = android/content/Intent;
        aclass[2] = Integer.TYPE;
        aclass[3] = Integer.TYPE;
        aclass[4] = Integer.TYPE;
        e = aclass;
    }
}
