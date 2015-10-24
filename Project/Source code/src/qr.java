// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import com.dianxinos.common.coins.CoinManager;

class qr extends AsyncTask
{

    final qp a;

    private qr(qp qp1)
    {
        a = qp1;
        super();
    }

    qr(qp qp1, qq qq)
    {
        this(qp1);
    }

    protected transient Integer a(Void avoid[])
    {
        if (isCancelled())
        {
            return Integer.valueOf(-2);
        }
        android.content.Context context = a.getBaseContext();
        om.b(context, System.currentTimeMillis());
        om.a(context, false);
        pf.b(context);
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult = CoinManager.a(context).a(null, null);
        if (200 == requestresult.c && requestresult.a >= 0)
        {
            CoinManager.a(context).a(requestresult.a);
            CoinManager.a(context, requestresult, "__TOTAL__");
            pf.c(context);
            return Integer.valueOf(requestresult.a);
        } else
        {
            return Integer.valueOf(-1);
        }
    }

    protected void a(Integer integer)
    {
        if (isCancelled())
        {
            return;
        }
        a.j();
        if (integer.intValue() >= 0)
        {
            a.b(a.getString(ok.check_total_coin_changed, new Object[] {
                integer
            }));
            return;
        } else
        {
            a.b(ok.check_sync_failed);
            return;
        }
    }

    public boolean a()
    {
        while (isCancelled() || getStatus() != android.os.AsyncTask.Status.PENDING && getStatus() != android.os.AsyncTask.Status.RUNNING) 
        {
            return false;
        }
        return true;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Integer)obj);
    }

    protected void onPreExecute()
    {
        a.a(ok.check_syncing);
    }
}
