// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class jr
{

    private static final boolean c;
    private static Context e;
    public jy a;
    private String b;
    private String d;

    public jr()
    {
        b = "http://u.dxsvr.com/api/apps";
        d = "pref_update_info_etag";
    }

    private File a(String s, Context context)
    {
        if (!TextUtils.isEmpty(s) && context != null)
        {
            return new File(context.getFilesDir(), s);
        } else
        {
            return null;
        }
    }

    private void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
_L1:
        return;
        Exception exception;
        exception;
        if (it.a)
        {
            Log.i("RequestHelper", "file close errorr", exception);
            return;
        }
          goto _L1
    }

    private boolean a(Context context, String s)
    {
        if (context == null || TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        File file = a(s, context);
        if (file != null && file.exists() && file.isFile()) goto _L3; else goto _L2
_L2:
        String s1;
        return false;
_L3:
        boolean flag;
        if (TextUtils.isEmpty(s1 = iw.a(file)))
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = s1.equals(jo.a(e, "pref_cache_file_md5"));
        return flag;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        if (c)
        {
            Log.i("RequestHelper", "isCacheFileValid: cachefile not found", filenotfoundexception);
            return false;
        }
        if (true) goto _L2; else goto _L4
_L4:
    }

    private boolean a(InputStream inputstream, String s, Context context)
    {
        boolean flag = false;
        if (context == null) goto _L2; else goto _L1
_L1:
        boolean flag1;
        flag1 = TextUtils.isEmpty(s);
        flag = false;
        if (flag1) goto _L2; else goto _L3
_L3:
        FileOutputStream fileoutputstream = null;
        byte abyte0[];
        abyte0 = new byte[8192];
        fileoutputstream = context.openFileOutput(s, 0);
_L6:
        int i = inputstream.read(abyte0);
        if (i == -1) goto _L5; else goto _L4
_L4:
        fileoutputstream.write(abyte0, 0, i);
          goto _L6
        Exception exception1;
        exception1;
        boolean flag2;
        c(s);
        flag2 = c;
        flag = false;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        Log.i("RequestHelper", "file load into memory error", exception1);
_L8:
        a(((Closeable) (fileoutputstream)));
_L2:
        return flag;
_L5:
        fileoutputstream.flush();
        flag = true;
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception;
        exception;
        a(((Closeable) (fileoutputstream)));
        throw exception;
    }

    private String b(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            String s1 = iw.a(s);
            if (TextUtils.isEmpty(s1))
            {
                s1 = "appupdate_info_cache";
            }
            return s1;
        } else
        {
            return null;
        }
    }

    private void c(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            File file = a(s, e);
            if (file.exists())
            {
                file.delete();
            }
        }
    }

    private InputStream d(String s)
    {
        java.io.FileInputStream fileinputstream;
        try
        {
            fileinputstream = e.openFileInput(s);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            if (it.a)
            {
                Log.e("RequestHelper", "loadCacheFile: fail to loadCacheFile,fai not found", filenotfoundexception);
            }
            a(((Closeable) (null)));
            return null;
        }
        return fileinputstream;
    }

    protected InputStream a(String s, String s1, List list)
    {
        String s2;
        HttpGet httpget;
        DefaultHttpClient defaulthttpclient;
        String s3;
        String s4;
        boolean flag;
        Exception exception;
        Object obj;
        Throwable throwable;
        InputStream inputstream;
        IOException ioexception;
        SocketTimeoutException sockettimeoutexception;
        long l;
        ka ka1;
        long l1;
        HttpResponse httpresponse;
        int i;
        Header header;
        String s5;
        InputStream inputstream1;
        String s6;
        InputStream inputstream2;
        InputStream inputstream3;
        if (list != null)
        {
            String s7 = URLEncodedUtils.format(list, "UTF-8");
            s2 = (new StringBuilder()).append(s).append("?").append(s7).toString();
            if (s1 != null)
            {
                s2 = (new StringBuilder()).append(s2).append("&").append(s1).toString();
            }
        } else
        if (s1 != null)
        {
            s2 = (new StringBuilder()).append(s).append("?").append(s1).toString();
        } else
        {
            s2 = s;
        }
        if (c)
        {
            Log.d("RequestHelper", (new StringBuilder()).append("request url is: ").append(s2).toString());
        }
        httpget = new HttpGet(s2);
        defaulthttpclient = kj.a(a);
        httpget.setHeader("User-Agent", "Appupdate model");
        s3 = b(s);
        s4 = jo.a(e, d);
        flag = a(e, s3);
        if (!TextUtils.isEmpty(s4) && flag)
        {
            httpget.addHeader("If-None-Match", s4);
        }
        httpresponse = defaulthttpclient.execute(httpget);
        i = httpresponse.getStatusLine().getStatusCode();
        if (c)
        {
            Log.i("RequestHelper", (new StringBuilder()).append("old ETag: ").append(s4).append(", cache valid: ").append(flag).toString());
            Log.i("RequestHelper", (new StringBuilder()).append("Get response for ").append(httpget.getURI()).append(", status:").append(i).toString());
        }
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        header = httpresponse.getFirstHeader("ETag");
        if (header == null)
        {
            break MISSING_BLOCK_LABEL_371;
        }
        s5 = header.getValue();
        if (!TextUtils.isEmpty(s5))
        {
            jo.b(e, d, s5);
            if (c)
            {
                Log.i("RequestHelper", (new StringBuilder()).append("new ETag: ").append(s5).toString());
            }
        }
        inputstream1 = httpresponse.getEntity().getContent();
        inputstream = inputstream1;
        if (!a(inputstream, s3, e))
        {
            break MISSING_BLOCK_LABEL_518;
        }
        s6 = iw.a(a(s3, e));
        if (TextUtils.isEmpty(s6))
        {
            break MISSING_BLOCK_LABEL_484;
        }
        jo.b(e, "pref_cache_file_md5", s6);
        inputstream2 = d(s3);
        a(((Closeable) (inputstream)));
        return inputstream2;
        jo.b(e, "pref_cache_file_md5", null);
        jo.b(e, d, null);
        c(s3);
        a(((Closeable) (inputstream)));
        return null;
        jo.b(e, d, null);
        a(((Closeable) (inputstream)));
        return null;
        if (i != 304) goto _L2; else goto _L1
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_581;
        }
        if (c)
        {
            Log.d("RequestHelper", "get update info for local cache");
        }
        inputstream3 = d(s3);
        a(((Closeable) (null)));
        return inputstream3;
        a(((Closeable) (null)));
        return null;
        sockettimeoutexception;
        inputstream = null;
