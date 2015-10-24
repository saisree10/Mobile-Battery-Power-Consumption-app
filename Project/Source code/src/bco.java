// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.Socket;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public class bco
{

    private static final String C = bco.getName();
    public static String a = "TrustDefender Mobile: 1.2.4-3";
    ArrayList A;
    ArrayList B;
    private Context D;
    private Thread E;
    private bci F;
    private String G;
    private ReentrantLock H;
    private ReentrantLock I;
    private volatile boolean J;
    private volatile bcq K;
    private volatile boolean L;
    private bch M;
    private bcn N;
    String b;
    int c;
    String d;
    Socket e;
    String f;
    String g;
    String h;
    int i;
    int j;
    int k;
    int l;
    String m;
    String n;
    String o;
    String p;
    String q;
    String r;
    int s;
    String t;
    String u;
    String v;
    int w;
    String x;
    String y;
    boolean z;

    public bco()
    {
        b = null;
        c = 10000;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        m = null;
        n = null;
        o = null;
        p = "0";
        q = null;
        r = null;
        s = 0;
        t = null;
        u = null;
        v = null;
        w = 0;
        x = null;
        y = null;
        z = false;
        A = null;
        D = null;
        E = null;
        F = null;
        B = new ArrayList();
        H = new ReentrantLock();
        I = new ReentrantLock();
        K = bcq.b;
        N = new bcn();
    }

    private bcq a(String s1, String s2, String s3, int i1, StringBuilder stringbuilder)
    {
        bcb bcb1 = new bcb(s1, s2, s3, i1, stringbuilder);
        Thread thread;
        thread = new Thread(bcb1);
        H.lockInterruptibly();
        thread.start();
        B.add(thread);
        thread.join(i1);
        if (!thread.isAlive()) goto _L2; else goto _L1
_L1:
        thread.interrupt();
        Thread thread1 = null;
_L4:
        B.remove(thread1);
        H.unlock();
        if (stringbuilder != null && stringbuilder.length() > 0)
        {
            C;
            (new StringBuilder("Fetched ")).append(stringbuilder.toString());
            return bcq.b;
        }
        break MISSING_BLOCK_LABEL_223;
        Exception exception;
        exception;
        try
        {
            B.remove(thread);
            H.unlock();
            throw exception;
        }
        catch (RuntimeException runtimeexception)
        {
            C;
            throw runtimeexception;
        }
        catch (InterruptedException interruptedexception) { }
        if (L)
        {
            throw new InterruptedException();
        }
        C;
        (new StringBuilder("Failed to fetch W: ")).append(bcb1.g.toString());
        if (bcb1.g != bcq.b)
        {
            return bcb1.g;
        } else
        {
            return bcq.c;
        }
        Log.w(C, (new StringBuilder("Failed to fetch w: ")).append(bcb1.g.toString()).toString());
        if (bcb1.g != bcq.b)
        {
            return bcb1.g;
        } else
        {
            return bcq.c;
        }
_L2:
        thread1 = thread;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private String a(int i1, String s1)
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        stringbuilder.append("w=");
        stringbuilder.append(d);
        if ((i1 & 8) != 0)
        {
            stringbuilder.append("&c=");
            stringbuilder.append(i);
            stringbuilder.append("&z=");
            stringbuilder.append(j);
        }
        if ((i1 & 0x10) != 0)
        {
            stringbuilder.append("&f=");
            stringbuilder.append(k);
            stringbuilder.append("x");
            stringbuilder.append(l);
        }
        if (m == null || m.length() <= 0) goto _L2; else goto _L1
_L1:
        String s12 = "";
        String s2;
        Location location;
        Iterator iterator;
        int j1;
        String s6;
        int k1;
        String s11;
        String s13;
        try
        {
            s13 = URLEncoder.encode(m, "utf-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception2)
        {
            C;
            continue; /* Loop/switch isn't completed */
        }
        s12 = s13;
_L5:
        stringbuilder.append("&lh=");
        if (s12.length() > 255)
        {
            s12 = s12.substring(0, 255);
        }
        stringbuilder.append(s12);
_L2:
        s2 = "";
        s11 = URLEncoder.encode(n, "utf-8");
        s2 = s11;
_L3:
        stringbuilder.append("&dr=");
        if (s2.length() > 255)
        {
            s2 = s2.substring(0, 255);
        }
        stringbuilder.append(s2);
        String s3;
        String s4;
        String s5;
        if ((i1 & 0x20) != 0 && p != null && !p.equals("0") && q != null)
        {
            stringbuilder.append("&p=");
            UnsupportedEncodingException unsupportedencodingexception;
            String s8;
            String s9;
            String s10;
            if (o == null)
            {
                s8 = "";
            } else
            {
                s8 = o;
            }
            stringbuilder.append(s8);
            stringbuilder.append("&pl=");
            if (p == null)
            {
                s9 = "";
            } else
            {
                s9 = p;
            }
            stringbuilder.append(s9);
            stringbuilder.append("&ph=");
            if (q == null)
            {
                s10 = "";
            } else
            {
                s10 = b(q);
            }
            stringbuilder.append(s10);
        }
        stringbuilder.append("&hh=");
        stringbuilder.append(b((new StringBuilder()).append(s1).append(b).toString()));
        if ((i1 & 4) != 0 && s > 0)
        {
            stringbuilder.append("&mt=");
            String s7;
            if (t == null)
            {
                s7 = "";
            } else
            {
                s7 = b(t);
            }
            stringbuilder.append(s7);
            stringbuilder.append("&mn=");
            stringbuilder.append(s);
        }
        stringbuilder.append("&mdf=");
        if (u == null)
        {
            s3 = "";
        } else
        {
            s3 = u;
        }
        stringbuilder.append(s3);
        stringbuilder.append("&mds=");
        if (v == null)
        {
            s4 = "";
        } else
        {
            s4 = v;
        }
        stringbuilder.append(s4);
        stringbuilder.append("&imei=");
        if (G == null)
        {
            s5 = "";
        } else
        {
            s5 = G;
        }
        stringbuilder.append(s5);
        location = N.c();
        if (location != null)
        {
            stringbuilder.append("&tdlat=");
            stringbuilder.append(Double.valueOf(location.getLatitude()).toString());
            stringbuilder.append("&tdlon=");
            stringbuilder.append(Double.valueOf(location.getLongitude()).toString());
            stringbuilder.append("&tdlacc=");
            stringbuilder.append(Double.valueOf(location.getAccuracy()).toString());
            C;
            (new StringBuilder("Got lat/long/acc = ")).append(location.getLatitude()).append("/").append(location.getLongitude()).append("/").append(location.getAccuracy());
        }
        if (A != null && A.size() > 0)
        {
            iterator = A.iterator();
            j1 = 0;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                s6 = (String)iterator.next();
                stringbuilder.append("&aca");
                k1 = j1 + 1;
                stringbuilder.append(j1);
                stringbuilder.append("=");
                if (s6.length() > 255)
                {
                    s6 = s6.substring(0, 255);
                }
                stringbuilder.append(s6);
                if (k1 >= 5)
                {
                    break;
                }
                j1 = k1;
            } while (true);
        }
        break MISSING_BLOCK_LABEL_860;
        unsupportedencodingexception;
        C;
          goto _L3
        stringbuilder.append("&at=agent_mobile&av=");
        try
        {
            stringbuilder.append(URLEncoder.encode(a, "utf-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception1)
        {
            C;
        }
        return a(stringbuilder.toString().toLowerCase(), b);
        if (true) goto _L5; else goto _L4
_L4:
    }

    static String a(String s1)
    {
        int i1 = s1.length();
        StringBuilder stringbuilder = new StringBuilder();
        if (s1.charAt(0) != '\\')
        {
            return s1;
        }
        int j1 = 1;
        while (j1 < i1) 
        {
            int k1 = s1.indexOf("\\", j1 + 1);
            String s2;
            int l1;
            if (k1 > 0)
            {
                s2 = s1.substring(j1, k1);
            } else
            {
                s2 = s1.substring(j1);
            }
            l1 = j1 + s2.length();
            try
            {
                stringbuilder.append(Character.toChars(Integer.parseInt(s2, 8)));
            }
            catch (NumberFormatException numberformatexception)
            {
                Log.e(C, "failed to convert", numberformatexception);
            }
            j1 = l1 + 1;
        }
        return stringbuilder.toString();
    }

    private static String a(String s1, String s2)
    {
        String s3 = (new StringBuilder()).append(s1.length()).append("&").append(s1).toString();
        int i1 = s3.length();
        StringBuilder stringbuilder = new StringBuilder();
        Formatter formatter = new Formatter(stringbuilder);
        int j1 = s2.length();
        char ac[] = {
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
            'a', 'b', 'c', 'd', 'e', 'f'
        };
        int k1 = 0;
        int i2;
        for (int l1 = 0; k1 < i1; l1 = i2)
        {
            char c1 = s3.charAt(k1);
            i2 = l1 + 1;
            char c2 = (char)(c1 ^ 0xa & s2.charAt(l1));
            if (i2 >= j1)
            {
                i2 = 0;
            }
            Object aobj[] = new Object[1];
            aobj[0] = Character.valueOf(ac[0xf & c2 >> 4]);
            formatter.format("%c", aobj);
            Object aobj1[] = new Object[1];
            aobj1[0] = Character.valueOf(ac[c2 & 0xf]);
            formatter.format("%c", aobj1);
            k1++;
        }

        formatter.close();
        return stringbuilder.toString();
    }

    private static String a(String s1, String s2, ArrayList arraylist)
    {
        HashMap hashmap;
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_121;
            }
            hashmap = (HashMap)iterator.next();
        } while (((String)hashmap.get("name")).toLowerCase().indexOf(s1.toLowerCase()) == -1);
_L1:
        String s3;
        if (hashmap != null)
        {
            s3 = ((String)hashmap.get("name")).replace("[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]", "");
            if (!s3.isEmpty())
            {
                s3 = "true";
            }
        } else
        {
            s3 = "false";
        }
        return (new StringBuilder()).append(s2).append("^").append(s3).append("!").toString();
        hashmap = null;
          goto _L1
    }

    private static String a(String s1, List list)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        stringbuilder = new StringBuilder();
        bufferedreader = null;
        if (!(new File(s1)).exists()) goto _L2; else goto _L1
_L1:
        BufferedReader bufferedreader1 = new BufferedReader(new FileReader(new File(s1)));
_L6:
        String s2 = bufferedreader1.readLine();
        if (s2 == null) goto _L4; else goto _L3
_L3:
        String as[] = s2.split(":");
        if (as.length == 0) goto _L6; else goto _L5
_L5:
        String s3 = as[0].trim();
        if (s3.length() == 0) goto _L6; else goto _L7
_L7:
        String s4 = "";
        if (as.length > 1)
        {
            s4 = as[1].trim();
        }
        if (list.contains(s3))
        {
            stringbuilder.append(s4);
        }
          goto _L6
        IOException ioexception1;
        ioexception1;
_L12:
        C;
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception2)
            {
                C;
            }
        }
_L2:
        return stringbuilder.toString();
_L4:
        try
        {
            bufferedreader1.close();
        }
        catch (IOException ioexception3)
        {
            C;
        }
        if (true) goto _L2; else goto _L8
_L8:
        Exception exception1;
        exception1;
_L10:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                C;
            }
        }
        throw exception1;
        Exception exception;
        exception;
        bufferedreader = bufferedreader1;
        exception1 = exception;
        if (true) goto _L10; else goto _L9
