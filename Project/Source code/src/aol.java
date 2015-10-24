// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

class aol
    implements kz
{

    final aoj a;
    private aon b;
    private final long c;
    private final long d;
    private final long e;

    private aol(aoj aoj1, long l, long l1, long l2)
    {
        a = aoj1;
        super();
        c = l;
        d = l1;
        e = l2;
    }

    aol(aoj aoj1, long l, long l1, long l2, 
            aok aok)
    {
        this(aoj1, l, l1, l2);
    }

    static aon a(aol aol1, aon aon1)
    {
        aol1.b = aon1;
        return aon1;
    }

    public volatile void a(int i, Object obj)
    {
        a(i, (List)obj);
    }

    public void a(int i, String s)
    {
        aoj.b("MaterialCallback onFail");
    }

    public void a(int i, List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        int j = 0;
        do
        {
            lb lb1;
label0:
            {
                if (iterator.hasNext())
                {
                    lb1 = (lb)iterator.next();
                    if (++j <= 20)
                    {
                        break label0;
                    }
                    aoj.b("ignore other item cause the group is large than 20");
                }
                b.a = arraylist;
                aoj.a(a).obtainMessage(2, (int)e, -1, b).sendToTarget();
                aoj.b("MaterialCallback onSuccess");
                return;
            }
            try
            {
                lb1.f.put("pid", c);
                lb1.f.put("tid", d);
                lb1.f.put("gid", e);
                arraylist.add(new aev(lb1.f));
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
        } while (true);
    }

    public volatile void a(Exception exception, Object obj)
    {
        a(exception, (List)obj);
    }

    public void a(Exception exception, List list)
    {
        exception.printStackTrace();
        aoj.b("MaterialCallback onException");
    }

    public void a(Future future)
    {
        aoj.b("MaterialCallback onSubmit");
    }
}
