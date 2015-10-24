// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.dianxinos.powermanager.PowerMangerApplication;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class bbk
{

    private static bbk f;
    public boolean a;
    private bbe b;
    private Object c;
    private bq d;
    private Context e;

    private bbk()
    {
        c = new Object();
        a = false;
        e = PowerMangerApplication.a();
        azi.a().a(new bbl(this));
        d = new bbm(this, (int)(Runtime.getRuntime().maxMemory() / 1024L / 10L));
    }

    static bbe a(bbk bbk1, bbe bbe1)
    {
        bbk1.b = bbe1;
        return bbe1;
    }

    public static bbk a()
    {
        if (f != null) goto _L2; else goto _L1
_L1:
        bbk;
        JVM INSTR monitorenter ;
        if (f == null)
        {
            f = new bbk();
        }
        bbk;
        JVM INSTR monitorexit ;
_L2:
        return f;
        Exception exception;
        exception;
        bbk;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Object a(bbk bbk1)
    {
        return bbk1.c;
    }

    static void a(bbk bbk1, String s)
    {
        bbk1.c(s);
    }

    static Context b(bbk bbk1)
    {
        return bbk1.e;
    }

    private void c(String s)
    {
    }

    public Bitmap a(String s, int i, int j)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = a;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        c("wait...");
        c.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        bbj bbj1 = b.a(aze.a(s));
        if (bbj1 == null)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        Bitmap bitmap;
        InputStream inputstream = bbj1.a(0);
        c((new StringBuilder()).append("decode bitmap w:").append(i).append(" h:").append(j).toString());
        bitmap = bbp.a(inputstream, i, j);
        return bitmap;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return null;
    }

    public BitmapDrawable a(String s)
    {
        BitmapDrawable bitmapdrawable = (BitmapDrawable)d.a(s);
        if (bitmapdrawable == null)
        {
            c("mem cache missing");
        }
        return bitmapdrawable;
    }

    public void a(InputStream inputstream, String s)
    {
        IOException ioexception;
        BufferedOutputStream bufferedoutputstream;
        BufferedInputStream bufferedinputstream;
        Exception exception;
        BufferedOutputStream bufferedoutputstream1;
        IOException ioexception1;
        IOException ioexception2;
        IOException ioexception3;
        IOException ioexception4;
        bbg bbg1;
        BufferedOutputStream bufferedoutputstream2;
        IOException ioexception5;
        IOException ioexception6;
        byte abyte0[];
        int i;
        try
        {
            bbg1 = b.b(aze.a(s));
            bufferedinputstream = new BufferedInputStream(inputstream, 4096);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            bufferedinputstream = null;
            bufferedoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bufferedinputstream = null;
            bufferedoutputstream1 = null;
        }
_L9:
        bufferedoutputstream2 = null;
        if (bufferedinputstream == null) goto _L2; else goto _L1
_L1:
        bufferedoutputstream2 = null;
        if (bbg1 == null) goto _L2; else goto _L3
_L3:
        bufferedoutputstream1 = new BufferedOutputStream(bbg1.a(0));
        abyte0 = new byte[4096];
_L6:
        i = bufferedinputstream.read(abyte0);
        if (i == -1) goto _L5; else goto _L4
_L4:
        bufferedoutputstream1.write(abyte0, 0, i);
          goto _L6
        ioexception;
        bufferedoutputstream = bufferedoutputstream1;
_L12:
        ioexception.printStackTrace();
        if (bufferedinputstream != null)
        {
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception4) { }
        }
        if (bufferedoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        bufferedoutputstream.close();
_L8:
        return;
_L5:
        bufferedoutputstream1.flush();
        c((new StringBuilder()).append("download complete ").append(s).toString());
        bbg1.a();
        bufferedoutputstream2 = bufferedoutputstream1;
_L2:
        if (bufferedinputstream != null)
        {
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception6) { }
        }
        if (bufferedoutputstream2 == null) goto _L8; else goto _L7
_L7:
        try
        {
            bufferedoutputstream2.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception5)
        {
            return;
        }
_L10:
        if (bufferedinputstream != null)
        {
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2) { }
        }
        if (bufferedoutputstream1 != null)
        {
            try
            {
                bufferedoutputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1) { }
        }
        throw exception;
        ioexception3;
        return;
        exception;
        bufferedoutputstream1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedoutputstream1 = bufferedoutputstream;
        if (true) goto _L10; else goto _L9
        ioexception;
        bufferedoutputstream = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public void a(String s, bbo bbo)
    {
        d.a(s, bbo);
    }

    public boolean b(String s)
    {
        if (d.a(s) == null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
_L3:
        boolean flag = a;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        c("wait...");
        c.wait();
          goto _L3
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L3
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        bbj bbj1 = b.a(aze.a(s));
        if (bbj1 != null) goto _L1; else goto _L4
_L4:
        return false;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        if (true) goto _L4; else goto _L5
_L5:
    }
}
