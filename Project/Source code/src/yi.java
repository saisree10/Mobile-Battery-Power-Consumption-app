// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.ImageView;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class yi
{

    private static final HashMap c = new yj(5, 0.75F, true);
    private static final ConcurrentHashMap d = new ConcurrentHashMap(5);
    private Thread a;
    private String b;
    private final Handler e = new Handler();
    private final Runnable f = new yk(this);

    public yi(Context context, int i)
    {
        a = Thread.currentThread();
        b = zl.d;
    }

    public static Bitmap a(String s)
    {
        HashMap hashmap = c;
        hashmap;
        JVM INSTR monitorenter ;
        Bitmap bitmap = (Bitmap)c.get(s);
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        c.remove(s);
        c.put(s, bitmap);
        hashmap;
        JVM INSTR monitorexit ;
        return bitmap;
        hashmap;
        JVM INSTR monitorexit ;
        Bitmap bitmap1;
        SoftReference softreference = (SoftReference)d.get(s);
        if (softreference != null)
        {
            bitmap1 = (Bitmap)softreference.get();
            if (bitmap1 != null)
            {
                break MISSING_BLOCK_LABEL_91;
            }
            d.remove(s);
        }
        return null;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        return bitmap1;
    }

    static Bitmap a(yi yi1, String s)
    {
        return yi1.e(s);
    }

    static Thread a(yi yi1)
    {
        return yi1.a;
    }

    static yl a(ImageView imageview)
    {
        return b(imageview);
    }

    private void a(String s, Bitmap bitmap)
    {
        if (bitmap != null)
        {
            synchronized (c)
            {
                c.put(s, bitmap);
            }
            return;
        } else
        {
            return;
        }
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(yi yi1, String s, Bitmap bitmap)
    {
        yi1.a(s, bitmap);
    }

    public static boolean a(Context context, String s)
    {
        String s1 = b(s);
        return a(context, s, zl.d, s1);
    }

    public static boolean a(Context context, String s, String s1, String s2)
    {
        Object obj;
        File file1;
        obj = null;
        File file = new File(s1);
        if (!file.exists())
        {
            file.mkdirs();
        }
        file1 = new File(s1, s2);
        HttpURLConnection httpurlconnection2 = b(context, s);
        HttpURLConnection httpurlconnection;
        Object obj1;
        HttpURLConnection httpurlconnection1;
        httpurlconnection = httpurlconnection2;
        Exception exception;
        Exception exception1;
        IOException ioexception;
        Exception exception2;
        InputStream inputstream;
        try
        {
            httpurlconnection.connect();
            inputstream = httpurlconnection.getInputStream();
        }
        catch (IOException ioexception1)
        {
            httpurlconnection1 = httpurlconnection;
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            exception1 = exception3;
            obj1 = null;
            continue; /* Loop/switch isn't completed */
        }
_L1:
        obj1 = inputstream;
        zq.a(((InputStream) (obj1)), file1);
        zq.a(((java.io.Closeable) (obj1)));
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        return true;
        ioexception;
        httpurlconnection1 = null;
_L4:
        file1.delete();
        zq.a(((java.io.Closeable) (obj)));
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
        return false;
        exception;
        httpurlconnection = null;
        exception1 = exception;
        obj1 = null;
_L2:
        zq.a(((java.io.Closeable) (obj1)));
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception1;
        exception1;
        continue; /* Loop/switch isn't completed */
        exception2;
        httpurlconnection = httpurlconnection1;
        obj1 = obj;
        exception1 = exception2;
        if (true) goto _L2; else goto _L1
        IOException ioexception2;
        ioexception2;
        obj = obj1;
        httpurlconnection1 = httpurlconnection;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static boolean a(String s, String s1)
    {
        return (new File(s1, b(s))).exists();
    }

    public static Bitmap b(String s, String s1)
    {
        Bitmap bitmap = a(s);
        if (bitmap == null)
        {
            String s2 = b(s);
            File file = new File(s1, s2);
            if (file.exists())
            {
                bitmap = ze.a(file.getAbsolutePath());
                if (bitmap == null)
                {
                    ze.b(s1, s2);
                }
            }
        }
        return bitmap;
    }

    public static String b(String s)
    {
        return Pattern.compile("[^a-zA-Z0-9]").matcher(s).replaceAll("").trim();
    }

    private static HttpURLConnection b(Context context, String s)
    {
        HttpURLConnection httpurlconnection = zv.a(context, s);
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.setConnectTimeout(8000);
        httpurlconnection.setReadTimeout(8000);
        return httpurlconnection;
    }

    static ConcurrentHashMap b()
    {
        return d;
    }

    private static yl b(ImageView imageview)
    {
        if (imageview != null)
        {
            android.graphics.drawable.Drawable drawable = imageview.getDrawable();
            if (drawable instanceof ym)
            {
                return ((ym)drawable).a();
            }
        }
        return null;
    }

    private void b(String s, ImageView imageview)
    {
        while (TextUtils.isEmpty(s) || !c(s, imageview)) 
        {
            return;
        }
        yl yl1 = new yl(this, imageview);
        ym ym1 = new ym(null, yl1);
        if (ym1 != null && imageview != null)
        {
            imageview.setImageDrawable(ym1);
        }
        yl1.a(bat.b, new String[] {
            s
        });
    }

    private void c()
    {
        e.removeCallbacks(f);
        e.postDelayed(f, 10000L);
    }

    public static boolean c(String s)
    {
        return a(s, zl.d);
    }

    private static boolean c(String s, ImageView imageview)
    {
label0:
        {
            yl yl1 = b(imageview);
            if (yl1 != null)
            {
                String s1 = yl.a(yl1);
                if (s1 != null && s1.equals(s))
                {
                    break label0;
                }
                yl1.a(true);
            }
            return true;
        }
        return false;
    }

    public static Bitmap d(String s)
    {
        return b(s, zl.d);
    }

    private Bitmap e(String s)
    {
        if (s == null || "".equals(s)) goto _L2; else goto _L1
_L1:
        URLConnection urlconnection;
        InputStream inputstream1;
        urlconnection = (new URL(s)).openConnection();
        urlconnection.setConnectTimeout(10000);
        urlconnection.setReadTimeout(10000);
        urlconnection.connect();
        inputstream1 = urlconnection.getInputStream();
        InputStream inputstream = inputstream1;
        String s1 = b(s);
        if (urlconnection.getURL() == null) goto _L4; else goto _L3
_L3:
        boolean flag = urlconnection.getURL().toString().endsWith("dashi_default_head_middle.gif");
        if (!flag) goto _L4; else goto _L5
_L5:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception7)
            {
                ioexception7.printStackTrace();
                return null;
            }
            catch (NumberFormatException numberformatexception6)
            {
                zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception6);
                return null;
            }
        }
_L2:
        return null;
_L4:
        long l = urlconnection.getLastModified();
        if (inputstream == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Bitmap bitmap = BitmapFactory.decodeStream(new yn(inputstream));
        if (bitmap == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        ze.a(b, s1, bitmap, l);
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
            catch (NumberFormatException numberformatexception5)
            {
                zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception5);
            }
        }
        return bitmap;
        if (inputstream == null) goto _L2; else goto _L6
_L6:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception5)
        {
            ioexception5.printStackTrace();
            return null;
        }
        catch (NumberFormatException numberformatexception4)
        {
            zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception4);
            return null;
        }
        return null;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        inputstream = null;
