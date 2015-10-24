// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class ve
{

    public static URI a(Context context, String s, int i)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("fv", us.a()));
        arraylist.add(new BasicNameValuePair("token", gx.a(context)));
        String s1 = (new StringBuilder()).append(gt.a(context)).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
        URI uri;
        try
        {
            uri = URIUtils.createURI("http", s, i, "feedback/notify", s1, null);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return uri;
    }

    public static URI a(Context context, String s, int i, int j)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("pn", String.valueOf(j)));
        arraylist.add(new BasicNameValuePair("ps", String.valueOf(10)));
        arraylist.add(new BasicNameValuePair("fv", us.a()));
        arraylist.add(new BasicNameValuePair("token", gx.a(context)));
        String s1 = (new StringBuilder()).append(gt.a(context)).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
        URI uri;
        try
        {
            uri = URIUtils.createURI("http", s, i, "feedback/hot", s1, null);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            urisyntaxexception.printStackTrace();
            return null;
        }
        return uri;
    }
}
