// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class bbe
    implements Closeable
{

    private static final Charset a = Charset.forName("UTF-8");
    private final File b;
    private final File c;
    private final File d;
    private final int e;
    private final long f;
    private final int g;
    private long h;
    private Writer i;
    private final LinkedHashMap j = new LinkedHashMap(0, 0.75F, true);
    private int k;
    private long l;
    private final ExecutorService m;
    private final Callable n = new bbf(this);

    private bbe(File file, int i1, int j1, long l1)
    {
        h = 0L;
        l = 0L;
        m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        b = file;
        e = i1;
        c = new File(file, "journal");
        d = new File(file, "journal.tmp");
        g = j1;
        f = l1;
    }

    static int a(bbe bbe1, int i1)
    {
        bbe1.k = i1;
        return i1;
    }

    public static bbe a(File file, int i1, int j1, long l1)
    {
        bbe bbe1;
        if (l1 <= 0L)
        {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (j1 <= 0)
        {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        bbe1 = new bbe(file, i1, j1, l1);
        if (!bbe1.c.exists())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        bbe1.b();
        bbe1.c();
        bbe1.i = new BufferedWriter(new FileWriter(bbe1.c, true), 8192);
        return bbe1;
        IOException ioexception;
        ioexception;
        bbe1.a();
        file.mkdirs();
        bbe bbe2 = new bbe(file, i1, j1, l1);
        bbe2.d();
        return bbe2;
    }

    private bbg a(String s, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        bbi bbi1;
        f();
        e(s);
        bbi1 = (bbi)j.get(s);
        if (l1 == -1L) goto _L2; else goto _L1
_L1:
        if (bbi1 == null) goto _L4; else goto _L3
_L3:
        long l2 = bbi.e(bbi1);
        if (l2 == l1) goto _L2; else goto _L4
_L4:
        bbg bbg2 = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return bbg2;
_L2:
        if (bbi1 != null) goto _L6; else goto _L5
_L5:
        bbi bbi3;
        bbi3 = new bbi(this, s, null);
        j.put(s, bbi3);
        bbi bbi2 = bbi3;
_L9:
        bbg2 = new bbg(this, bbi2, null);
        bbi.a(bbi2, bbg2);
        i.write((new StringBuilder()).append("DIRTY ").append(s).append('\n').toString());
        i.flush();
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        bbg bbg1 = bbi.a(bbi1);
label0:
        {
            if (bbg1 == null)
            {
                break label0;
            }
            bbg2 = null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        bbi2 = bbi1;
          goto _L9
    }

    static Writer a(bbe bbe1)
    {
        return bbe1.i;
    }

    public static String a(InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder(80);
        do
        {
            int i1 = inputstream.read();
            if (i1 == -1)
            {
                throw new EOFException();
            }
            if (i1 == 10)
            {
                int j1 = stringbuilder.length();
                if (j1 > 0 && stringbuilder.charAt(j1 - 1) == '\r')
                {
                    stringbuilder.setLength(j1 - 1);
                }
                return stringbuilder.toString();
            }
            stringbuilder.append((char)i1);
        } while (true);
    }

    static void a(bbe bbe1, bbg bbg1, boolean flag)
    {
        bbe1.a(bbg1, flag);
    }

    private void a(bbg bbg1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        bbi bbi1;
        bbi1 = bbg.a(bbg1);
        if (bbi.a(bbi1) != bbg1)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i1 = 0;
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = bbi.d(bbi1);
        i1 = 0;
        if (flag1) goto _L2; else goto _L3
_L3:
        int j1 = 0;
_L9:
        int k1 = g;
        i1 = 0;
        if (j1 >= k1) goto _L2; else goto _L4
_L4:
        if (!bbi1.b(j1).exists())
        {
            bbg1.b();
            throw new IllegalStateException((new StringBuilder()).append("edit didn't create file ").append(j1).toString());
        }
          goto _L5
_L2:
        if (i1 >= g) goto _L7; else goto _L6
_L6:
        File file = bbi1.b(i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        if (file.exists())
        {
            File file1 = bbi1.a(i1);
            file.renameTo(file1);
            long l2 = bbi.b(bbi1)[i1];
            long l3 = file1.length();
            bbi.b(bbi1)[i1] = l3;
            h = l3 + (h - l2);
        }
        break MISSING_BLOCK_LABEL_413;
        b(file);
        break MISSING_BLOCK_LABEL_413;
_L7:
        k = 1 + k;
        bbi.a(bbi1, null);
        if (!(flag | bbi.d(bbi1)))
        {
            break MISSING_BLOCK_LABEL_355;
        }
        bbi.a(bbi1, true);
        i.write((new StringBuilder()).append("CLEAN ").append(bbi.c(bbi1)).append(bbi1.a()).append('\n').toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        long l1 = l;
        l = 1L + l1;
        bbi.a(bbi1, l1);
_L8:
        if (h > f || e())
        {
            m.submit(n);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        j.remove(bbi.c(bbi1));
        i.write((new StringBuilder()).append("REMOVE ").append(bbi.c(bbi1)).append('\n').toString());
          goto _L8
_L5:
        j1++;
          goto _L9
        i1++;
          goto _L2
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        throw runtimeexception;
        Exception exception;
        exception;
    }

    public static void a(File file)
    {
        File afile[] = file.listFiles();
        if (afile == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("not a directory: ").append(file).toString());
        }
        int i1 = afile.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            File file1 = afile[j1];
            if (file1.isDirectory())
            {
                a(file1);
            }
            if (!file1.delete())
            {
                throw new IOException((new StringBuilder()).append("failed to delete file: ").append(file1).toString());
            }
        }

    }

    private static Object[] a(Object aobj[], int i1, int j1)
    {
        int k1 = aobj.length;
        if (i1 > j1)
        {
            throw new IllegalArgumentException();
        }
        if (i1 < 0 || i1 > k1)
        {
            throw new ArrayIndexOutOfBoundsException();
        } else
        {
            int l1 = j1 - i1;
            int i2 = Math.min(l1, k1 - i1);
            Object aobj1[] = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), l1);
            System.arraycopy(((Object) (aobj)), i1, ((Object) (aobj1)), 0, i2);
            return aobj1;
        }
    }

    private void b()
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new FileInputStream(c), 8192);
        Exception exception;
        String s = a(bufferedinputstream);
        String s1 = a(bufferedinputstream);
        String s2 = a(bufferedinputstream);
        String s3 = a(bufferedinputstream);
        String s4 = a(bufferedinputstream);
        if (!"libcore.io.DiskLruCache".equals(s) || !"1".equals(s1) || !Integer.toString(e).equals(s2) || !Integer.toString(g).equals(s3) || !"".equals(s4))
        {
            throw new IOException((new StringBuilder()).append("unexpected journal header: [").append(s).append(", ").append(s1).append(", ").append(s3).append(", ").append(s4).append("]").toString());
        }
        try
        {
            do
            {
                d(a(bufferedinputstream));
            } while (true);
        }
        catch (EOFException eofexception)
        {
            a(bufferedinputstream);
        }
        finally
        {
            a(bufferedinputstream);
            throw exception;
        }
        return;
    }

    static void b(bbe bbe1)
    {
        bbe1.g();
    }

    private static void b(File file)
    {
        if (file.exists() && !file.delete())
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    private void c()
    {
        b(d);
        for (Iterator iterator = j.values().iterator(); iterator.hasNext();)
        {
            bbi bbi1 = (bbi)iterator.next();
            if (bbi.a(bbi1) == null)
            {
                int j1 = 0;
                while (j1 < g) 
                {
                    h = h + bbi.b(bbi1)[j1];
                    j1++;
                }
            } else
            {
                bbi.a(bbi1, null);
                for (int i1 = 0; i1 < g; i1++)
                {
                    b(bbi1.a(i1));
                    b(bbi1.b(i1));
                }

                iterator.remove();
            }
        }

    }

    static boolean c(bbe bbe1)
    {
        return bbe1.e();
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedWriter bufferedwriter;
        Iterator iterator;
        if (i != null)
        {
            i.close();
        }
        bufferedwriter = new BufferedWriter(new FileWriter(d), 8192);
        bufferedwriter.write("libcore.io.DiskLruCache");
        bufferedwriter.write("\n");
        bufferedwriter.write("1");
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(e));
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(g));
        bufferedwriter.write("\n");
        bufferedwriter.write("\n");
        iterator = j.values().iterator();
_L1:
        bbi bbi1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_234;
            }
            bbi1 = (bbi)iterator.next();
            if (bbi.a(bbi1) == null)
            {
                break MISSING_BLOCK_LABEL_190;
            }
            bufferedwriter.write((new StringBuilder()).append("DIRTY ").append(bbi.c(bbi1)).append('\n').toString());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        bufferedwriter.write((new StringBuilder()).append("CLEAN ").append(bbi.c(bbi1)).append(bbi1.a()).append('\n').toString());
          goto _L1
        bufferedwriter.close();
        d.renameTo(c);
        i = new BufferedWriter(new FileWriter(c, true), 8192);
        this;
        JVM INSTR monitorexit ;
    }

    static void d(bbe bbe1)
    {
        bbe1.d();
    }

    private void d(String s)
    {
        String as[] = s.split(" ");
        if (as.length < 2)
        {
            throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
        }
        String s1 = as[1];
        if (as[0].equals("REMOVE") && as.length == 2)
        {
            j.remove(s1);
        } else
        {
            bbi bbi1 = (bbi)j.get(s1);
            bbi bbi3;
            if (bbi1 == null)
            {
                bbi bbi2 = new bbi(this, s1, null);
                j.put(s1, bbi2);
                bbi3 = bbi2;
            } else
            {
                bbi3 = bbi1;
            }
            if (as[0].equals("CLEAN") && as.length == 2 + g)
            {
                bbi.a(bbi3, true);
                bbi.a(bbi3, null);
                bbi.a(bbi3, (String[])a(as, 2, as.length));
                return;
            }
            if (as[0].equals("DIRTY") && as.length == 2)
            {
                bbi.a(bbi3, new bbg(this, bbi3, null));
                return;
            }
            if (!as[0].equals("READ") || as.length != 2)
            {
                throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
            }
        }
    }

    static int e(bbe bbe1)
    {
        return bbe1.g;
    }

    private void e(String s)
    {
        if (s.contains(" ") || s.contains("\n") || s.contains("\r"))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("keys must not contain spaces or newlines: \"").append(s).append("\"").toString());
        } else
        {
            return;
        }
    }

    private boolean e()
    {
        return k >= 2000 && k >= j.size();
    }

    static File f(bbe bbe1)
    {
        return bbe1.b;
    }

    private void f()
    {
        if (i == null)
        {
            throw new IllegalStateException("cache is closed");
        } else
        {
            return;
        }
    }

    private void g()
    {
        while (h > f) 
        {
            c((String)((java.util.Map.Entry)j.entrySet().iterator().next()).getKey());
        }
    }

    public bbj a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        bbi bbi1;
        f();
        e(s);
        bbi1 = (bbi)j.get(s);
        if (bbi1 != null) goto _L2; else goto _L1
