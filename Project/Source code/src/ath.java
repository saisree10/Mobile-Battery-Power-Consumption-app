// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.SparseArray;

public class ath
{

    private static ath d = null;
    private Context a;
    private PackageManager b;
    private SparseArray c;

    private ath(Context context)
    {
        c = new SparseArray();
        a = context.getApplicationContext();
        b = a.getPackageManager();
    }

    public static ath a(Context context)
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        ath;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new ath(context);
        }
        ath;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        ath;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ati a(int i, String s)
    {
        ati ati1;
        synchronized (c)
        {
            ati1 = (ati)c.get(i);
        }
        if (ati1 != null)
        {
            return ati1;
        }
        break MISSING_BLOCK_LABEL_37;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
        ati ati2;
        ati2 = new ati();
        if (i == -1)
        {
            ati2.c = a.getResources().getDrawable(0x1080093);
            Context context = a;
            ly.i;
            ati2.a = context.getString(0x7f0a008d);
            synchronized (c)
            {
                c.put(i, ati2);
            }
            return ati2;
        }
        break MISSING_BLOCK_LABEL_123;
        exception3;
        sparsearray2;
        JVM INSTR monitorexit ;
        throw exception3;
        String as[] = b.getPackagesForUid(i);
        boolean flag;
        boolean flag1;
        int j;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        int l;
        Exception exception2;
        if (as == null || as.length == 0)
        {
            acn acn1;
            int k;
            String s1;
            acn acn2;
            CharSequence charsequence;
            if (i == 0)
            {
                Resources resources = a.getResources();
                ly.i;
                ati2.a = resources.getString(0x7f0a0061);
            } else
            {
                ati2.a = s;
            }
            ati2.c = a.getResources().getDrawable(0x1080093);
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag || as.length <= 1) goto _L2; else goto _L1
_L1:
        k = as.length;
        l = 0;
_L11:
        if (l >= k) goto _L2; else goto _L3
_L3:
        s1 = as[l];
        acn2 = acq.e(s1);
        if (acn2.c().sharedUserLabel == 0) goto _L5; else goto _L4
_L4:
        charsequence = b.getText(s1, acn2.c().sharedUserLabel, acn2.c().applicationInfo);
        if (charsequence == null) goto _L5; else goto _L6
_L6:
        ati2.a = charsequence.toString();
        ati2.b = s1;
        ati2.c = acn2.d();
        flag = true;
_L2:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_486;
        }
        j = 0;
_L12:
        if (j >= as.length) goto _L8; else goto _L7
_L7:
        if (!as[j].equals(s)) goto _L10; else goto _L9
_L9:
        acn1 = acq.e(as[j]);
        ati2.a = acn1.e().toString();
        ati2.b = as[j];
        ati2.c = acn1.d();
        flag1 = true;
_L13:
        if (!flag1)
        {
            ati2.a = s;
            ati2.b = null;
            ati2.c = a.getResources().getDrawable(0x1080093);
        }
        synchronized (c)
        {
            c.put(i, ati2);
        }
        return ati2;
        exception2;
_L5:
        l++;
          goto _L11
_L10:
        j++;
          goto _L12
        namenotfoundexception;
        flag1 = flag;
          goto _L13
        exception1;
        sparsearray1;
        JVM INSTR monitorexit ;
        throw exception1;
_L8:
        j = 0;
          goto _L9
        flag1 = flag;
          goto _L13
    }

    public String a(String s)
    {
        String s1;
        try
        {
            s1 = acq.e(s).e();
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return s1;
    }

    public void a()
    {
        synchronized (c)
        {
            c.clear();
        }
        return;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        synchronized (c)
        {
            c.clear();
        }
        return;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
