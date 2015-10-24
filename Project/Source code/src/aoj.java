// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.SparseArray;
import com.dianxinos.powermanager.PowerMangerApplication;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public class aoj
{

    private static final kl b = kl.a(PowerMangerApplication.a());
    private static final String c = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/Android/data/").append("com.dianxinos.dxbs").append("/files/backup").toString();
    private static aoj d;
    protected Object a;
    private SparseArray e;
    private ArrayList f;
    private volatile ArrayList g;
    private ArrayList h;
    private Handler i;
    private Context j;

    private aoj()
    {
        e = new SparseArray();
        f = new ArrayList();
        g = new ArrayList();
        h = new ArrayList();
        a = new Object();
        j = PowerMangerApplication.a();
        i();
        HandlerThread handlerthread = new HandlerThread("skin_manager");
        handlerthread.start();
        i = new aok(this, handlerthread.getLooper());
    }

    static Handler a(aoj aoj1)
    {
        return aoj1.i;
    }

    private ArrayList a(InputStream inputstream)
    {
        ArrayList arraylist = new ArrayList();
        ObjectInputStream objectinputstream = new ObjectInputStream(inputstream);
_L2:
        Exception exception1;
        String s;
        try
        {
            s = (String)objectinputstream.readObject();
        }
        catch (EOFException eofexception)
        {
            if (objectinputstream != null)
            {
                try
                {
                    objectinputstream.close();
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                    return arraylist;
                }
                return arraylist;
            } else
            {
                break MISSING_BLOCK_LABEL_54;
            }
        }
        arraylist.add(aon.a(s));
        if (true) goto _L2; else goto _L1
_L1:
        exception1;
_L6:
        exception1.printStackTrace();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
                return arraylist;
            }
        }
        return arraylist;
        Exception exception;
        exception;
        objectinputstream = null;