_L1:
        bbj bbj1 = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return bbj1;
_L2:
        if (!bbi.d(bbi1))
        {
            bbj1 = null;
            continue; /* Loop/switch isn't completed */
        }
        InputStream ainputstream[] = new InputStream[g];
        Exception exception;
        int i1 = 0;
        do
        {
            try
            {
                if (i1 >= g)
                {
                    break;
                }
                ainputstream[i1] = new FileInputStream(bbi1.a(i1));
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                bbj1 = null;
                continue; /* Loop/switch isn't completed */
            }
            finally
            {
                this;
            }
            i1++;
        } while (true);
        k = 1 + k;
        i.append((new StringBuilder()).append("READ ").append(s).append('\n').toString());
        if (e())
        {
            m.submit(n);
        }
        bbj1 = new bbj(this, s, bbi.e(bbi1), ainputstream, null);
        if (true) goto _L4; else goto _L3
_L3:
        throw exception;
    }

    public void a()
    {
        close();
        a(b);
    }

    public bbg b(String s)
    {
        return a(s, -1L);
    }

    public boolean c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        bbi bbi1;
        f();
        e(s);
        bbi1 = (bbi)j.get(s);
        if (bbi1 == null) goto _L2; else goto _L1
_L1:
        bbg bbg1 = bbi.a(bbi1);
        int i1 = 0;
        if (bbg1 == null) goto _L3; else goto _L2
_L2:
        boolean flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        h = h - bbi.b(bbi1)[i1];
        bbi.b(bbi1)[i1] = 0L;
        i1++;
_L3:
        File file;
        if (i1 >= g)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        file = bbi1.a(i1);
        if (file.delete()) goto _L5; else goto _L4
_L4:
        throw new IOException((new StringBuilder()).append("failed to delete ").append(file).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        k = 1 + k;
        i.append((new StringBuilder()).append("REMOVE ").append(s).append('\n').toString());
        j.remove(s);
        if (e())
        {
            m.submit(n);
        }
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = i;
        if (writer != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = (new ArrayList(j.values())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            bbi bbi1 = (bbi)iterator.next();
            if (bbi.a(bbi1) != null)
            {
                bbi.a(bbi1).b();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        throw exception;
        g();
        i.close();
        i = null;
          goto _L1
    }

}