_L9:
        IOException ioexception4;
        ioexception4;
        bufferedreader1 = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private void a(Context context, bch bch1)
    {
        boolean flag = true;
        if (!Thread.currentThread().isInterrupted())
        {
            boolean flag1;
            bcg bcg1;
            if ((0x26 & w) != 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            bcg1 = new bcg(context, bch1, flag1);
            bcg1.c();
            if (!Thread.currentThread().isInterrupted())
            {
                StringBuilder stringbuilder;
                String s1;
                if ((2 & w) == 0)
                {
                    flag = false;
                }
                r = bcg1.a(flag, context);
                String _tmp = C;
                stringbuilder = new StringBuilder("getBrowserInfo: ");
                if (r == null)
                {
                    s1 = "null";
                } else
                {
                    s1 = r;
                }
                stringbuilder.append(s1);
                if ((0x20 & w) != 0)
                {
                    String s3 = bcg1.a("(function () { var plugins_string='', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + '<FIELD_SEP>' + p.description + '<FIELD_SEP>' + p.filename + '<FIELD_SEP>' + p.length.toString() + '<REC_SEP>'; } return plugins_string;})();");
                    if (s3 != null)
                    {
                        c(s3);
                    }
                }
                if (!Thread.currentThread().isInterrupted() && (4 & w) != 0)
                {
                    String s2 = bcg1.a("navigator.mimeTypes.length");
                    if (s2 != null)
                    {
                        try
                        {
                            s = Integer.parseInt(s2);
                        }
                        catch (NumberFormatException numberformatexception)
                        {
                            Log.e(C, "failed to convert", numberformatexception);
                        }
                    }
                    t = bcg1.a("(function () { var mime_string='', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();");
                    if (t != null)
                    {
                        String _tmp1 = C;
                        (new StringBuilder("Got:")).append(t);
                        return;
                    }
                }
            }
        }
    }

    private void a(bch bch1)
    {
        int i1;
        String s1;
        int j1;
        NumberFormatException numberformatexception;
        if ((0x20 & w) != 0 && bch1.c.size() > 0)
        {
            String s2 = (String)bch1.c.get(0);
            i1 = 1;
            if (s2 != null)
            {
                c(s2);
            }
        } else
        {
            i1 = 0;
        }
        if (Thread.currentThread().isInterrupted() || (4 & w) == 0 || bch1.c.size() <= i1) goto _L2; else goto _L1
_L1:
        s1 = (String)bch1.c.get(i1);
        j1 = i1 + 1;
        if (s1 == null) goto _L4; else goto _L3
_L3:
        s = Integer.parseInt(s1);
_L6:
        if (s > 0 && bch1.c.size() > j1)
        {
            t = (String)bch1.c.get(j1);
        }
        C;
        (new StringBuilder("Got mime ")).append(s).append(":").append(t);
_L2:
        return;
        numberformatexception;
        Log.e(C, "failed to convert", numberformatexception);
_L4:
        s = 0;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static void a(bco bco1, Context context, bch bch1)
    {
        bco1.a(context, bch1);
    }

    static boolean a(bco bco1)
    {
        return bco1.L;
    }

    static Context b(bco bco1)
    {
        return bco1.D;
    }

    private static String b(String s1)
    {
        int i1 = 0;
        if (s1 == null || s1.isEmpty())
        {
            return "";
        }
        byte abyte0[];
        StringBuffer stringbuffer;
        Formatter formatter;
        int j1;
        byte byte0;
        Object aobj[];
        String s2;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s1.getBytes());
            abyte0 = messagedigest.digest();
            stringbuffer = new StringBuffer();
            formatter = new Formatter(stringbuffer);
            j1 = abyte0.length;
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            C;
            return "";
        }
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        byte0 = abyte0[i1];
        aobj = new Object[1];
        aobj[0] = Byte.valueOf(byte0);
        formatter.format("%02x", aobj);
        i1++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_65;
_L1:
        formatter.close();
        s2 = stringbuffer.toString();
        return s2;
    }

    static bch c(bco bco1)
    {
        return bco1.M;
    }

    private void c(String s1)
    {
        q = s1.replaceAll("(<FIELD_SEP>|<REC_SEP>)", "");
        ArrayList arraylist = new ArrayList();
        String as[] = s1.split("<REC_SEP>");
        int i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String s2 = as[j1];
            if (Thread.currentThread().isInterrupted())
            {
                return;
            }
            HashMap hashmap = new HashMap();
            String as1[] = s2.split("<FIELD_SEP>");
            if (as1.length == 4)
            {
                hashmap.put("name", as1[0]);
                hashmap.put("description", as1[1]);
                hashmap.put("filename", as1[2]);
                hashmap.put("length", as1[3]);
                arraylist.add(hashmap);
            }
        }

        p = Integer.toString(arraylist.size());
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a("QuickTime Plug-in", "plugin_quicktime", arraylist));
        stringbuilder.append(a("Adobe Acrobat", "plugin_adobe_acrobat", arraylist));
        stringbuilder.append(a("Java", "plugin_java", arraylist));
        stringbuilder.append(a("SVG Viewer", "plugin_svg_viewer", arraylist));
        stringbuilder.append(a("Flash", "plugin_flash", arraylist));
        stringbuilder.append(a("Windows Media Player", "plugin_windows_media_player", arraylist));
        stringbuilder.append(a("Silverlight", "plugin_silverlight", arraylist));
        stringbuilder.append(a("Real Player", "plugin_realplayer", arraylist));
        stringbuilder.append(a("ShockWave Director", "plugin_shockwave", arraylist));
        stringbuilder.append(a("VLC", "plugin_vlc_player", arraylist));
        stringbuilder.append(a("DevalVR", "plugin_devalvr", arraylist));
        o = stringbuilder.toString();
        String _tmp = C;
        (new StringBuilder("Got")).append(p).append(":").append(o);
    }

    private static String d(String s1)
    {
        if (s1 == null)
        {
            s1 = null;
        } else
        if (s1.length() != 32)
        {
            String s2;
            if (s1.length() < 32)
            {
                s2 = (new StringBuilder()).append(s1).append(b(s1).substring(0, 32 - s1.length())).toString();
            } else
            {
                s2 = b(s1);
            }
            return s2;
        }
        return s1;
    }

    static String e()
    {
        return C;
    }

    private static List f()
    {
        ArrayList arraylist = new ArrayList();
        File afile[] = (new File("/system/fonts/")).listFiles();
        if (afile != null)
        {
            int i1 = afile.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                String s1 = afile[j1].getName();
                if (s1.endsWith(".ttf"))
                {
                    arraylist.add(s1.subSequence(0, s1.lastIndexOf(".ttf")).toString());
                }
                j1++;
            }
        }
        return arraylist;
    }

    private static bdd g()
    {
        bdd bdd1 = new bdd();
        StringBuilder stringbuilder = new StringBuilder();
        Formatter formatter = new Formatter(stringbuilder);
        Random random = new Random();
        List list = f();
        StringBuilder stringbuilder1 = new StringBuilder();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); stringbuilder1.append((String)iterator.next())) { }
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(random.nextInt(10000));
        formatter.format("%04d", aobj);
        bdd1.b("nu", stringbuilder.toString());
        stringbuilder.setLength(0);
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(list.size());
        formatter.format("%d", aobj1);
        bdd1.b("ftsn", stringbuilder.toString());
        stringbuilder.setLength(0);
        bdd1.b("v", android.os.Build.VERSION.RELEASE.toLowerCase());
        bdd1.b("o", Build.BRAND.toLowerCase());
        bdd1.b("mf", Build.MODEL.toLowerCase());
        bdd1.b("l", Locale.getDefault().getLanguage().toLowerCase());
        bdd1.b("fts", b(stringbuilder1.toString()).toLowerCase());
        String _tmp = C;
        (new StringBuilder("getFlashProperties: ")).append(bdd1.a());
        formatter.close();
        return bdd1;
    }

    public bcq a(Context context, String s1, String s2, String s3, int i1)
    {
        bcq bcq6;
        H.lockInterruptibly();
        C;
        (new StringBuilder("starting profile request using - ")).append(a).append(" with options ").append(i1);
        if (!J)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        bcq6 = bcq.a;
        H.unlock();
        return bcq6;
        if ((i1 & 1) != 0)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        bcq bcq5;
        Log.w(C, "Synchronous is deprecated, please switch to ASYNC");
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            break MISSING_BLOCK_LABEL_115;
        }
        Log.e(C, "Synchronous only works when called from the UI thread");
        bcq5 = bcq.f;
        H.unlock();
        return bcq5;
        f = null;
        g = null;
        h = null;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        q = null;
        p = "0";
        q = null;
        r = null;
        s = 0;
        t = null;
        u = null;
        v = null;
        d = null;
        if (N != null)
        {
            N.b();
        }
        L = false;
        K = bcq.a;
        if (B.size() > 0)
        {
            C;
            d();
        }
        B.clear();
        if (s2 == null)
        {
            s2 = "h.online-metrix.net";
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        if (s1.length() == 8)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        bcq bcq2;
        Log.e(C, "Invalid org_id");
        bcq2 = bcq.i;
        H.unlock();
        return bcq2;
        J = true;
        if (z || b == null)
        {
            b = UUID.randomUUID().toString().toLowerCase().replaceAll("-", "");
        }
        z = true;
        n = (new StringBuilder("http://")).append(context.getPackageName()).toString();
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_468;
        }
        if (s3.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_468;
        }
        m = s3;
        if (s3.compareToIgnoreCase(n) == 0)
        {
            m = (new StringBuilder()).append(s3).append("mobile").toString();
        }
