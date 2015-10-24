// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ng
{

    private static final String a = ng.getSimpleName();
    private static String b = "http://ak.dxsvr.com/rec/get";
    private Context c;
    private ni d;
    private String e;
    private nk f;
    private lz g;

    protected ng(Context context, String s)
    {
        c = context;
        e = s;
        d = ni.a(context);
        f = d.a(s);
        g = new lz(context);
    }

    private static long a(HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader("Last-Modified");
        if (header != null)
        {
            return lx.b(header.getValue()).getTime();
        } else
        {
            return 0L;
        }
    }

    private void a(long l)
    {
        nz.b(a, (new StringBuilder()).append("Update last pull time: ").append(l).toString());
        f.d = l;
        d.a(f);
    }

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            b = "http://ak.dxsvr.com/rec/get";
            return;
        }
        if (s.equals("test"))
        {
            b = "http://t1.tira.cn:8125/recommend/get";
            return;
        }
        if (s.equals("dev"))
        {
            b = "http://t1.tira.cn:8125/recommend/get";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("env only prod, test and dev: ").append(s).toString());
        }
    }

    private static Header b(long l)
    {
        return new BasicHeader("If-Modified-Since", lx.a(new Date(l)));
    }

    protected static JSONObject c(String s)
    {
        return (new JSONObject(s)).getJSONArray("datas").getJSONObject(0);
    }

    private long f()
    {
        return f.d;
    }

    protected String a()
    {
        return f.b;
    }

    public final void b()
    {
        pg.a().a(new nh(this));
    }

    protected abstract void b(String s);

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        long l;
        long l1;
        s = e;
        l = f();
        l1 = System.currentTimeMillis();
        if (l1 - l >= e()) goto _L2; else goto _L1
_L1:
        nz.b(a, "Less than 6 hours; drop this request.");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int i = oa.a(c);
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        nz.b(a, "Network not avaliable!");
          goto _L3
        Exception exception;
        exception;
        throw exception;
        HttpResponse httpresponse;
        int j;
        StringBuilder stringbuilder = (new StringBuilder(b)).append("?net=").append(i).append("&child=").append(s).append("&rv=").append("1.1");
        ArrayList arraylist = new ArrayList();
        arraylist.add(b(f.c));
        httpresponse = g.a(stringbuilder.toString(), arraylist);
        j = httpresponse.getStatusLine().getStatusCode();
        if (j == 200 || j == 304)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        nz.b(a, (new StringBuilder()).append("Http request failed: ").append(j).toString());
        a(l1);
          goto _L3
        if (j != 304)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        nz.b(a, "Content doesn't changed.");
        a(l1);
          goto _L3
        if (!nz.a()) goto _L5; else goto _L4
_L4:
        Header aheader[];
        int i1;
        aheader = httpresponse.getAllHeaders();
        i1 = aheader.length;
        int j1 = 0;
_L6:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        Header header = aheader[j1];
        nz.b(a, (new StringBuilder()).append(header.getName()).append(" = ").append(header.getValue()).toString());
        j1++;
        if (true) goto _L6; else goto _L5
_L5:
        JSONObject jsonobject;
        int k;
        jsonobject = lz.d(httpresponse);
        nz.b(a, (new StringBuilder()).append("Content Received: ").append(jsonobject).toString());
        k = jsonobject.getJSONObject("responseHeader").getInt("errcode");
        if (k == 200)
        {
            break MISSING_BLOCK_LABEL_443;
        }
        nz.b(a, (new StringBuilder()).append("bad response: ").append(jsonobject).toString());
        if (k != 404)
        {
            break MISSING_BLOCK_LABEL_434;
        }
        nz.b(a, "404 error");
        d();
        a(l1);
          goto _L3
        String s1 = jsonobject.getString("response");
        f.b = s1;
        f.c = a(httpresponse);
        f.d = l1;
        d.a(f);
        b(s1);
        a(l1);
          goto _L3
        IOException ioexception;
        ioexception;
        nz.a(a, "Unexpected excetpion: ", ioexception);
        a(l1);
          goto _L3
        JSONException jsonexception;
        jsonexception;
        nz.a(a, "Bad content: ", jsonexception);
        a(l1);
          goto _L3
        IllegalStateException illegalstateexception;
        illegalstateexception;
        nz.a(a, " IllegalStateException: ", illegalstateexception);
        a(l1);
          goto _L3
        Exception exception2;
        exception2;
        nz.a(a, " Exception: ", exception2);
        a(l1);
          goto _L3
        Exception exception1;
        exception1;
        a(l1);
        throw exception1;
    }

    protected abstract void d();

    protected long e()
    {
        return 0x1499700L;
    }

}