_L9:
        if (!kj.e(e))
        {
            break MISSING_BLOCK_LABEL_643;
        }
        l = 0xdbba00L;
        ka1 = ka.a(e);
        l1 = ka1.e();
        if (l > l1)
        {
            l = l1;
        }
        ka1.a(l, l1);
        sockettimeoutexception.printStackTrace();
_L3:
        a(((Closeable) (inputstream)));
_L4:
        return null;
        ioexception;
        inputstream = null;
_L7:
        ioexception.printStackTrace();
          goto _L3
        exception;
        obj = inputstream;
_L5:
        a(((Closeable) (obj)));
        throw exception;
        throwable;
        inputstream = null;
_L6:
        throwable.printStackTrace();
          goto _L3
_L2:
        a(((Closeable) (null)));
          goto _L4
        exception;
        obj = null;
          goto _L5
        throwable;
          goto _L6
        ioexception;
          goto _L7
        sockettimeoutexception;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public String a()
    {
        switch (it.a())
        {
        default:
            return b;

        case 1: // '\001'
            return "http://u.dxsvr.com/api/apps";

        case 2: // '\002'
            return it.c;
        }
    }

    public js a(int i, String s, Context context)
    {
        BufferedReader bufferedreader;
        String s1;
        e = context.getApplicationContext();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("ver", String.valueOf(i)));
        arraylist.add(new BasicNameValuePair("sig", s));
        arraylist.add(new BasicNameValuePair("uv", kk.a()));
        InputStream inputstream;
        String s2;
        String s3;
        if (jo.a(context, "pref_appupdate_start_version_code", -1) != i)
        {
            arraylist.add(new BasicNameValuePair("sd", "0"));
        } else
        {
            arraylist.add(new BasicNameValuePair("sd", String.valueOf(jo.a(context, "pref_appupdate_start_version_times", 0))));
        }
        inputstream = a((new StringBuilder()).append(a()).append("/check_update").toString(), gt.a(context), ((List) (arraylist)));
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream, "UTF-8"));
        s1 = "";