_L1:
        bcq bcq4;
        w = i1;
        x = s1;
        y = s2;
        D = context;
        if ((1 & w) != 0)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        c();
        bcq4 = K;
        H.unlock();
        return bcq4;
        m = (new StringBuilder("http://")).append(context.getPackageName()).append("/mobile").toString();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        bcq bcq1;
        if (E != null)
        {
            E.interrupt();
        }
        J = false;
        bcq1 = bcq.h;
        H.unlock();
        return bcq1;
        bcq bcq3;
        E = new Thread(new bca(this, null));
        E.start();
        bcq3 = bcq.b;
        H.unlock();
        return bcq3;
        Exception exception;
        exception;
        H.unlock();
        throw exception;
    }

    public String a()
    {
        return b;
    }

    public void a(int i1)
    {
        c = i1 * 1000;
    }

    public void a(bci bci1)
    {
        I.lockInterruptibly();
        F = bci1;
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
        return;
        Exception exception;
        exception;
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
        throw exception;
    }

    final void a(bcq bcq1)
    {
        K = bcq1;
    }

    public bcq b()
    {
        String _tmp = C;
        (new StringBuilder("getStatus returns: ")).append(K.toString());
        return K;
    }

    public void c()
    {
        StringBuilder stringbuilder;
        bcq bcq1;
        stringbuilder = new StringBuilder();
        bcq1 = a(y, x, b, c, stringbuilder);
        if (bcq1 != bcq.b) goto _L2; else goto _L1
_L1:
        InterruptedException interruptedexception1;
        d = stringbuilder.toString();
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L3
_L45:
        C;
        K = bcq.f;
        if (L)
        {
            K = bcq.h;
            Thread.interrupted();
        }
        I.lockInterruptibly();
        if (F != null)
        {
            F.complete();
        }
        if (!I.isHeldByCurrentThread()) goto _L5; else goto _L4
_L4:
        ReentrantLock reentrantlock1 = I;
_L54:
        reentrantlock1.unlock();
_L5:
        J = false;
        return;
_L2:
        C;
        K = bcq1;
        if (L)
        {
            K = bcq.h;
            Thread.interrupted();
        }
        I.lockInterruptibly();
        if (F != null)
        {
            F.complete();
        }
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
          goto _L5
_L3:
        Exception exception;
        C;
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L6
        I.lockInterruptibly();
        if (F != null)
        {
            F.complete();
        }
        if (!I.isHeldByCurrentThread()) goto _L8; else goto _L7
_L7:
        ReentrantLock reentrantlock = I;
_L52:
        reentrantlock.unlock();
_L8:
        J = false;
        throw exception;
_L6:
        if ((1 & w) != 0 && (0x26 & w) != 0) goto _L10; else goto _L9
_L9:
        a(D, ((bch) (null)));
        CountDownLatch countdownlatch = null;
_L15:
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L11
_L10:
        CountDownLatch countdownlatch1;
        CountDownLatch countdownlatch2;
        Exception exception1;
        InterruptedException interruptedexception;
        Exception exception2;
        InterruptedException interruptedexception2;
        Exception exception3;
        InterruptedException interruptedexception3;
        SharedPreferences sharedpreferences;
        String s1;
        android.content.SharedPreferences.Editor editor;
        SecurityException securityexception;
        String s2;
        StringBuilder stringbuilder1;
        String s3;
        String s4;
        StringBuilder stringbuilder2;
        bcl bcl1;
        long l1;
        long l2;
        float f1;
        Context context;
        StringBuilder stringbuilder3;
        String s5;
        String s6;
        StringBuilder stringbuilder4;
        String s7;
        String s8;
        HashMap hashmap;
        StringBuilder stringbuilder5;
        Iterator iterator;
        boolean flag;
        StringBuilder stringbuilder6;
        bdd bdd1;
        Exception exception4;
        int i1;
        Exception exception5;
        Iterator iterator1;
        Exception exception6;
        Iterator iterator2;
        Exception exception7;
        Exception exception8;
        InterruptedException interruptedexception4;
        Thread thread;
        boolean flag1;
        InterruptedException interruptedexception5;
        Thread thread1;
        Exception exception9;
        java.util.Map.Entry entry;
        bdd bdd2;
        bdd bdd3;
        Exception exception10;
        bdd bdd4;
        StringBuilder stringbuilder7;
        Formatter formatter;
        Object aobj[];
        Exception exception11;
        bdd bdd5;
        Exception exception12;
        bdd bdd6;
        StringBuilder stringbuilder8;
        bdd bdd7;
        Random random;
        Formatter formatter1;
        Object aobj1[];
        Object aobj2[];
        Exception exception13;
        bdd bdd8;
        Exception exception14;
        TelephonyManager telephonymanager;
        String s9;
        StatFs statfs;
        long l3;
        Display display;
        ArrayList arraylist;
        String s10;
        ArrayList arraylist1;
        String s11;
        Display display1;
        TimeZone timezone;
        boolean flag2;
        byte byte0;
        int j1;
        Handler handler;
        if (bcg.b() || bcg.a())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        byte0 = 1;
        if (!flag2) goto _L13; else goto _L12
_L12:
        if ((0x20 & w) != 0)
        {
            byte0 = 2;
        }
        if ((4 & w) == 0) goto _L13; else goto _L14
_L14:
        j1 = byte0 + 2;
_L55:
        countdownlatch1 = new CountDownLatch(j1);
        handler = new Handler(Looper.getMainLooper());
        C;
        (new StringBuilder("Firing off getBrowserInfo on UI thread using latch: ")).append(countdownlatch1.hashCode()).append(" with count: ").append(j1);
        if (flag2)
        {
            countdownlatch2 = countdownlatch1;
        } else
        {
            countdownlatch2 = null;
        }
        M = new bch(countdownlatch2);
        handler.post(new bcp(this, this, countdownlatch1));
        C;
        (new StringBuilder("waiting for getBrowserInfo to finished, latch: ")).append(countdownlatch1.getCount()).append(" - ").append(countdownlatch1.hashCode());
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_4384;
        }
        if (!countdownlatch1.await(10L, TimeUnit.SECONDS))
        {
            break MISSING_BLOCK_LABEL_594;
        }
        a(M);
        countdownlatch = countdownlatch1;
          goto _L15
        Log.e(C, (new StringBuilder("getBrowserInfo no response from UI thread before timeout with latch: ")).append(countdownlatch1.hashCode()).toString());
        break MISSING_BLOCK_LABEL_4384;
