// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import com.dianxinos.powermanager.mode.ModeMgrActivity;

public class amw extends AsyncTask
{

    final ModeMgrActivity a;
    private volatile boolean b;

    private amw(ModeMgrActivity modemgractivity)
    {
        a = modemgractivity;
        super();
        b = false;
    }

    public amw(ModeMgrActivity modemgractivity, amr amr)
    {
        this(modemgractivity);
    }

    protected transient Void a(Void avoid[])
    {
        int i = 10;
_L3:
        if (i >= 0 && !b) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        if (j >= 11 || b)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_63;
_L2:
        Integer ainteger1[] = new Integer[1];
        ainteger1[0] = Integer.valueOf(i);
        publishProgress(ainteger1);
        Integer ainteger[];
        try
        {
            Thread.sleep(50L);
        }
        catch (InterruptedException interruptedexception1) { }
        i--;
          goto _L3
        ainteger = new Integer[1];
        ainteger[0] = Integer.valueOf(j);
        publishProgress(ainteger);
        try
        {
            Thread.sleep(50L);
        }
        catch (InterruptedException interruptedexception) { }
        j++;
          goto _L4
    }

    public void a()
    {
        b = true;
    }

    protected void a(Void void1)
    {
        b = false;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }
}
