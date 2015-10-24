// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;

public class bc
{

    private static final Object f = new Object();
    private static bc g;
    private final Context a;
    private final HashMap b = new HashMap();
    private final HashMap c = new HashMap();
    private final ArrayList d = new ArrayList();
    private final Handler e;

    private bc(Context context)
    {
        a = context;
        e = new bd(this, context.getMainLooper());
    }

    public static bc a(Context context)
    {
        bc bc1;
        synchronized (f)
        {
            if (g == null)
            {
                g = new bc(context.getApplicationContext());
            }
            bc1 = g;
        }
        return bc1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a()
    {
_L4:
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        int i = d.size();
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return;
        be abe[];
        abe = new be[i];
        d.toArray(abe);
        d.clear();
        hashmap;
        JVM INSTR monitorexit ;
        int j = 0;
_L2:
        if (j < abe.length)
        {
            be be1 = abe[j];
            for (int k = 0; k < be1.b.size(); k++)
            {
                ((bf)be1.b.get(k)).b.onReceive(a, be1.a);
            }

            break MISSING_BLOCK_LABEL_120;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(bc bc1)
    {
        bc1.a();
    }

    public void a(BroadcastReceiver broadcastreceiver)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        ArrayList arraylist = (ArrayList)b.remove(broadcastreceiver);
        if (arraylist != null) goto _L2; else goto _L1
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
_L16:
        int i;
        if (i >= arraylist.size()) goto _L4; else goto _L3
_L3:
        IntentFilter intentfilter = (IntentFilter)arraylist.get(i);
        int j = 0;
_L14:
        String s;
        ArrayList arraylist1;
        if (j >= intentfilter.countActions())
        {
            break; /* Loop/switch isn't completed */
        }
        s = intentfilter.getAction(j);
        arraylist1 = (ArrayList)c.get(s);
        if (arraylist1 == null) goto _L6; else goto _L5
_L5:
        int k = 0;
_L12:
        if (k >= arraylist1.size()) goto _L8; else goto _L7
_L7:
        if (((bf)arraylist1.get(k)).b != broadcastreceiver) goto _L10; else goto _L9
_L9:
        arraylist1.remove(k);
        int l = k - 1;
          goto _L11
_L8:
        if (arraylist1.size() <= 0)
        {
            c.remove(s);
        }
        break; /* Loop/switch isn't completed */
_L4:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
_L10:
        l = k;
          goto _L11
_L2:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L11:
        k = l + 1;
        if (true) goto _L12; else goto _L6
_L6:
        j++;
        if (true) goto _L14; else goto _L13
_L13:
        i++;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public void a(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        bf bf1;
        ArrayList arraylist;
        bf1 = new bf(intentfilter, broadcastreceiver);
        arraylist = (ArrayList)b.get(broadcastreceiver);
        if (arraylist != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        arraylist = new ArrayList(1);
        b.put(broadcastreceiver, arraylist);
        arraylist.add(intentfilter);
        int i = 0;
_L2:
        String s;
        ArrayList arraylist1;
        if (i >= intentfilter.countActions())
        {
            break; /* Loop/switch isn't completed */
        }
        s = intentfilter.getAction(i);
        arraylist1 = (ArrayList)c.get(s);
        if (arraylist1 != null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        arraylist1 = new ArrayList(1);
        c.put(s, arraylist1);
        arraylist1.add(bf1);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(Intent intent)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        String s;
        String s1;
        android.net.Uri uri;
        String s2;
        java.util.Set set;
        s = intent.getAction();
        s1 = intent.resolveTypeIfNeeded(a.getContentResolver());
        uri = intent.getData();
        s2 = intent.getScheme();
        set = intent.getCategories();
        ArrayList arraylist1;
        int j;
        ArrayList arraylist2;
        String s3;
        Exception exception;
        boolean flag;
        ArrayList arraylist;
        int i;
        bf bf1;
        int k;
        if ((8 & intent.getFlags()) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        Log.v("LocalBroadcastManager", (new StringBuilder()).append("Resolving type ").append(s1).append(" scheme ").append(s2).append(" of intent ").append(intent).toString());
        arraylist = (ArrayList)c.get(intent.getAction());
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        Log.v("LocalBroadcastManager", (new StringBuilder()).append("Action list: ").append(arraylist).toString());
          goto _L4
_L24:
        if (i >= arraylist.size()) goto _L6; else goto _L5
_L5:
        bf1 = (bf)arraylist.get(i);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        Log.v("LocalBroadcastManager", (new StringBuilder()).append("Matching against filter ").append(bf1.a).toString());
        if (!bf1.c) goto _L8; else goto _L7
_L7:
        if (!flag) goto _L10; else goto _L9
_L9:
        Log.v("LocalBroadcastManager", "  Filter's target already added");
        arraylist2 = arraylist1;
          goto _L11
_L8:
        k = bf1.a.match(s, s1, s2, uri, set, "LocalBroadcastManager");
        if (k < 0) goto _L13; else goto _L12
_L12:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_307;
        }
        Log.v("LocalBroadcastManager", (new StringBuilder()).append("  Filter matched!  match=0x").append(Integer.toHexString(k)).toString());
        if (arraylist1 != null) goto _L15; else goto _L14
_L14:
        arraylist2 = new ArrayList();
_L23:
        arraylist2.add(bf1);
        bf1.c = true;
          goto _L11
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
_L13:
        if (!flag) goto _L10; else goto _L16
_L16:
        k;
        JVM INSTR tableswitch -4 -1: default 380
    //                   -4 535
    //                   -3 528
    //                   -2 542
    //                   -1 549;
           goto _L17 _L18 _L19 _L20 _L21
_L17:
        s3 = "unknown reason";
_L25:
        Log.v("LocalBroadcastManager", (new StringBuilder()).append("  Filter did not match: ").append(s3).toString());
          goto _L10
_L22:
        if (j >= arraylist1.size())
        {
            break MISSING_BLOCK_LABEL_443;
        }
        ((bf)arraylist1.get(j)).c = false;
        j++;
          goto _L22
        d.add(new be(intent, arraylist1));
        if (!e.hasMessages(1))
        {
            e.sendEmptyMessage(1);
        }
        hashmap;
        JVM INSTR monitorexit ;
        return true;
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return false;
_L15:
        arraylist2 = arraylist1;
          goto _L23
_L4:
        arraylist1 = null;
        i = 0;
          goto _L24
_L11:
        i++;
        arraylist1 = arraylist2;
          goto _L24
_L10:
        arraylist2 = arraylist1;
          goto _L11
_L19:
        s3 = "action";
          goto _L25
_L18:
        s3 = "category";
          goto _L25
_L20:
        s3 = "data";
          goto _L25
_L21:
        s3 = "type";
          goto _L25
_L6:
        if (arraylist1 == null) goto _L2; else goto _L26
_L26:
        j = 0;
          goto _L22
    }

}
