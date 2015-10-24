// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class te
{

    private static Cipher a;
    private static Cipher b;
    private static KeyFactory c;

    public static String a(String s, String s1)
    {
        te;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.trim().length();
        if (i != 0) goto _L3; else goto _L2
_L2:
        te;
        JVM INSTR monitorexit ;
        return s;
_L3:
        String s2;
        X509EncodedKeySpec x509encodedkeyspec = new X509EncodedKeySpec(bdi.b(s1.getBytes()));
        java.security.PublicKey publickey = c().generatePublic(x509encodedkeyspec);
        Cipher cipher = b();
        cipher.init(1, publickey);
        s2 = b(cipher.doFinal(s.getBytes("utf-8")));
        s = s2;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EncryptionUtil", "Failed to encrypt via RSA.", exception1);
        }
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public static String a(String s, byte abyte0[])
    {
        te;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.trim().length();
        if (i != 0) goto _L3; else goto _L2
_L2:
        te;
        JVM INSTR monitorexit ;
        return s;
_L3:
        String s1;
        SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
        Cipher cipher = a();
        cipher.init(1, secretkeyspec);
        s1 = b(cipher.doFinal(s.getBytes("utf-8")));
        s = s1;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EncryptionUtil", "Failed to encrypt via AES.", exception1);
        }
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public static String a(byte abyte0[])
    {
        te;
        JVM INSTR monitorenter ;
        String s1;
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        messagedigest.update(abyte0);
        s1 = b(messagedigest.digest());
        String s = s1;
_L2:
        te;
        JVM INSTR monitorexit ;
        return s;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        if (ud.d)
        {
            Log.e("stat.EncryptionUtil", "Failed to encryptSHA1!", nosuchalgorithmexception);
        }
        break MISSING_BLOCK_LABEL_82;
        NullPointerException nullpointerexception;
        nullpointerexception;
        if (ud.d)
        {
            Log.e("stat.EncryptionUtil", "Failed to encryptSHA1!", nullpointerexception);
        }
        break MISSING_BLOCK_LABEL_82;
        Exception exception;
        exception;
        throw exception;
        s = "";
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Cipher a()
    {
        if (a == null)
        {
            a = Cipher.getInstance("AES");
        }
        return a;
    }

    public static String b(String s, String s1)
    {
        te;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.trim().length();
        if (i != 0) goto _L3; else goto _L2
_L2:
        te;
        JVM INSTR monitorexit ;
        return s;
_L3:
        String s2;
        SecretKeySpec secretkeyspec = new SecretKeySpec(bdi.b(s1.getBytes()), "AES");
        Cipher cipher = a();
        cipher.init(1, secretkeyspec);
        s2 = b(cipher.doFinal(s.getBytes("utf-8")));
        s = s2;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EncryptionUtil", "Failed to encrypt via AES.", exception1);
        }
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    private static String b(byte abyte0[])
    {
        return String.valueOf(bdk.a(abyte0));
    }

    private static Cipher b()
    {
        if (b == null)
        {
            b = Cipher.getInstance("RSA");
        }
        return b;
    }

    private static KeyFactory c()
    {
        if (c == null)
        {
            c = KeyFactory.getInstance("RSA");
        }
        return c;
    }
}
