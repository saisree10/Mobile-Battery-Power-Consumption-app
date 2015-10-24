// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Binder;
import android.os.IBinder;
import android.os.ServiceManager;

public abstract class d extends Binder
    implements f
{

    public static f a()
    {
        f f1 = a(6);
        if (f1 == null)
        {
            f1 = a(ServiceManager.getService("bp"));
        }
        return f1;
    }

    public static f a(int i)
    {
        return a(ServiceManager.getService((new StringBuilder()).append("bp").append(i).toString()));
    }

    public static f a(IBinder ibinder)
    {
        f f1;
        if (ibinder == null)
        {
            f1 = null;
        } else
        {
            f1 = (f)ibinder.queryLocalInterface("android.os.bp");
            if (f1 == null)
            {
                return new e(ibinder);
            }
        }
        return f1;
    }
}
