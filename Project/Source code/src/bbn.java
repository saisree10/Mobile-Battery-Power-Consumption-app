// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.widget.ImageView;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class bbn extends bat
{

    private WeakReference a;
    private String e;
    private bbk f;
    private bbo g;
    private Context h;

    public bbn(Context context, ImageView imageview, String s, bbk bbk1)
    {
        a = new WeakReference(imageview);
        f = bbk1;
        h = context;
        e = s;
    }

    private void a(String s)
    {
        InputStream inputstream = null;
        inputstream = h.getAssets().open((new StringBuilder()).append("image/").append(aze.a(s)).toString());
        b("copy from asset");
        f.a(inputstream, s);
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        inputstream.close();
        return;
        IOException ioexception3;
        ioexception3;
        ioexception3.printStackTrace();
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        URL url;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        }
        Exception exception;
        IOException ioexception;
        try
        {
            url = new URL(s);
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            return;
        }
        try
        {
            b((new StringBuilder()).append("start download... ").append(s).toString());
            URLConnection urlconnection = url.openConnection();
            urlconnection.setReadTimeout(5000);
            urlconnection.setConnectTimeout(5000);
            f.a(urlconnection.getInputStream(), s);
            return;
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        return;
        exception;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
    }

    private void b(String s)
    {
    }

    protected transient Bitmap a(Integer ainteger[])
    {
        b((new StringBuilder()).append("Loading bitmap... ").append(e).toString());
        int i = ainteger[0].intValue();
        int j = ainteger[1].intValue();
        if (d())
        {
            return null;
        }
        Bitmap bitmap = f.a(e, i, j);
        if (bitmap == null)
        {
            b((new StringBuilder()).append("Cache missing... ").append(e).toString());
            if (d())
            {
                return null;
            }
            a(e);
            bitmap = f.a(e, i, j);
        }
        g = new bbo(h.getResources(), bitmap);
        g.a(true);
        f.a(e, g);
        return bitmap;
    }

    protected volatile Object a(Object aobj[])
    {
        return a((Integer[])aobj);
    }

    public void a(Bitmap bitmap)
    {
        if (d())
        {
            g = null;
        } else
        {
            ImageView imageview = (ImageView)a.get();
            if (imageview != null)
            {
                int i = ((Integer)imageview.getTag()).intValue();
                if (e.hashCode() == i)
                {
                    imageview.setImageDrawable(g);
                    return;
                }
            }
        }
    }

    public volatile void a(Object obj)
    {
        a((Bitmap)obj);
    }
}