_L11:
        C;
        if ((8 & w) == 0) goto _L17; else goto _L16
_L16:
        timezone = TimeZone.getDefault();
        if (timezone == null) goto _L19; else goto _L18
_L18:
        i = timezone.getRawOffset() / 60000;
        j = timezone.getDSTSavings() / 60000;
        C;
        (new StringBuilder("getTimeZoneInfo: dstDiff=")).append(j).append(" gmfOffset=").append(i);
_L17:
        sharedpreferences = D.getSharedPreferences("ThreatMetrixMobileSDK", 0);
        s1 = sharedpreferences.getString("ThreatMetrixMobileSDK", null);
        if (L)
        {
            throw new InterruptedException();
        }
        break; /* Loop/switch isn't completed */
_L19:
        Log.w(C, "getTimeZoneInfo: FAILED");
        if (true) goto _L17; else goto _L20
_L20:
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_841;
        }
        C;
        s1 = (new BigInteger(64, new SecureRandom())).toString(16);
        editor = sharedpreferences.edit();
        editor.putString("ThreatMetrixMobileSDK", s1);
        editor.commit();
        if (L)
        {
            throw new InterruptedException();
        }
        h = android.provider.Settings.Secure.getString(D.getContentResolver(), "android_id");
        if (h != null && !h.equals("9774d56d682e549c") && h.length() >= 15) goto _L22; else goto _L21