_L4:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
        objectinputstream = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void a(ArrayList arraylist, String s)
    {
        Exception exception;
        FileOutputStream fileoutputstream;
        ObjectOutputStream objectoutputstream1;
        FileOutputStream fileoutputstream2;
        ObjectOutputStream objectoutputstream = null;
        Exception exception1;
        FileOutputStream fileoutputstream1;
        IOException ioexception;
        IOException ioexception1;
        IOException ioexception2;
        IOException ioexception3;
        ObjectOutputStream objectoutputstream2;
        Iterator iterator;
        IOException ioexception4;
        IOException ioexception5;
        try
        {
            File file = new File(s);
            if (!file.exists())
            {
                file.createNewFile();
            }
            fileoutputstream2 = new FileOutputStream(file);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            fileoutputstream = null;
            objectoutputstream1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            fileoutputstream2 = null;
        }
        objectoutputstream2 = new ObjectOutputStream(fileoutputstream2);
        for (iterator = arraylist.iterator(); iterator.hasNext(); objectoutputstream2.writeObject(((aon)iterator.next()).a())) { }
          goto _L1
        exception;
        fileoutputstream = fileoutputstream2;
        objectoutputstream1 = objectoutputstream2;
_L6:
        exception.printStackTrace();
        if (objectoutputstream1 != null)
        {
            try
            {
                objectoutputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        }
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        fileoutputstream.close();
_L2:
        return;
_L1:
        objectoutputstream2.flush();
        if (objectoutputstream2 != null)
        {
            try
            {
                objectoutputstream2.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5)
            {
                ioexception5.printStackTrace();
            }
        }
        if (fileoutputstream2 != null)
        {
            try
            {
                fileoutputstream2.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
            return;
        }
          goto _L2
        ioexception2;
        ioexception2.printStackTrace();
        return;
_L4:
        if (objectoutputstream != null)
        {
            try
            {
                objectoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        if (fileoutputstream2 != null)
        {
            try
            {
                fileoutputstream2.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception1;
        exception1;
        objectoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        objectoutputstream = objectoutputstream2;
        continue; /* Loop/switch isn't completed */
        exception1;
        fileoutputstream1 = fileoutputstream;
        objectoutputstream = objectoutputstream1;
        fileoutputstream2 = fileoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_37;
        exception;
        fileoutputstream = fileoutputstream2;
        objectoutputstream1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static SparseArray b(aoj aoj1)
    {
        return aoj1.e;
    }

    public static aoj b()
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        aoj;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new aoj();
        }
        aoj;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        aoj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void b(String s)
    {
        d(s);
    }

    private boolean b(aev aev1)
    {
label0:
        {
            if (g.isEmpty())
            {
                break label0;
            }
            Iterator iterator = g.iterator();
            aev aev2;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                aev2 = (aev)iterator.next();
            } while (aev2.a != aev1.a);
            if (aev2.equals(aev1))
            {
                return false;
            }
            g.remove(aev2);
        }
        g.add(aev1);
        return true;
    }

    static ArrayList c(aoj aoj1)
    {
        return aoj1.f;
    }

    private ArrayList c(String s)
    {
        Object obj;
        ArrayList arraylist;
        File file;
        obj = null;
        arraylist = new ArrayList();
        file = new File(s);
        boolean flag = file.exists();
        obj = null;
        if (flag) goto _L2; else goto _L1
_L1:
        ArrayList arraylist1;
        obj = j.getAssets().open("skin/skin_mgr");
        d("use skin in asset");
        arraylist1 = a(((InputStream) (obj)));
        arraylist = arraylist1;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
                return arraylist;
            }
        }
_L4:
        return arraylist;
_L2:
        FileInputStream fileinputstream = new FileInputStream(file);
        ArrayList arraylist2;
        d("use skin from cache");
        arraylist2 = a(fileinputstream);
        arraylist = arraylist2;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
                return arraylist;
            }
            return arraylist;
        }
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception1;
        ioexception1;
_L8:
        ioexception1.printStackTrace();
        d(ioexception1.getMessage());
        if (obj == null) goto _L4; else goto _L5
_L5:
        try
        {
            ((InputStream) (obj)).close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
            return arraylist;
        }
        return arraylist;
        Exception exception;
        exception;
_L7:
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        obj = fileinputstream;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception1;
        obj = fileinputstream;
          goto _L8
    }

    static ArrayList d(aoj aoj1)
    {
        return aoj1.h;
    }

    private static void d(String s)
    {
    }

    static Context e(aoj aoj1)
    {
        return aoj1.j;
    }

    static kl h()
    {
        return b;
    }

    private void i()
    {
        if (azu.a()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        FileInputStream fileinputstream1;
        File file = new File(c);
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_239;
        }
        fileinputstream1 = new FileInputStream(file);
        ObjectInputStream objectinputstream = new ObjectInputStream(fileinputstream1);
_L4:
        String s = (String)objectinputstream.readObject();
        String s1 = new String(ayw.a(s, 0));
        g.add(new aev(new JSONObject(s1)));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        FileInputStream fileinputstream = fileinputstream1;
_L8:
        exception.printStackTrace();
        Exception exception1;
        EOFException eofexception;
        IOException ioexception4;
        IOException ioexception5;
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception3) { }
        }
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
                return;
            }
            catch (IOException ioexception2)
            {
                return;
            }
        }
          goto _L1
        eofexception;
_L9:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5) { }
        }
        if (fileinputstream1 == null) goto _L1; else goto _L5
_L5:
        try
        {
            fileinputstream1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception4)
        {
            return;
        }
        exception1;
        objectinputstream = null;
        fileinputstream1 = null;
