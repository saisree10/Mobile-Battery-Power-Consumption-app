// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.net.URI;
import java.util.Date;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;

public class vc
{

    public static String a = "If-Modified-Since";
    public static String b = "Last-Modified";

    public static vb a(Context context, URI uri, long l)
    {
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        HttpGet httpget;
        vt.b("NetWorkConnectionUtil", (new StringBuilder()).append(" updateHotTopicByPageNum uri ").append(uri.toString()).toString());
        httpget = new HttpGet(uri.toString());
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        httpget.addHeader(a, vv.a(new Date(l)));
        vt.b("NetWorkConnectionUtil", (new StringBuilder()).append(" add lastModify time ").append(vv.a(new Date(l))).toString());
        HttpResponse httpresponse = (new va(context)).execute(httpget);
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            org.json.JSONObject jsonobject = vd.a(httpresponse);
            if (vd.a(jsonobject) == 200)
            {
                httpresponse.getHeaders(vv.b);
                return new vb(uri.toString(), jsonobject, vv.a(httpresponse));
            }
        }
        vt.a("NetWorkConnectionUtil", (new StringBuilder()).append(" response status error ").append(httpresponse.getStatusLine().getStatusCode()).toString());
_L2:
        return null;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static vf b(Context context, URI uri, long l)
    {
        if (uri != null)
        {
            try
            {
                vt.b("NetWorkConnectionUtil", (new StringBuilder()).append(" getNotify uri ").append(uri.toString()).toString());
                HttpGet httpget = new HttpGet(uri.toString());
                HttpResponse httpresponse = (new va(context)).execute(httpget);
                if (httpresponse.getStatusLine().getStatusCode() == 200)
                {
                    org.json.JSONObject jsonobject = vd.a(httpresponse);
                    if (vd.a(jsonobject) == 200)
                    {
                        return vd.d(jsonobject);
                    }
                }
                vt.a("NetWorkConnectionUtil", (new StringBuilder()).append(" response status error ").append(httpresponse.getStatusLine().getStatusCode()).toString());
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        return null;
    }

}