_L21:
        C;
        h = null;
_L29:
        C;
        (new StringBuilder("using generated ID for HTML5Cookie:")).append(s1);
        g = s1;
        G = ((TelephonyManager)D.getSystemService("phone")).getDeviceId();
        C;
        (new StringBuilder("using getDeviceId for imei: ")).append(G);
_L30:
        if (Build.SERIAL != null) goto _L24; else goto _L23
_L23:
        s2 = "";
_L31:
        if (G == null || G.isEmpty() || G.equals("000000000000000")) goto _L26; else goto _L25
_L25:
        stringbuilder1 = (new StringBuilder()).append(s2);
        s3 = G;
_L32:
        s4 = stringbuilder1.append(s3).toString();
        if (f != null) goto _L28; else goto _L27
_L27:
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_1201;
        }
        if (s4.isEmpty())
        {
            break MISSING_BLOCK_LABEL_1201;
        }
        f = b(s4);
_L28:
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        break MISSING_BLOCK_LABEL_1208;
_L22:
        C;
        (new StringBuilder("using ANDROID_ID for cookie:")).append(h);
          goto _L29
        securityexception;
        C;
          goto _L30
_L24:
        s2 = Build.SERIAL;
          goto _L31
_L26:
label0:
        {
            if (h == null)
            {
                break label0;
            }
            stringbuilder1 = (new StringBuilder()).append(s2);
            s3 = h;
        }
          goto _L32
        stringbuilder1 = (new StringBuilder()).append(s2);
        if (g != null)
        {
            break MISSING_BLOCK_LABEL_1192;
        }
        s3 = "";
          goto _L32
        s3 = g;
          goto _L32
        C;
          goto _L28
        f = d(f);
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        g = d(g);
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        h = d(h);
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        if ((0x10 & w) != 0)
        {
            display1 = ((WindowManager)D.getSystemService("window")).getDefaultDisplay();
            k = display1.getWidth();
            l = display1.getHeight();
        }
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        stringbuilder2 = new StringBuilder();
        bcl1 = new bcl(Environment.getDataDirectory().getPath());
        l1 = bcl1.a();
        l2 = bcl1.b();
        f1 = 1.0F;
        if (l2 * l1 == 0L)
        {
            break MISSING_BLOCK_LABEL_1457;
        }
        f1 = ((float)l2 * (float)l1) / 1024F / 1024F / 1024F;
        stringbuilder2.append(f1);
        stringbuilder2.append(" - ");
        stringbuilder2.append(Long.toString((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000L));
        C;
        (new StringBuilder("getDeviceState: ")).append(b(stringbuilder2.toString()));
        v = b(stringbuilder2.toString());
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        context = D;
        C;
        stringbuilder3 = new StringBuilder();
        if (!Thread.currentThread().isInterrupted()) goto _L34; else goto _L33
_L33:
        s5 = "";
_L35:
        u = s5;
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        break MISSING_BLOCK_LABEL_2016;
_L34:
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        s9 = "Unknown";
        if (telephonymanager.getPhoneType() == 1)
        {
            s9 = telephonymanager.getNetworkOperatorName();
        }
        stringbuilder3.append(s9);
        stringbuilder3.append(telephonymanager.getSimCountryIso());
        statfs = new StatFs(Environment.getDataDirectory().getPath());
        l3 = statfs.getBlockSize();
        stringbuilder3.append(((float)(long)statfs.getBlockCount() * (float)l3) / 1024F / 1024F / 1024F);
        display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        stringbuilder3.append(display.getWidth()).append("x").append(display.getHeight());
        C;
        arraylist = new ArrayList();
        Collections.addAll(arraylist, new String[] {
            "Processor", "BogoMips", "Hardware", "Serial"
        });
        s10 = a("/proc/cpuinfo", arraylist);
        C;
        (new StringBuilder("getCPUInfo returned: ")).append(s10);
        stringbuilder3.append(s10);
        C;
        arraylist1 = new ArrayList();
        Collections.addAll(arraylist1, new String[] {
            "MemTotal"
        });
        s11 = a("/proc/meminfo", arraylist1);
        C;
        (new StringBuilder("getMemInfo returned: ")).append(s11);
        stringbuilder3.append(s11);
        stringbuilder3.append(Build.DEVICE).append(" ").append(Build.MODEL).append(" ").append(Build.PRODUCT).append(" ").append(Build.MANUFACTURER).append(" ").append(android.os.Build.VERSION.RELEASE);
        C;
        (new StringBuilder("getDeviceFingerprint returned: hash(")).append(stringbuilder3.toString()).append(")");
        s5 = b(stringbuilder3.toString());
          goto _L35
        s6 = a(w, x);
        if (countdownlatch == null)
        {
            break MISSING_BLOCK_LABEL_2061;
        }
        if (!countdownlatch.await(c, TimeUnit.MILLISECONDS))
        {
            Log.e(C, "no response from UI thread before timeout, will not use browser info");
        }
        stringbuilder4 = new StringBuilder("lq=");
        if (r != null) goto _L37; else goto _L36
_L36:
        s7 = "";
_L43:
        s8 = a(stringbuilder4.append(s7).toString(), b);
        hashmap = new HashMap();
        if (r != null && !r.isEmpty())
        {
            C;
            (new StringBuilder("Setting User-Agent to ")).append(r);
            hashmap.put("User-Agent", r);
        }
        if (h != null) goto _L39; else goto _L38
_L38:
        hashmap.put("Cookie", "thx_guid=");
_L44:
        hashmap.put("Referer", n);
        if ((0x40 & w) == 0) goto _L41; else goto _L40
_L40:
        bdd2 = (new bdd()).b("org_id", x).b("session_id", b).b("m", "1");
        bdd3 = (new bdd()).b("org_id", x).b("session_id", b).b("m", "2");
        if ((0x80 & w) == 0)
        {
            bdd2.b("h", "0");
            bdd3.b("h", "0");
        }
        H.lockInterruptibly();
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd2, c, hashmap, this)));
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd3, c, hashmap, this)));
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        bdd4 = new bdd();
        bdd4.b("org_id", x);
        bdd4.b("session_id", b);
        bdd4.b("h", "1");
        stringbuilder7 = new StringBuilder();
        formatter = new Formatter(stringbuilder7);
        aobj = new Object[2];
        aobj[0] = d;
        aobj[1] = g;
        formatter.format("%16s%32s", aobj);
        formatter.close();
        bdd4.putAll((new bdd()).b("la", stringbuilder7.toString()));
        H.lockInterruptibly();
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd4, c, hashmap, this)));
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        bdd5 = new bdd();
        bdd5.b("org_id", x);
        bdd5.b("session_id", b);
        bdd5.b("ja", s6);
        bdd5.b("jb", s8);
        H.lockInterruptibly();
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd5, c, hashmap, this)));
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_2992;
        }
        bdd6 = new bdd();
        bdd6.b("org_id", x);
        bdd6.b("session_id", b);
        stringbuilder8 = new StringBuilder();
        bdd7 = new bdd();
        random = new Random();
        formatter1 = new Formatter(stringbuilder8);
        aobj1 = new Object[1];
        aobj1[0] = Integer.valueOf(random.nextInt(10000));
        formatter1.format("%04d", aobj1);
        bdd7.b("nu", stringbuilder8.toString());
        stringbuilder8.setLength(0);
        aobj2 = new Object[2];
        aobj2[0] = d;
        aobj2[1] = f;
        formatter1.format("%16s%32s", aobj2);
        bdd7.b("fc", stringbuilder8.toString());
        formatter1.close();
        bdd6.putAll(bdd7);
        H.lockInterruptibly();
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd6, c, hashmap, this)));
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L42
_L37:
        s7 = r;
          goto _L43
