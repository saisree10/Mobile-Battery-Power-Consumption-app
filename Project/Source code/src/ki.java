// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

class ki extends android.content.pm.IPackageInstallObserver.Stub
{

    final ka a;

    ki(ka ka1)
    {
        a = ka1;
        super();
    }

    public void a(String s, int i)
    {
        if (ka.p())
        {
            Log.d("UpdateManager", (new StringBuilder()).append("packageInstalled, returnCode=").append(i).toString());
        }
    }
}
