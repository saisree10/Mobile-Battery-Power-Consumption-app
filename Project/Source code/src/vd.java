// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class vd
{

    public static int a(JSONObject jsonobject)
    {
        if (!jsonobject.has("responseHeader"))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        int i;
        JSONObject jsonobject1 = jsonobject.getJSONObject("responseHeader");
        if (!jsonobject1.has("errcode"))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        i = jsonobject1.getInt("errcode");
        return i;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return -1;
    }

    public static JSONObject a(HttpResponse httpresponse)
    {
        HttpEntity httpentity = httpresponse.getEntity();
        java.io.InputStream inputstream = httpentity.getContent();
        Header header = httpentity.getContentEncoding();
        Object obj;
        BufferedReader bufferedreader;
        StringBuffer stringbuffer;
        if (header != null && header.getValue().indexOf("gzip") != -1)
        {
            obj = new GZIPInputStream(inputstream);
        } else
        {
            obj = inputstream;
        }
        bufferedreader = new BufferedReader(new InputStreamReader(((java.io.InputStream) (obj))));
        stringbuffer = new StringBuffer("");
        do
        {
            String s = bufferedreader.readLine();
            if (s != null)
            {
                stringbuffer.append(s);
            } else
            {
                vt.b("NetWorkJsonUtil", (new StringBuilder()).append(" toJson Object get response ").append(stringbuffer.toString()).toString());
                return new JSONObject(stringbuffer.toString());
            }
        } while (true);
    }

    public static ArrayList b(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        if (jsonobject.has("response"))
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("response");
            if (jsonobject1.has("advise"))
            {
                JSONArray jsonarray = jsonobject1.getJSONArray("advise");
                for (int i = 0; i < jsonarray.length(); i++)
                {
                    JSONObject jsonobject2 = jsonarray.getJSONObject(i);
                    uz uz1 = new uz(jsonobject2.getString("feedbackId"), jsonobject2.getString("content"), jsonobject2.getLong("modifiedTime"), jsonobject2.getInt("replyCount"), jsonobject2.getInt("replyState"));
                    arraylist.add(uz1);
                    if (!jsonobject2.has("atts"))
                    {
                        continue;
                    }
                    JSONArray jsonarray1 = jsonobject2.getJSONArray("atts");
                    ArrayList arraylist1 = new ArrayList();
                    for (int j = 0; j < jsonarray1.length(); j++)
                    {
                        JSONObject jsonobject3 = jsonarray1.getJSONObject(j);
                        arraylist1.add(new uw(jsonobject3.getString("type"), jsonobject3.getString("url"), uz1.b(), 1));
                    }

                    uz1.a(arraylist1);
                }

            }
        }
        return arraylist;
    }

    public static ArrayList c(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        if (jsonobject.has("response"))
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("response");
            if (jsonobject1.has("hots"))
            {
                JSONArray jsonarray = jsonobject1.getJSONArray("hots");
                for (int i = 0; i < jsonarray.length(); i++)
                {
                    JSONObject jsonobject2 = jsonarray.getJSONObject(i);
                    arraylist.add(new uy(jsonobject2.getString("hotId"), jsonobject2.getString("title"), jsonobject2.getString("content"), jsonobject2.getLong("modifiedTime"), jsonobject2.optInt("isHot", -1)));
                }

            }
        }
        return arraylist;
    }

    public static vf d(JSONObject jsonobject)
    {
        long l = -1L;
        if (!jsonobject.has("response")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1;
        jsonobject1 = jsonobject.getJSONObject("response");
        if (jsonobject1.has("nextreqtime"))
        {
            l = 1000L * (long)(60 * jsonobject1.getInt("nextreqtime"));
        }
        if (!jsonobject1.has("total")) goto _L2; else goto _L3
_L3:
        long l1;
        int i;
        int j = jsonobject1.getInt("total");
        l1 = l;
        i = j;
_L5:
        return new vf(l1, i);
_L2:
        l1 = l;
        i = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
