// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bbq
    implements Closeable
{

    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new bbs();
    final ThreadPoolExecutor b;
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private long j;
    private Writer k;
    private final LinkedHashMap l = new LinkedHashMap(0, 0.75F, true);
    private int m;
    private long n;
    private final Callable o = new bbr(this);

    private bbq(File file, int i1, int j1, long l1)
    {
        j = 0L;
        n = 0L;
        b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        c = file;
        g = i1;
        d = new File(file, "journal");
        e = new File(file, "journal.tmp");
        f = new File(file, "journal.bkp");
        i = j1;
        h = l1;
    }

    static int a(bbq bbq1, int i1)
    {
        bbq1.m = i1;
        return i1;
    }

    public static bbq a(File file, int i1, int j1, long l1)
    {
        bbq bbq1;
        if (l1 <= 0L)
        {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (j1 <= 0)
        {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file1 = new File(file, "journal.bkp");
        if (file1.exists())
        {
            File file2 = new File(file, "journal");
            if (file2.exists())
            {
                file1.delete();
            } else
            {
                a(file1, file2, false);
            }
        }
        bbq1 = new bbq(file, i1, j1, l1);
        if (!bbq1.d.exists())
        {
            break MISSING_BLOCK_LABEL_209;
        }
        bbq1.e();
        bbq1.f();
        bbq1.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(bbq1.d, true), bbz.a));
        return bbq1;
        IOException ioexception;
        ioexception;
        System.out.println((new StringBuilder()).append("DiskLruCache ").append(file).append(" is corrupt: ").append(ioexception.getMessage()).append(", removing").toString());
        bbq1.c();
        file.mkdirs();
        bbq bbq2 = new bbq(file, i1, j1, l1);
        bbq2.g();
        return bbq2;
    }

    static bbt a(bbq bbq1, String s, long l1)
    {
        return bbq1.a(s, l1);
    }

    private bbt a(String s, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        bbv bbv1;
        i();
        e(s);
        bbv1 = (bbv)l.get(s);
        if (l1 == -1L) goto _L2; else goto _L1
_L1:
        if (bbv1 == null) goto _L4; else goto _L3
_L3:
        long l2 = bbv.e(bbv1);
        if (l2 == l1) goto _L2; else goto _L4
_L4:
        bbt bbt2 = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return bbt2;
_L2:
        if (bbv1 != null) goto _L6; else goto _L5
_L5:
        bbv bbv3;
        bbv3 = new bbv(this, s, null);
        l.put(s, bbv3);
        bbv bbv2 = bbv3;
_L9:
        bbt2 = new bbt(this, bbv2, null);
        bbv.a(bbv2, bbt2);
        k.write((new StringBuilder()).append("DIRTY ").append(s).append('\n').toString());
        k.flush();
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        bbt bbt1 = bbv.a(bbv1);
label0:
        {
            if (bbt1 == null)
            {
                break label0;
            }
            bbt2 = null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        bbv2 = bbv1;
          goto _L9
    }

    static Writer a(bbq bbq1)
    {
        return bbq1.k;
    }

    static void a(bbq bbq1, bbt bbt1, boolean flag)
    {
        bbq1.a(bbt1, flag);
    }

    private void a(bbt bbt1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        bbv bbv1;
        bbv1 = bbt.a(bbt1);
        if (bbv.a(bbv1) != bbt1)
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
        boolean flag1 = bbv.d(bbv1);
        i1 = 0;
        if (flag1) goto _L2; else goto _L3
_L3:
        int j1 = 0;
_L7:
        int k1 = i;
        i1 = 0;
        if (j1 >= k1) goto _L2; else goto _L4
_L4:
        if (!bbt.b(bbt1)[j1])
        {
            bbt1.b();
            throw new IllegalStateException((new StringBuilder()).append("Newly created entry didn't create value for index ").append(j1).toString());
        }
        if (bbv1.b(j1).exists()) goto _L6; else goto _L5
_L5:
        bbt1.b();
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        j1++;
          goto _L7
_L2:
        long l1;
        File file;
        File file1;
        long l2;
        long l3;
        for (; i1 >= i; i1++)
        {
            break MISSING_BLOCK_LABEL_239;
        }

        file = bbv1.b(i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        if (file.exists())
        {
            file1 = bbv1.a(i1);
            file.renameTo(file1);
            l2 = bbv.b(bbv1)[i1];
            l3 = file1.length();
            bbv.b(bbv1)[i1] = l3;
            j = l3 + (j - l2);
        }
        break MISSING_BLOCK_LABEL_436;
        a(file);
        break MISSING_BLOCK_LABEL_436;
        m = 1 + m;
        bbv.a(bbv1, null);
        if (!(flag | bbv.d(bbv1)))
        {
            break MISSING_BLOCK_LABEL_384;
        }
        bbv.a(bbv1, true);
        k.write((new StringBuilder()).append("CLEAN ").append(bbv.c(bbv1)).append(bbv1.a()).append('\n').toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_343;
        }
        l1 = n;
        n = 1L + l1;
        bbv.a(bbv1, l1);
_L9:
        k.flush();
        if (j > h || h())
        {
            b.submit(o);
        }
          goto _L8
        l.remove(bbv.c(bbv1));
        k.write((new StringBuilder()).append("REMOVE ").append(bbv.c(bbv1)).append('\n').toString());
          goto _L9
    }

    private static void a(File file)
    {
        if (file.exists() && !file.delete())
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    private static void a(File file, File file1, boolean flag)
    {
        if (flag)
        {
            a(file1);
        }
        if (!file.renameTo(file1))
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    static void b(bbq bbq1)
    {
        bbq1.j();
    }

    static boolean c(bbq bbq1)
    {
        return bbq1.h();
    }

    static OutputStream d()
    {
        return p;
    }

    static void d(bbq bbq1)
    {
        bbq1.g();
    }

    private void d(String s)
    {
        int i1;
        int j1;
        int k1;
        i1 = s.indexOf(' ');
        if (i1 == -1)
        {
            throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
        }
        j1 = i1 + 1;
        k1 = s.indexOf(' ', j1);
        if (k1 != -1) goto _L2; else goto _L1
_L1:
        String s2;
        s2 = s.substring(j1);
        if (i1 != "REMOVE".length() || !s.startsWith("REMOVE"))
        {
            break MISSING_BLOCK_LABEL_312;
        }
        l.remove(s2);
_L4:
        return;
_L2:
        String s1 = s.substring(j1, k1);
_L5:
        bbv bbv1 = (bbv)l.get(s1);
        if (bbv1 == null)
        {
            bbv1 = new bbv(this, s1, null);
            l.put(s1, bbv1);
        }
        if (k1 != -1 && i1 == "CLEAN".length() && s.startsWith("CLEAN"))
        {
            String as[] = s.substring(k1 + 1).split(" ");
            bbv.a(bbv1, true);
            bbv.a(bbv1, null);
            bbv.a(bbv1, as);
            return;
        }
        if (k1 == -1 && i1 == "DIRTY".length() && s.startsWith("DIRTY"))
        {
            bbv.a(bbv1, new bbt(this, bbv1, null));
            return;
        }
        if (k1 == -1 && i1 == "READ".length() && s.startsWith("READ")) goto _L4; else goto _L3
_L3:
        throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
        s1 = s2;
          goto _L5
    }

    static int e(bbq bbq1)
    {
        return bbq1.i;
    }

    private void e()
    {
        bbx bbx1 = new bbx(new FileInputStream(d), bbz.a);
        String s = bbx1.a();
        String s1 = bbx1.a();
        String s2 = bbx1.a();
        String s3 = bbx1.a();
        String s4 = bbx1.a();
        if (!"libcore.io.DiskLruCache".equals(s) || !"1".equals(s1) || !Integer.toString(g).equals(s2) || !Integer.toString(i).equals(s3) || !"".equals(s4))
        {
            throw new IOException((new StringBuilder()).append("unexpected journal header: [").append(s).append(", ").append(s1).append(", ").append(s3).append(", ").append(s4).append("]").toString());
        }
        break MISSING_BLOCK_LABEL_187;
        Exception exception;
        exception;
        bbz.a(bbx1);
        throw exception;
        int i1 = 0;
_L2:
        d(bbx1.a());
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        EOFException eofexception;
        eofexception;
        m = i1 - l.size();
        bbz.a(bbx1);
        return;
    }

    private void e(String s)
    {
        if (!a.matcher(s).matches())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("keys must match regex [a-z0-9_-]{1,64}: \"").append(s).append("\"").toString());
        } else
        {
            return;
        }
    }

    static File f(bbq bbq1)
    {
        return bbq1.c;
    }

    private void f()
    {
        a(e);
        for (Iterator iterator = l.values().iterator(); iterator.hasNext();)
        {
            bbv bbv1 = (bbv)iterator.next();
            if (bbv.a(bbv1) == null)
            {
                int j1 = 0;
                while (j1 < i) 
                {
                    j = j + bbv.b(bbv1)[j1];
                    j1++;
                }
            } else
            {
                bbv.a(bbv1, null);
                for (int i1 = 0; i1 < i; i1++)
                {
                    a(bbv1.a(i1));
                    a(bbv1.b(i1));
                }

                iterator.remove();
            }
        }

    }

    private void g()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedWriter bufferedwriter;
        if (k != null)
        {
            k.close();
        }
        bufferedwriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(e), bbz.a));
        Iterator iterator;
        bufferedwriter.write("libcore.io.DiskLruCache");
        bufferedwriter.write("\n");
        bufferedwriter.write("1");
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(g));
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(i));
        bufferedwriter.write("\n");
        bufferedwriter.write("\n");
        iterator = l.values().iterator();
