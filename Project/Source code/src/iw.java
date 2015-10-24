// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class iw
{

    public static String a(File file)
    {
        FileInputStream fileinputstream;
        String s;
        if (!file.exists() || !file.isFile())
        {
            throw new FileNotFoundException("File not exists");
        }
        fileinputstream = new FileInputStream(file);
        MessageDigest messagedigest;
        DigestInputStream digestinputstream;
        byte abyte0[];
        int i;
        MessageDigest messagedigest1;
        try
        {
            messagedigest1 = MessageDigest.getInstance("MD5");
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            messagedigest = null;
            continue; /* Loop/switch isn't completed */
        }
        messagedigest = messagedigest1;
_L4:
        digestinputstream = new DigestInputStream(fileinputstream, messagedigest);
        abyte0 = new byte[1024];
        do
        {
            i = digestinputstream.read(abyte0, 0, abyte0.length);
        } while (i > 0);
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
_L2:
        for (s = (new BigInteger(1, messagedigest.digest())).toString(16); s.length() < 32; s = (new StringBuilder()).append("0").append(s).toString()) { }
        break; /* Loop/switch isn't completed */
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        throw exception;
_L1:
        return s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_95;
        }
        byte abyte0[] = MessageDigest.getInstance("MD5").digest(s.getBytes());
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder(2 * abyte0.length);
        int i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            byte byte0 = abyte0[j];
            if ((byte0 & 0xff) < 16)
            {
                stringbuilder.append("0");
            }
            stringbuilder.append(Integer.toHexString(byte0 & 0xff));
        }

        break MISSING_BLOCK_LABEL_97;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        nosuchalgorithmexception.printStackTrace();
        return null;
        return stringbuilder.toString();
    }
}
