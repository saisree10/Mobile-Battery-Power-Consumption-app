// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import com.dianxinos.powermanager.menu.AppListActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class alc extends AsyncTask
{

    final AppListActivity a;

    public alc(AppListActivity applistactivity)
    {
        a = applistactivity;
        super();
    }

    private void a()
    {
        ArrayList arraylist1;
        Iterator iterator;
        synchronized (AppListActivity.a(a))
        {
            AppListActivity.a(a).clear();
        }
        arraylist1 = new ArrayList();
        iterator = acq.c().iterator();
_L2:
        acn acn1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        acn1 = (acn)iterator.next();
        if (isCancelled())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_75;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        akz akz1;
        if ("com.dianxinos.dxbs".equals(acn1.a))
        {
            continue; /* Loop/switch isn't completed */
        }
        akz1 = new akz(a, null);
        if (AppListActivity.c(a).a(acn1.a))
        {
            akz1.a = true;
        }
        akz.a(akz1, acn1.c);
        if (AppListActivity.d(a) || !akz.a(akz1))
        {
            akz.a(akz1, acn1.a);
            akz.b(akz1, acn1.e());
            akz.a(akz1, acn1.d());
            arraylist1.add(akz1);
            if (arraylist1.size() < 3 || arraylist1.size() % 3 == 0)
            {
                synchronized (AppListActivity.a(a))
                {
                    AppListActivity.a(a).addAll(AppListActivity.a(a).size(), arraylist1);
                    arraylist1.clear();
                }
                Integer ainteger1[] = new Integer[1];
                ainteger1[0] = Integer.valueOf(1);
                publishProgress(ainteger1);
            }
        }
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (true) goto _L2; else goto _L1
        exception2;
        arraylist2;
        JVM INSTR monitorexit ;
        throw exception2;
_L1:
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(1);
        publishProgress(ainteger);
        return;
    }

    protected transient Void a(Void avoid[])
    {
        a();
        return null;
    }

    protected void a(Void void1)
    {
        super.onPostExecute(void1);
        a.runOnUiThread(new ale(this));
    }

    protected transient void a(Integer ainteger[])
    {
        if (ainteger[0].intValue() == 1)
        {
            a.runOnUiThread(new ald(this));
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
