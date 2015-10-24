// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class arf extends AsyncTask
{

    private Context a;

    public arf(Context context)
    {
        a = context;
    }

    private static void a(ZipInputStream zipinputstream, File file)
    {
        byte abyte0[] = new byte[4096];
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        do
        {
            int i = zipinputstream.read(abyte0);
            if (i != -1)
            {
                fileoutputstream.write(abyte0, 0, i);
            } else
            {
                fileoutputstream.close();
                return;
            }
        } while (true);
    }

    public final transient arg a(String as[])
    {
        String s1;
        String s3;
        String s4;
        long l;
        File file;
        String s = as[0];
        s1 = aze.a(s);
        String s2 = adz.a(a, s);
        s3 = as[1];
        s4 = as[2];
        l = Long.parseLong(as[3]);
        if (s2 == null)
        {
            return new arg(1, s1, s3, s4, l);
        }
        file = new File(s2);
        if (!file.exists() || !file.isFile())
        {
            return new arg(1, s1, s3, s4, l);
        }
        ZipInputStream zipinputstream;
        ZipEntry zipentry;
        File file1;
        File file2;
        zipinputstream = new ZipInputStream(new FileInputStream(file));
        zipentry = zipinputstream.getNextEntry();
        file1 = a.getFileStreamPath("skin_v.jpg");
        file2 = a.getFileStreamPath("skin_h.jpg");
        boolean flag;
        ZipEntry zipentry1;
        boolean flag1;
        flag = false;
        zipentry1 = zipentry;
        flag1 = false;
_L9:
        if (zipentry1 == null) goto _L2; else goto _L1
_L1:
        String s5 = zipentry1.getName();
        if (!"skin_v.jpg".equals(s5)) goto _L4; else goto _L3
_L3:
        a(zipinputstream, file1);
        flag = true;
          goto _L5
_L2:
        zipinputstream.closeEntry();
        zipinputstream.close();
        if (!flag || !flag1) goto _L7; else goto _L6
_L6:
        boolean flag2 = true & file1.renameTo(a.getFileStreamPath("ot__v.jpg")) & file2.renameTo(a.getFileStreamPath("ot__h.jpg"));
        int i = 0;
        ZipEntry zipentry2;
        if (!flag2)
        {
            i = 1;
        }
        return new arg(i, s1, s3, s4, l);
_L4:
        if (!"skin_h.jpg".equals(s5)) goto _L5; else goto _L8
_L8:
        a(zipinputstream, file2);
        flag1 = true;
          goto _L5
_L10:
        zipentry2 = zipinputstream.getNextEntry();
        zipentry1 = zipentry2;
          goto _L9
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
_L7:
        return new arg(1, s1, s3, s4, l);
_L5:
        if (!flag || !flag1) goto _L10; else goto _L2
    }

    public Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }
}
