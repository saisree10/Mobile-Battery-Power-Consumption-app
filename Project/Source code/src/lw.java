// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;

public class lw
{

    public static PublicKey a(String s, String s1)
    {
        RSAPublicKeySpec rsapublickeyspec = new RSAPublicKeySpec(new BigInteger(s), new BigInteger(s1));
        PublicKey publickey;
        try
        {
            publickey = KeyFactory.getInstance("RSA").generatePublic(rsapublickeyspec);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return publickey;
    }

    public static byte[] a(String s, Key key)
    {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1PADDING");
        cipher.init(1, key);
        return cipher.doFinal(s.getBytes("UTF-8"));
    }

    public static byte[] a(byte abyte0[], Key key)
    {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1PADDING");
        cipher.init(2, key);
        return cipher.doFinal(abyte0);
    }
}
