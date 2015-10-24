// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Parcel;
import android.util.SparseArray;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class ats extends atl
{

    public static final android.os.Parcelable.Creator o = new att();
    public atu a;
    public ArrayList b;
    public double h;
    public double i;
    public long j;
    public long k;
    public double l;
    public long m;
    public double n;

    public ats()
    {
        b = new ArrayList();
    }

    private SparseArray a(ArrayList arraylist)
    {
        SparseArray sparsearray = new SparseArray();
        atu atu1;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); sparsearray.put(atu1.a, atu1))
        {
            atu1 = (atu)(atl)iterator.next();
        }

        return sparsearray;
    }

    private ArrayList a(SparseArray sparsearray)
    {
        ArrayList arraylist = new ArrayList();
        int i1 = sparsearray.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            arraylist.add(sparsearray.valueAt(j1));
        }

        return arraylist;
    }

    private static void a(Context context, int i1, double d1, ArrayList arraylist, double d2)
    {
        int j1;
        double d3;
        int k1;
        j1 = arraylist.size();
        if (j1 < i1)
        {
            i1 = j1;
        }
        d3 = 0.0D;
        k1 = 0;
_L13:
        if (k1 >= i1) goto _L2; else goto _L1
_L1:
        double d5 = ((atl)arraylist.get(k1)).e;
        if (d5 >= 0.10000000000000001D) goto _L3; else goto _L2
_L2:
        double d4;
        int l1;
        atu atu1;
        d4 = d2 - d3;
        l1 = d3 != 0.0D;
        atu1 = null;
        if (l1 <= 0) goto _L5; else goto _L4
_L4:
        int i2;
        i2 = d4 != d1;
        atu1 = null;
        if (i2 < 0) goto _L5; else goto _L6
_L6:
        atu atu2;
        int j2;
        atu2 = new atu(-1);
        j2 = k1;
_L11:
        if (j2 >= j1) goto _L8; else goto _L7
_L7:
        atl atl1 = (atl)arraylist.get(j2);
        if (atl1.e != 0.0D) goto _L9; else goto _L8
_L8:
        atu2.e = d4;
        atu1 = atu2;
_L5:
        for (; k1 < arraylist.size(); arraylist.remove(k1)) { }
        break; /* Loop/switch isn't completed */
_L3:
        d3 += d5;
        k1++;
        continue; /* Loop/switch isn't completed */
_L9:
        atu2.c(atl1);
        j2++;
        if (true) goto _L11; else goto _L10
_L10:
        if (atu1 != null)
        {
            arraylist.add(atu1);
        }
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private boolean a(Parcel parcel)
    {
        int i1 = parcel.readInt();
        if (i1 != 0xe9d3a758)
        {
            azt.d("UidPowerStats", (new StringBuilder()).append("Data corrupted with magic number: ").append(i1).toString());
            return false;
        }
        int j1 = parcel.readInt();
        if (j1 < 5)
        {
            azt.c("UidPowerStats", (new StringBuilder()).append("outdated data, version readed: ").append(j1).append(", curVersion: ").append(5).toString());
            return false;
        }
        j = parcel.readLong();
        k = parcel.readLong();
        l = parcel.readDouble();
        m = parcel.readLong();
        n = parcel.readDouble();
        g.clear();
        int k1 = parcel.readInt();
        for (int l1 = 0; l1 < k1;)
        {
            atu atu1 = new atu(-2);
            if (atu1.b(parcel))
            {
                g.add(atu1);
                if (atu1.a == 0)
                {
                    a = atu1;
                }
                l1++;
            } else
            {
                azt.d("UidPowerStats", (new StringBuilder()).append("failed to read child #").append(l1).toString());
                return false;
            }
        }

        return true;
    }

    static boolean a(ats ats1, Parcel parcel)
    {
        return ats1.a(parcel);
    }

    private static byte[] a(FileInputStream fileinputstream)
    {
        byte abyte0[] = new byte[fileinputstream.available()];
        int i1 = 0;
        do
        {
            int k1;
            do
            {
                int j1 = fileinputstream.read(abyte0, i1, abyte0.length - i1);
                if (j1 <= 0)
                {
                    return abyte0;
                }
                i1 += j1;
                k1 = fileinputstream.available();
            } while (k1 <= abyte0.length - i1);
            byte abyte1[] = new byte[k1 + i1];
            System.arraycopy(abyte0, 0, abyte1, 0, i1);
            abyte0 = abyte1;
        } while (true);
    }

    private static void b(Context context, int i1, double d1, ArrayList arraylist, double d2)
    {
        int j1;
        double d3;
        int k1;
        j1 = arraylist.size();
        if (j1 < i1)
        {
            i1 = j1;
        }
        d3 = 0.0D;
        k1 = 0;
_L13:
        if (k1 >= i1) goto _L2; else goto _L1
_L1:
        double d5 = ((atu)arraylist.get(k1)).w;
        if (d5 >= 0.10000000000000001D) goto _L3; else goto _L2
_L2:
        double d4;
        int l1;
        atu atu1;
        d4 = d2 - d3;
        l1 = d3 != 0.0D;
        atu1 = null;
        if (l1 <= 0) goto _L5; else goto _L4
_L4:
        int i2;
        i2 = d4 != d1;
        atu1 = null;
        if (i2 < 0) goto _L5; else goto _L6
_L6:
        atu atu2;
        int j2;
        atu2 = new atu(-1);
        j2 = k1;
_L11:
        if (j2 >= j1) goto _L8; else goto _L7
_L7:
        atu atu3 = (atu)arraylist.get(j2);
        if (atu3.w != 0.0D) goto _L9; else goto _L8
_L8:
        atu2.w = d4;
        atu1 = atu2;
_L5:
        for (; k1 < arraylist.size(); arraylist.remove(k1)) { }
        break; /* Loop/switch isn't completed */
_L3:
        d3 += d5;
        k1++;
        continue; /* Loop/switch isn't completed */
_L9:
        atu2.c(atu3);
        j2++;
        if (true) goto _L11; else goto _L10
_L10:
        if (atu1 != null)
        {
            arraylist.add(atu1);
        }
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private void b(Parcel parcel)
    {
        parcel.writeInt(0xe9d3a758);
        parcel.writeInt(5);
        parcel.writeLong(j);
        parcel.writeLong(k);
        parcel.writeDouble(l);
        parcel.writeLong(m);
        parcel.writeDouble(n);
        parcel.writeInt(g.size());
        for (Iterator iterator = g.iterator(); iterator.hasNext(); ((atu)(atl)iterator.next()).a(parcel)) { }
    }

    public void a()
    {
        super.a();
        if (a != null)
        {
            a.a();
        }
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((atu)iterator.next()).a()) { }
        b.clear();
    }

    protected void a(double d1)
    {
        super.a(d1);
        if (h > 0.0D)
        {
            i = d1;
            for (Iterator iterator = b.iterator(); iterator.hasNext();)
            {
                atu atu1 = (atu)iterator.next();
                atu1.w = d1 * (atu1.v / h);
            }

            Collections.sort(b, new atw());
            return;
        } else
        {
            b.clear();
            return;
        }
    }

    public void a(int i1, double d1, long l1)
    {
        Iterator iterator;
        if (a == null)
        {
            azt.d("UidPowerStats", "no system entry yet.");
            a = new atu(0);
            a.b = "android.kernel";
            g.add(a);
        }
        iterator = a.g.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        atx atx1 = (atx)(atl)iterator.next();
        if (atx1.a != i1) goto _L4; else goto _L3
_L3:
        boolean flag;
        atx1.d = d1 + atx1.d;
        atx1.b = l1 + atx1.b;
        flag = true;
_L6:
        if (!flag)
        {
            a.b(new atx(i1, d1, l1));
        }
        return;
_L2:
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(int i1, boolean flag)
    {
        int j1;
        int i2;
        j1 = 0;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        atu atu2 = (atu)b.get(i1);
        b.remove(i1);
        i2 = atu2.a;
        if (i2 == -1) goto _L2; else goto _L1
_L1:
        int j2 = g.size();
_L6:
        if (j1 >= j2) goto _L2; else goto _L3
_L3:
        if (((atu)g.get(j1)).a != i2) goto _L5; else goto _L4
_L4:
        g.remove(j1);
_L2:
        return;
_L5:
        j1++;
          goto _L6
        atu atu1 = (atu)g.get(i1);
        g.remove(i1);
        int k1 = atu1.a;
        if (k1 != -1)
        {
            int l1 = b.size();
            while (j1 < l1) 
            {
                if (((atu)b.get(j1)).a == k1)
                {
                    b.remove(j1);
                    return;
                }
                j1++;
            }
        }
          goto _L2
    }

    public void a(Context context, int i1, double d1)
    {
        a(context, i1, d1, g, e);
        b(context, i1, d1, b, i);
    }

    public void a(atd atd1)
    {
        if (j > 0L)
        {
            Iterator iterator = g.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                atu atu1 = (atu)(atl)iterator.next();
                double d1 = (double)atu1.j / (double)j;
                double d2 = d1 * (double)k;
                double d3 = d1 * (double)m;
                double d4 = (d2 * l + d3 * n) / 1000D;
                atu1.b(new atx(1, d4, (long)d2));
                atu1.l = (long)d2;
                if (atd1 != null)
                {
                    atd1.b(new atf(atu1.a, atu1.b, d4));
                }
            } while (true);
        }
    }

    protected void a(atl atl1)
    {
        super.a(atl1);
        ats ats1 = (ats)atl1;
        j = ats1.j;
        k = ats1.k;
        l = ats1.l;
        m = ats1.m;
        n = ats1.n;
    }

    public void a(ats ats1)
    {
        SparseArray sparsearray = a(g);
        SparseArray sparsearray1 = a(ats1.g);
        int i1 = sparsearray1.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            atu atu1 = (atu)sparsearray.get(sparsearray1.keyAt(j1));
            if (atu1 != null)
            {
                atu1.a((atu)sparsearray1.valueAt(j1));
            }
        }

        g.clear();
        g = a(sparsearray);
        j = j - ats1.j;
        k = k - ats1.k;
        m = m - ats1.m;
    }

    public boolean a(Context context, String s)
    {
        FileInputStream fileinputstream = null;
        boolean flag1;
        fileinputstream = context.openFileInput(s);
        byte abyte0[] = a(fileinputstream);
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        flag1 = a(parcel);
        boolean flag = flag1;
_L1:
        IOException ioexception;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception1)
            {
                return flag;
            }
        }
        return flag;
        ioexception;
        azt.d("UidPowerStats", (new StringBuilder()).append("Failed to read file: ").append(s).append(" with exception: ").append(ioexception).toString());
        flag = false;
          goto _L1
    }

    public void b(Context context, String s)
    {
        Parcel parcel = Parcel.obtain();
        b(parcel);
        byte abyte0[] = parcel.marshall();
        parcel.recycle();
        FileOutputStream fileoutputstream = null;
        try
        {
            fileoutputstream = context.openFileOutput(s, 0);
            fileoutputstream.write(abyte0);
        }
        catch (IOException ioexception)
        {
            azt.d("UidPowerStats", (new StringBuilder()).append("Failed to write file: ").append(s).append(" with exception: ").append(ioexception).toString());
        }
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        fileoutputstream.close();
        return;
        IOException ioexception1;
        ioexception1;
    }

    public void b(atl atl1)
    {
        atu atu1 = (atu)atl1;
        if (atu1.a >= 10000 && atu1.a <= 0x1869f)
        {
            if ("com.dianxinos.dxbs".equals(atu1.b))
            {
                return;
            } else
            {
                g.add(atl1);
                return;
            }
        }
        if (a == null)
        {
            a = atu1;
            a.a = 0;
            g.add(a);
            return;
        } else
        {
            a.c(atu1);
            return;
        }
    }

    protected atl c()
    {
        return e();
    }

    protected void d()
    {
        super.d();
        b.clear();
        h = 0.0D;
        atu atu1;
        for (Iterator iterator = g.iterator(); iterator.hasNext(); b.add(atu1))
        {
            atu1 = (atu)(atl)iterator.next();
            h = h + atu1.v;
        }

    }

    protected ats e()
    {
        return new ats();
    }

}
