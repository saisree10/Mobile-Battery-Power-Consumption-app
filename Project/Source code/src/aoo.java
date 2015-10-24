// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;

class aoo
    implements Runnable
{

    final aoj a;
    private final ArrayList b;
    private bbk c;

    public aoo(aoj aoj1, ArrayList arraylist)
    {
        a = aoj1;
        super();
        b = arraylist;
        c = bbk.a();
    }

    private void a(String s)
    {
        aoj.b((new StringBuilder()).append("handle ").append(s).toString());
        if (!c.b(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        InputStream inputstream = null;
        inputstream = aoj.e(a).getAssets().open((new StringBuilder()).append("image/").append(aze.a(s)).toString());
        aoj.b("copy from asset");
        c.a(inputstream, s);
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
                return;
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
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
            aoj.b((new StringBuilder()).append("start download... ").append(s).toString());
            URLConnection urlconnection = url.openConnection();
            urlconnection.setReadTimeout(5000);
            urlconnection.setConnectTimeout(5000);
            c.a(urlconnection.getInputStream(), s);
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

    public void run()
    {
        Iterator iterator = b.iterator();
        int i = 0;
        do
        {
            aon aon1;
label0:
            {
                if (iterator.hasNext())
                {
                    aon1 = (aon)iterator.next();
                    if (++i <= 2)
                    {
                        break label0;
                    }
                }
                return;
            }
            a(aon1.d);
            Iterator iterator1 = aon1.a.iterator();
            while (iterator1.hasNext()) 
            {
                a(((aev)iterator1.next()).k);
            }
        } while (true);
    }
}