_L39:
        hashmap.put("Cookie", (new StringBuilder("thx_guid=")).append(h).toString());
          goto _L44
        exception10;
        try
        {
            if (H.isHeldByCurrentThread())
            {
                H.unlock();
            }
            throw exception10;
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception1) { }
        finally
        {
            if (L)
            {
                K = bcq.h;
                Thread.interrupted();
            }
        }
          goto _L45
        exception11;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception11;
        exception12;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception12;
        exception13;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception13;
_L42:
        bdd8 = new bdd();
        bdd8.b("org_id", x);
        bdd8.b("session_id", b);
        bdd8.putAll(g());
        H.lockInterruptibly();
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd8, c, hashmap, this)));
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
_L49:
        i1 = w;
        if ((i1 & 0x40) == 0)
        {
            break MISSING_BLOCK_LABEL_3334;
        }
        H.lockInterruptibly();
        B.add(new Thread(new bcj(y, x, b, d, c, this)));
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        H.lockInterruptibly();
        iterator1 = B.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            thread1 = (Thread)iterator1.next();
            if (L)
            {
                break;
            }
            thread1.start();
        } while (true);
        break MISSING_BLOCK_LABEL_3855;
        exception5;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception5;
        exception14;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception14;
_L41:
        stringbuilder5 = new StringBuilder();
        iterator = g().entrySet().iterator();
        flag = true;
