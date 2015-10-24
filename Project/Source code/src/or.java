// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetManager;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class or
    implements Runnable
{

    final oq a;

    or(oq oq1)
    {
        a = oq1;
        super();
    }

    public void run()
    {
        int i = 0;
        Object obj = oq.a(a);
        obj;
        JVM INSTR monitorenter ;
        String as[];
        int l;
        nz.b("ToolboxCacheMgr", "restore image list start.");
        as = oq.b(a).getAssets().list("dxtoolbox/images");
        l = as.length;
_L2:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = as[i];
        oq.c(a).add(s1);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        nz.b("ToolboxCacheMgr", "restore image list end.");
_L4:
        int j;
        int k;
        j = om.a(oq.b(a), "toolbox.json");
        k = pa.b();
        nz.b("ToolboxCacheMgr", (new StringBuilder()).append("Preload version old = ").append(j).append("; new = ").append(k).toString());
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_321;
        }
        nz.b("ToolboxCacheMgr", "restore data start.");
        Map map = oc.a(oq.b(a));
        nz.b("ToolboxCacheMgr", "restore data read completed. update cache.");
        java.util.Map.Entry entry;
        for (Iterator iterator1 = map.entrySet().iterator(); iterator1.hasNext(); oq.a(a, (String)entry.getKey(), (List)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator1.next();
        }

          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        nz.b("ToolboxCacheMgr", "no prelaod data : assets/dxtoolbox/toolbox.json");
_L5:
        om.a(oq.b(a), "toolbox.json", k);
_L6:
        oq.a(a, false);
        oq.a(a).notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        nz.a("ToolboxCacheMgr", "restore image list failed:", exception1);
          goto _L4
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L3:
        nz.b("ToolboxCacheMgr", "restore data update cache completed.");
          goto _L5
        Exception exception2;
        exception2;
        nz.a("ToolboxCacheMgr", "restore data failed:", exception2);
          goto _L5
        Iterator iterator = a.b().iterator();
        while (iterator.hasNext()) 
        {
            String s = (String)iterator.next();
            oq.a(a, s);
        }
          goto _L6
    }
}