_L4:
        s2 = bufferedreader.readLine();
        if (s2 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        s3 = (new StringBuilder()).append(s1).append(s2).append("\n").toString();
        s1 = s3;
        if (true) goto _L4; else goto _L3
_L3:
        if (c)
        {
            Log.i("RequestHelper", (new StringBuilder()).append("response=").append(s1).toString());
        }
        js js1;
        UnsupportedEncodingException unsupportedencodingexception;
        BufferedReader bufferedreader1;
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1) { }
        }
_L6:
        js1 = a(s1);
_L8:
        return js1;
        unsupportedencodingexception;
        bufferedreader1 = null;
        s1 = "";
_L11:
        unsupportedencodingexception.printStackTrace();
        if (bufferedreader1 == null)
        {
            break MISSING_BLOCK_LABEL_298;
        }
        bufferedreader1.close();
        break MISSING_BLOCK_LABEL_298;
        IOException ioexception2;
        ioexception2;
        bufferedreader = null;
        s1 = "";
_L10:
        ioexception2.printStackTrace();
        if (bufferedreader == null) goto _L6; else goto _L5
_L5:
        bufferedreader.close();
          goto _L6
        Exception exception1;
        exception1;
        Exception exception;
        bufferedreader = null;
        exception = exception1;
_L9:
        boolean flag;
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
_L2:
        if (c)
        {
            Log.w("RequestHelper", "Network error when checking update");
        }
        flag = c;
        js1 = null;
        if (!flag) goto _L8; else goto _L7
_L7:
        Log.w("RequestHelper", (new StringBuilder()).append("Response format error when checking update for pkg:").append(context.getPackageName()).toString());
        return null;
        exception;
          goto _L9
        exception;
        bufferedreader = bufferedreader1;
          goto _L9
        ioexception2;
          goto _L10
        unsupportedencodingexception;
        bufferedreader1 = bufferedreader;
          goto _L11
    }

    protected js a(String s)
    {
        int i = 0;
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        js js1 = new js();
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.optBoolean("ava", false)) goto _L4; else goto _L3
_L3:
        int j;
        String s1;
        String s2;
        long l;
        js1.a = true;
        j = jsonobject.optInt("vc", -1);
        s1 = jsonobject.optString("vn");
        s2 = jsonobject.optString("url");
        l = jsonobject.optLong("size", 0L);
        if (j <= 0 || s1 == null || s2 == null) goto _L6; else goto _L5
_L5:
        int k;
        String s3;
        ArrayList arraylist;
        String as[];
        int i1;
        try
        {
            js1.c = j;
            js1.b = s1;
            js1.f = s2;
            js1.d = jsonobject.optString("dspt");
            js1.h = jsonobject.optString("md5");
            js1.i = jsonobject.optString("pkg");
            k = jsonobject.optInt("prt", 0);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        if (k >= 0 && k <= 3) goto _L8; else goto _L7
_L7:
        if (c)
        {
            Log.w("RequestHelper", (new StringBuilder()).append("Illegal priority:").append(k).toString());
        }
          goto _L9
_L8:
        js1.e = k;
        s3 = jsonobject.optString("markets");
        arraylist = new ArrayList();
        if (TextUtils.isEmpty(s3)) goto _L11; else goto _L10
_L10:
        as = s3.split(",");
        i1 = as.length;
_L12:
        if (i >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(as[i]);
        i++;
        if (true) goto _L12; else goto _L11
_L11:
        js1.j = arraylist;
        js1.g = new HashMap();
        js1.g.put("update-file-size", String.valueOf(l));
        js1.g.put("udpate-no-check-delay", String.valueOf(jsonobject.optLong("nocheck_delay", 0xa4cb800L)));
        return js1;
_L6:
        js1.a = false;
        return js1;
_L2:
        return null;
_L9:
        k = 0;
        if (true) goto _L8; else goto _L4
_L4:
        return js1;
    }

    public void a(jy jy)
    {
        a = jy;
    }

    static 
    {
        c = it.a;
    }
}