_L1:
        bbv bbv1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_251;
            }
            bbv1 = (bbv)iterator.next();
            if (bbv.a(bbv1) == null)
            {
                break MISSING_BLOCK_LABEL_207;
            }
            bufferedwriter.write((new StringBuilder()).append("DIRTY ").append(bbv.c(bbv1)).append('\n').toString());
        } while (true);
        Exception exception1;
        exception1;
        bufferedwriter.close();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        bufferedwriter.write((new StringBuilder()).append("CLEAN ").append(bbv.c(bbv1)).append(bbv1.a()).append('\n').toString());
          goto _L1
        bufferedwriter.close();
        if (d.exists())
        {
            a(d, f, true);
        }
        a(e, d, false);
        f.delete();
        k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), bbz.a));
        this;
        JVM INSTR monitorexit ;
    }

    private boolean h()
    {
        return m >= 2000 && m >= l.size();
    }

    private void i()
    {
        if (k == null)
        {
            throw new IllegalStateException("cache is closed");
        } else
        {
            return;
        }
    }

    private void j()
    {
        while (j > h) 
        {
            c((String)((java.util.Map.Entry)l.entrySet().iterator().next()).getKey());
        }
    }

    public bbw a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        bbv bbv1;
        i();
        e(s);
        bbv1 = (bbv)l.get(s);
        if (bbv1 != null) goto _L2; else goto _L1
