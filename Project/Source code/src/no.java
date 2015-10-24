// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONArray;
import org.json.JSONObject;

public class no extends nt
{

    public no(Context context, oq oq)
    {
        super(context, oq);
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

    private static String a(Context context, int i, int j)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("pn", String.valueOf(i)));
        arraylist.add(new BasicNameValuePair("ps", String.valueOf(j)));
        arraylist.add(new BasicNameValuePair("sort", kr.a.toString()));
        StringBuilder stringbuilder = new StringBuilder();
        if (pa.a)
        {
            stringbuilder.append("http://t1.tira.cn:8125/overseathird/getbaidurec");
        } else
        {
            stringbuilder.append("http://overseasmisc.jccjd.com/overseathird/getbaidurec");
        }
        stringbuilder.append("?").append(a(context)).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8"));
        return stringbuilder.toString();
    }

    private static Header a(long l)
    {
        return new BasicHeader("If-Modified-Since", lx.a(new Date(l)));
    }

    private static HttpResponse a(String s, List list)
    {
        HttpGet httpget = new HttpGet((new StringBuilder(s)).append("&cv=1.0").append("&cflv=").append(ks.a()).toString());
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext(); httpget.addHeader((Header)iterator.next())) { }
        }
        httpget.addHeader(lz.b);
        if (nz.a())
        {
            nz.b("BaiduDataPuller", (new StringBuilder()).append("request uri: ").append(httpget.getURI()).append(", headers: ").append(Arrays.asList(httpget.getAllHeaders())).toString());
        }
        HttpConnectionParams.setSoTimeout(httpget.getParams(), 20000);
        DefaultHttpClient defaulthttpclient = lu.a();
        HttpResponse httpresponse;
        try
        {
            httpresponse = defaulthttpclient.execute(httpget);
        }
        catch (IOException ioexception)
        {
            httpget.abort();
            throw ioexception;
        }
        return httpresponse;
    }

    static void a(no no1, od od1)
    {
        no1.c(od1);
    }

    private void c(od od1)
    {
        int i = 0;
        HttpResponse httpresponse;
        int k;
        ob.a(b, od1.a, "st");
        int j = d("baidu");
        String s = a(b, 1, j);
        long l = om.h(b, "baidu");
        ArrayList arraylist = new ArrayList();
        arraylist.add(a(l));
        httpresponse = a(s.toString(), arraylist);
        k = httpresponse.getStatusLine().getStatusCode();
        if (k == 200 || k == 304)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        nz.b("BaiduDataPuller", (new StringBuilder()).append("Http request failed: ").append(k).toString());
        a(od1, -1);
        if (pi.a(b))
        {
            ob.a(b, "baidu", "404");
            return;
        }
        try
        {
            ob.a(b, "baidu", "nn");
            return;
        }
        catch (Exception exception)
        {
            nz.a("BaiduDataPuller", " Exception: ", exception);
        }
        a(od1, -1);
        ob.a(b, "baidu", "nn");
        return;
        if (k != 304)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        nz.b("BaiduDataPuller", "Content doesn't changed.");
        a(od1, 304);
        ob.a(b, "baidu", "sc");
        return;
        if (!nz.a()) goto _L2; else goto _L1
_L1:
        Header aheader[];
        int j1;
        aheader = httpresponse.getAllHeaders();
        j1 = aheader.length;
        int k1 = 0;
_L3:
        if (k1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        Header header = aheader[k1];
        nz.b("BaiduDataPuller", (new StringBuilder()).append(header.getName()).append(" = ").append(header.getValue()).toString());
        k1++;
        if (true) goto _L3; else goto _L2
_L2:
        JSONObject jsonobject;
        jsonobject = lz.d(httpresponse);
        if (jsonobject.getJSONObject("responseHeader").getInt("status") != 200)
        {
            nz.b("BaiduDataPuller", (new StringBuilder()).append("bad response: ").append(jsonobject).toString());
            a(od1, -1);
            ob.a(b, "baidu", "nn");
            return;
        }
        JSONArray jsonarray;
        ArrayList arraylist1;
        int i1;
        long l1 = a(httpresponse);
        om.b(b, "baidu", l1);
        jsonarray = jsonobject.getJSONObject("response").getJSONArray("datas");
        arraylist1 = new ArrayList();
        i1 = jsonarray.length();
_L5:
        if (i >= i1)
        {
            break MISSING_BLOCK_LABEL_498;
        }
        ou ou1;
        ou1 = a("baidu", i, jsonarray.getJSONObject(i));
        if (!ou1.a())
        {
            break MISSING_BLOCK_LABEL_532;
        }
        a(ou1);
        arraylist1.add(ou1);
        break MISSING_BLOCK_LABEL_532;
        oe oe1 = new oe(od1, 403, arraylist1);
        ob.a(b, "baidu", "sc");
        a(oe1);
        return;
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void a(od od1)
    {
        if ("baidu".equalsIgnoreCase(od1.a))
        {
            if (!nl.a(b).h())
            {
                nz.b("BaiduDataPuller", "baidu list is disabled.");
                a(od1, 304);
                return;
            } else
            {
                pg.a().a(new np(this, od1));
                return;
            }
        } else
        {
            super.a(od1);
            return;
        }
    }
}
