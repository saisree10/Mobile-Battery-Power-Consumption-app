// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import android.os.Handler;
import com.dianxinos.powermanager.menu.AppWhiteListActivity;
import java.util.ArrayList;
import java.util.Iterator;

public class all extends AsyncTask
{

    final AppWhiteListActivity a;

    public all(AppWhiteListActivity appwhitelistactivity)
    {
        a = appwhitelistactivity;
        super();
    }

    private void a()
    {
        Iterator iterator;
        AppWhiteListActivity.a(a).clear();
        ArrayList arraylist = AppWhiteListActivity.c(a).a();
        a.getPackageManager();
        iterator = arraylist.iterator();
_L2:
        String s;
        ali ali1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s = (String)iterator.next();
        if (isCancelled())
        {
            return;
        }
        ali1 = new ali(a, null);
        ali.a(ali1, s);
        ali1.a = true;
        acn acn1 = acq.e(s);
        if (acn1.c)
        {
            continue; /* Loop/switch isn't completed */
        }
        ali.b(ali1, acn1.e());
        ali.a(ali1, acn1.d());
        AppWhiteListActivity.a(a).add(ali1);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        azt.d("AppWhiteListActivity", exception.toString());
        if (true) goto _L2; else goto _L1
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
        AppWhiteListActivity.d(a).sendEmptyMessage(0);
    }

    protected transient void a(Integer ainteger[])
    {
        if (ainteger[0].intValue() == 1)
        {
            a.runOnUiThread(new alm(this));
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

    protected void onPreExecute()
    {
        AppWhiteListActivity.d(a).sendEmptyMessage(1);
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
