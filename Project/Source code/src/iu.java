// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.dianxinos.appupdate.AppUpdateService;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class iu
    implements iv
{

    final AppUpdateService a;

    public iu(AppUpdateService appupdateservice)
    {
        a = appupdateservice;
        super();
    }

    public void a()
    {
        if (AppUpdateService.a())
        {
            Log.d("AppUpdateService", "Auto checking update result: network error");
        }
    }

    public void a(int i, String s, String s1, int j, Map map)
    {
        if (AppUpdateService.a())
        {
            Log.d("AppUpdateService", "Auto checking update result: Update available");
        }
        ka ka1 = ka.a(a.getApplicationContext());
        if (kj.a(ka1.a()) && ka1.o())
        {
            Log.i("AppUpdateService", "start silent download caused by new update when wifi connected");
            ka1.a(null, false, 2);
        }
        if (j != 0 || !AppUpdateService.a(a))
        {
            Intent intent = new Intent("com.dianxinos.appupdate.intent.NEW_UPDATE");
            intent.setPackage(a.getPackageName());
            intent.putExtra("new-vn", s);
            intent.putExtra("new_vc", i);
            intent.putExtra("update-dspt", s1);
            intent.putExtra("update-pri", j);
            intent.putExtra("update-file-size", (String)map.get("update-file-size"));
            if (map != null)
            {
                Bundle bundle = new Bundle();
                String s2;
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); bundle.putString(s2, (String)map.get(s2)))
                {
                    s2 = (String)iterator.next();
                }

                intent.putExtra("update-extras", bundle);
            }
            a.sendBroadcast(intent, (new StringBuilder()).append(a.getPackageName()).append(".permission.UPDATE").toString());
            if (AppUpdateService.a())
            {
                Log.d("AppUpdateService", "Update available broadcast sent");
                return;
            }
        }
    }

    public void b()
    {
        if (AppUpdateService.a())
        {
            Log.d("AppUpdateService", "Auto check update result: no update");
        }
    }
}