_L14:
        zs.a("ImageDownloader", (new StringBuilder()).append("Bad URL: ").append(s).toString(), malformedurlexception);
        if (inputstream == null) goto _L2; else goto _L7
_L7:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception4)
        {
            ioexception4.printStackTrace();
            return null;
        }
        catch (NumberFormatException numberformatexception3)
        {
            zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception3);
            return null;
        }
        return null;
        IOException ioexception2;
        ioexception2;
        inputstream = null;
_L13:
        zs.a("ImageDownloader", "Some bad things happened!", ioexception2);
        if (inputstream == null) goto _L2; else goto _L8
_L8:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
            return null;
        }
        catch (NumberFormatException numberformatexception2)
        {
            zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception2);
            return null;
        }
        return null;
        SecurityException securityexception;
        securityexception;
        inputstream = null;
_L12:
        zs.a("ImageDownloader", "Unexpected exeption", securityexception);
        if (inputstream == null) goto _L2; else goto _L9
_L9:
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
            return null;
        }
        catch (NumberFormatException numberformatexception1)
        {
            zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception1);
            return null;
        }
        return null;
        Exception exception;
        exception;
        Exception exception1;
        inputstream = null;
        exception1 = exception;
_L11:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            catch (NumberFormatException numberformatexception)
            {
                zs.a("ImageDownloader", "Unexpected exeption!", numberformatexception);
            }
        }
        throw exception1;
        exception1;
        if (true) goto _L11; else goto _L10
_L10:
        securityexception;
          goto _L12
        ioexception2;
          goto _L13
        malformedurlexception;
          goto _L14
    }

    public void a()
    {
        c.clear();
        d.clear();
    }

    public void a(String s, ImageView imageview)
    {
        if (azu.a()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Bitmap bitmap;
        c();
        bitmap = a(s);
        if (bitmap != null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = b(s);
        boolean flag = true;
        if (ze.a(b, s1))
        {
            bitmap = ze.a((new StringBuilder()).append(b).append(s1).toString());
            if (bitmap == null)
            {
                ze.b(b, s1);
            } else
            {
                flag = false;
            }
        }
        if (flag)
        {
            b(s, imageview);
            return;
        }
        a(s, bitmap);
        if (bitmap != null && imageview != null)
        {
            imageview.setImageBitmap(bitmap);
            imageview.setVisibility(0);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        c(s, imageview);
        if (bitmap != null && imageview != null)
        {
            imageview.setImageBitmap(bitmap);
            imageview.setVisibility(0);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

}