_L47:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        entry = (java.util.Map.Entry)iterator.next();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_3516;
        }
        stringbuilder5.append("&");
        stringbuilder5.append((String)entry.getKey()).append("=").append((String)entry.getValue());
        flag = false;
        if (true) goto _L47; else goto _L46
_L46:
        stringbuilder6 = new StringBuilder();
        stringbuilder6.append(stringbuilder5.toString());
        if (g != null)
        {
            stringbuilder6.append("&ls=");
            stringbuilder6.append(g);
        }
        if (f != null)
        {
            stringbuilder6.append("&fg=");
            stringbuilder6.append(f);
        }
        if (L || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        bdd1 = new bdd();
        bdd1.b("org_id", x);
        bdd1.b("session_id", b);
        bdd1.b("ja", s6);
        bdd1.b("jb", s8);
        bdd1.b("jc", a(stringbuilder6.toString(), b));
        bdd1.b("h", "1");
        H.lockInterruptibly();
        B.add(new Thread(new bce("https", y, "/fp/clear.png", bdd1, c, hashmap, this)));
        if (!H.isHeldByCurrentThread()) goto _L49; else goto _L48
_L48:
        H.unlock();
          goto _L49
        exception4;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception4;
        exception9;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception9;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        H.lockInterruptibly();
        iterator2 = B.iterator();
_L50:
        if (!iterator2.hasNext())
        {
            break MISSING_BLOCK_LABEL_3965;
        }
        thread = (Thread)iterator2.next();
        if (L)
        {
            break MISSING_BLOCK_LABEL_3965;
        }
        flag1 = Thread.currentThread().isInterrupted();
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_3965;
        }
        thread.join();
          goto _L50
        interruptedexception5;
        if (K == bcq.a)
        {
            K = bcq.c;
        }
        d();
        C;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        if (K == bcq.a)
        {
            K = bcq.b;
        }
        H.lockInterruptibly();
        B.clear();
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        C;
        if (L)
        {
            K = bcq.h;
            Thread.interrupted();
        }
        I.lockInterruptibly();
        if (F != null)
        {
            F.complete();
        }
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
          goto _L5
        exception6;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception6;
        exception7;
        if (H.isHeldByCurrentThread())
        {
            H.unlock();
        }
        throw exception7;
        interruptedexception;
        Log.e(C, "profilNotify callback interrupted", interruptedexception);
        if (!I.isHeldByCurrentThread()) goto _L8; else goto _L51