_L1:
        bbw bbw1 = null;
_L8:
        this;
        JVM INSTR monitorexit ;
        return bbw1;
_L2:
        if (!bbv.d(bbv1))
        {
            bbw1 = null;
            continue; /* Loop/switch isn't completed */
        }
        InputStream ainputstream[] = new InputStream[i];
        int i1 = 0;
_L4:
        if (i1 >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        ainputstream[i1] = new FileInputStream(bbv1.a(i1));
        i1++;
        if (true) goto _L4; else goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        int j1 = 0;
_L6:
        if (j1 >= i || ainputstream[j1] == null)
        {
            break; /* Loop/switch isn't completed */
        }
        bbz.a(ainputstream[j1]);
        j1++;
        if (true) goto _L6; else goto _L5
_L3:
        m = 1 + m;
        k.append((new StringBuilder()).append("READ ").append(s).append('\n').toString());
        if (h())
        {
            b.submit(o);
        }
        bbw1 = new bbw(this, s, bbv.e(bbv1), ainputstream, bbv.b(bbv1), null);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
_L5:
        bbw1 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public boolean a()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = k;
        boolean flag;
        if (writer == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public bbt b(String s)
    {
        return a(s, -1L);
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        i();
        j();
        k.flush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void c()
    {
        close();
        bbz.a(c);
    }

    public boolean c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        bbv bbv1;
        i();
        e(s);
        bbv1 = (bbv)l.get(s);
        if (bbv1 == null) goto _L2; else goto _L1
_L1:
        bbt bbt1 = bbv.a(bbv1);
        int i1 = 0;
        if (bbt1 == null) goto _L3; else goto _L2
_L2:
        boolean flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        j = j - bbv.b(bbv1)[i1];
        bbv.b(bbv1)[i1] = 0L;
        i1++;
_L3:
        File file;
        if (i1 >= i)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        file = bbv1.a(i1);
        if (!file.exists() || file.delete()) goto _L5; else goto _L4
_L4:
        throw new IOException((new StringBuilder()).append("failed to delete ").append(file).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        m = 1 + m;
        k.append((new StringBuilder()).append("REMOVE ").append(s).append('\n').toString());
        l.remove(s);
        if (h())
        {
            b.submit(o);
        }
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = k;
        if (writer != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = (new ArrayList(l.values())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            bbv bbv1 = (bbv)iterator.next();
            if (bbv.a(bbv1) != null)
            {
                bbv.a(bbv1).b();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        throw exception;
        j();
        k.close();
        k = null;
          goto _L1
    }

}