_L7:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception1) { }
        }
        if (fileinputstream1 != null)
        {
            try
            {
                fileinputstream1.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
        exception1;
        objectinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        continue; /* Loop/switch isn't completed */
        exception1;
        fileinputstream1 = fileinputstream;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        objectinputstream = null;
        fileinputstream = null;
          goto _L8
        exception;
        fileinputstream = fileinputstream1;
        objectinputstream = null;
          goto _L8
        objectinputstream = null;
        fileinputstream1 = null;
          goto _L9
    }

    public aev a(String s)
    {
        if (s == null)
        {
            return null;
        }
        Iterator iterator = e().iterator();
        aev aev1;
label0:
        do
        {
            if (iterator.hasNext())
            {
                Iterator iterator1 = ((aon)iterator.next()).a.iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        continue label0;
                    }
                    aev1 = (aev)iterator1.next();
                } while (!s.equals(aev1.g));
                break;
            } else
            {
                return null;
            }
        } while (true);
        return aev1;
    }

    public aev a(String s, ArrayList arraylist)
    {
        Iterator iterator = arraylist.iterator();
        aev aev1;
label0:
        do
        {
            if (iterator.hasNext())
            {
                Iterator iterator1 = ((aon)iterator.next()).a.iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        continue label0;
                    }
                    aev1 = (aev)iterator1.next();
                } while (!aev1.q.equals(s));
                break;
            } else
            {
                return null;
            }
        } while (true);
        return aev1;
    }

    public ArrayList a()
    {
        return (ArrayList)g.clone();
    }

    public ArrayList a(boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = g.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aev aev1 = (aev)iterator.next();
            if (flag && !TextUtils.isEmpty(aev1.g) || !flag && TextUtils.isEmpty(aev1.g))
            {
                arraylist.add(String.valueOf(aev1.u));
                iterator.remove();
            }
        } while (true);
        g();
        return arraylist;
    }

    public void a(aev aev1)
    {
        ObjectOutputStream objectoutputstream = null;
        if (azu.a() && b(aev1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        FileOutputStream fileoutputstream2;
        File file = new File(c);
        if (file.getParent() == null)
        {
            file.mkdirs();
        }
        if (!file.exists())
        {
            file.createNewFile();
        }
        fileoutputstream2 = new FileOutputStream(file);
        ObjectOutputStream objectoutputstream2 = new ObjectOutputStream(fileoutputstream2);
        for (Iterator iterator = g.iterator(); iterator.hasNext(); objectoutputstream2.writeObject(ayw.b(((aev)iterator.next()).a().getBytes(), 0))) { }
          goto _L3
        Exception exception;
        exception;
        FileOutputStream fileoutputstream;
        ObjectOutputStream objectoutputstream1;
        fileoutputstream = fileoutputstream2;
        objectoutputstream1 = objectoutputstream2;
_L8:
        exception.printStackTrace();
        Exception exception1;
        if (objectoutputstream1 != null)
        {
            try
            {
                objectoutputstream1.close();
            }
            catch (IOException ioexception3) { }
        }
        if (fileoutputstream == null) goto _L1; else goto _L4
_L4:
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
_L3:
        objectoutputstream2.flush();
        if (objectoutputstream2 != null)
        {
            try
            {
                objectoutputstream2.close();
            }
            catch (IOException ioexception5) { }
        }
        if (fileoutputstream2 == null) goto _L1; else goto _L5
_L5:
        try
        {
            fileoutputstream2.close();
            return;
        }
        catch (IOException ioexception4)
        {
            return;
        }
        exception1;
        fileoutputstream2 = null;
_L7:
        if (objectoutputstream != null)
        {
            try
            {
                objectoutputstream.close();
            }
            catch (IOException ioexception1) { }
        }
        if (fileoutputstream2 != null)
        {
            try
            {
                fileoutputstream2.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
        exception1;
        objectoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        objectoutputstream = objectoutputstream2;
        continue; /* Loop/switch isn't completed */
        exception1;
        FileOutputStream fileoutputstream1 = fileoutputstream;
        objectoutputstream = objectoutputstream1;
        fileoutputstream2 = fileoutputstream1;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        fileoutputstream = null;
        objectoutputstream1 = null;
          goto _L8
        exception;
        fileoutputstream = fileoutputstream2;
        objectoutputstream1 = null;
          goto _L8
    }

    public aev b(String s, ArrayList arraylist)
    {
        Iterator iterator = arraylist.iterator();
        aev aev1;
label0:
        do
        {
            if (iterator.hasNext())
            {
                Iterator iterator1 = ((aon)iterator.next()).a.iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        continue label0;
                    }
                    aev1 = (aev)iterator1.next();
                } while (!aev1.p.equals(s));
                break;
            } else
            {
                return null;
            }
        } while (true);
        return aev1;
    }

    public void c()
    {
        synchronized (a)
        {
            a(f, (new StringBuilder()).append(PowerMangerApplication.a().getFilesDir().getAbsolutePath()).append("/").append("skin_mgr").toString());
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d()
    {
        if (!azx.b(j))
        {
            return;
        }
        long l = aog.d(j);
        long l1 = System.currentTimeMillis();
        if (l1 > l && l1 <= l + 0x5265c00L)
        {
            d("Ignore pulling cause time gap is less than one day.");
            return;
        } else
        {
            aog.f(j, l1);
            aom aom1 = new aom(this, null);
            b.a("batteryskin", aom1);
            return;
        }
    }

    public ArrayList e()
    {
        if (f != null && !f.isEmpty())
        {
            d("get list from memory");
            return f;
        }
        synchronized (a)
        {
            f = c((new StringBuilder()).append(PowerMangerApplication.a().getFilesDir().getAbsolutePath()).append("/").append("skin_mgr").toString());
            d((new StringBuilder()).append("get list from disk, empty: ").append(f.isEmpty()).toString());
        }
        return f;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void f()
    {
        if (!azx.b(j))
        {
            return;
        }
        long l = azr.a(j).j();
        long l1 = System.currentTimeMillis();
        if (l1 - l <= 0x5265c00L && l < l1)
        {
            d("Ignore pull image");
            return;
        } else
        {
            i.post(new aoo(this, e()));
            azr.a(j).b(l1);
            return;
        }
    }

    public void g()
    {
        ObjectOutputStream objectoutputstream = null;
        if (azu.a()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        FileOutputStream fileoutputstream2;
        File file = new File(c);
        if (file.getParent() == null)
        {
            file.mkdirs();
        }
        if (!file.exists())
        {
            file.createNewFile();
        }
        fileoutputstream2 = new FileOutputStream(file);
        ObjectOutputStream objectoutputstream2 = new ObjectOutputStream(fileoutputstream2);
        for (Iterator iterator = g.iterator(); iterator.hasNext(); objectoutputstream2.writeObject(ayw.b(((aev)iterator.next()).a().getBytes(), 0))) { }
          goto _L3
        Exception exception;
        exception;
        FileOutputStream fileoutputstream;
        ObjectOutputStream objectoutputstream1;
        fileoutputstream = fileoutputstream2;
        objectoutputstream1 = objectoutputstream2;
_L8:
        exception.printStackTrace();
        Exception exception1;
        if (objectoutputstream1 != null)
        {
            try
            {
                objectoutputstream1.close();
            }
            catch (IOException ioexception3) { }
        }
        if (fileoutputstream == null) goto _L1; else goto _L4
_L4:
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
_L3:
        objectoutputstream2.flush();
        if (objectoutputstream2 != null)
        {
            try
            {
                objectoutputstream2.close();
            }
            catch (IOException ioexception5) { }
        }
        if (fileoutputstream2 == null) goto _L1; else goto _L5
_L5:
        try
        {
            fileoutputstream2.close();
            return;
        }
        catch (IOException ioexception4)
        {
            return;
        }
        exception1;
        fileoutputstream2 = null;
_L7:
        if (objectoutputstream != null)
        {
            try
            {
                objectoutputstream.close();
            }
            catch (IOException ioexception1) { }
        }
        if (fileoutputstream2 != null)
        {
            try
            {
                fileoutputstream2.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
        exception1;
        objectoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        objectoutputstream = objectoutputstream2;
        continue; /* Loop/switch isn't completed */
        exception1;
        FileOutputStream fileoutputstream1 = fileoutputstream;
        objectoutputstream = objectoutputstream1;
        fileoutputstream2 = fileoutputstream1;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        fileoutputstream = null;
        objectoutputstream1 = null;
          goto _L8
        exception;
        fileoutputstream = fileoutputstream2;
        objectoutputstream1 = null;
          goto _L8
    }

}