_L51:
        reentrantlock = I;
          goto _L52
        exception1;
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
        throw exception1;
        interruptedexception2;
        Log.e(C, "profilNotify callback interrupted", interruptedexception2);
        if (!I.isHeldByCurrentThread()) goto _L5; else goto _L53
_L53:
        reentrantlock1 = I;
          goto _L54
        exception2;
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
        throw exception2;
        interruptedexception4;
        Log.e(C, "profilNotify callback interrupted", interruptedexception4);
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
          goto _L5
        exception8;
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
        throw exception8;
        interruptedexception3;
        Log.e(C, "profilNotify callback interrupted", interruptedexception3);
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
          goto _L5
        exception3;
        if (I.isHeldByCurrentThread())
        {
            I.unlock();
        }
        throw exception3;
_L13:
        j1 = byte0;
          goto _L55
        countdownlatch = countdownlatch1;
          goto _L15
    }

    final void d()
    {
        C;
        this;
        JVM INSTR monitorenter ;
        Thread thread;
        for (Iterator iterator = B.iterator(); iterator.hasNext(); thread.interrupt())
        {
            thread = (Thread)iterator.next();
            C;
            (new StringBuilder("sending interrupt to TID: ")).append(thread.getId());
        }

        break MISSING_BLOCK_LABEL_70;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

}
