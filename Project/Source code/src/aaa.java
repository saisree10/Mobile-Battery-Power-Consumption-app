// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.Context;
import android.os.SystemClock;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

public class aaa
{

    private static aaa b;
    private Context a;
    private long c;
    private Timer d;

    private aaa(Context context)
    {
        a = context;
    }

    public static aaa a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        aaa;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new aaa(context.getApplicationContext());
        }
        aaa;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        aaa;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Context a(aaa aaa1)
    {
        return aaa1.a;
    }

    public int a(int i, boolean flag)
    {
        ArrayList arraylist;
        ActivityManager activitymanager;
        acq acq1;
        List list;
        int j;
        int k;
        int l;
        arraylist = new ArrayList();
        activitymanager = (ActivityManager)a.getSystemService("activity");
        acq1 = acq.a();
        list = activitymanager.getRunningAppProcesses();
        j = list.size();
        k = 0;
        l = 0;
_L5:
        if (k >= j) goto _L2; else goto _L1
_L1:
        String s;
        String as[] = ((android.app.ActivityManager.RunningAppProcessInfo)list.get(k)).pkgList;
        acn acn1;
        boolean flag1;
        if (as == null || as.length == 0)
        {
            s = ((android.app.ActivityManager.RunningAppProcessInfo)list.get(k)).processName;
        } else
        {
            s = ((android.app.ActivityManager.RunningAppProcessInfo)list.get(k)).pkgList[0];
        }
        acn1 = acq1.c(s);
        if (!azy.c(s) && (((android.app.ActivityManager.RunningAppProcessInfo)list.get(k)).importance < i || acn1.c || azy.a(s, a)))
        {
            break MISSING_BLOCK_LABEL_319;
        }
        flag1 = arraylist.contains(s);
        if (!flag1) goto _L4; else goto _L3
_L3:
        k++;
          goto _L5
_L4:
        boolean flag2;
        arraylist.add(s);
        flag2 = azy.a(activitymanager, s);
        int i1;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        i1 = l + 1;
_L6:
        l = i1;
          goto _L3
        Exception exception;
        exception;
        azt.c("AutoCleanuper", (new StringBuilder()).append("Exception caught: ").append(exception).toString());
          goto _L3
_L2:
        if (flag)
        {
            if (d != null)
            {
                d.cancel();
            }
            c = SystemClock.elapsedRealtime();
            d = new Timer();
            d.schedule(new aab(this), 30000L);
        }
        return l;
        i1 = l;
          goto _L6
    }

    public void a(int i, int j)
    {
        azt.a("AutoCleanuper", (new StringBuilder()).append("showToast, num: ").append(i).append(", time: ").append(j).toString());
        String s1;
        if (i == 0)
        {
            Context context1 = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            s1 = context1.getString(0x7f0a0109);
        } else
        {
            String s = azq.c(a, j);
            StringBuilder stringbuilder = new StringBuilder();
            Context context = a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            s1 = stringbuilder.append(context.getString(0x7f0a0108, aobj)).append(s).toString();
        }
        Toast.makeText(a, s1, 0).show();
    }

    public boolean a()
    {
        return SystemClock.elapsedRealtime() - c > 60000L;
    }
}
