// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class aez
{

    private static final byte a[] = {
        16, 74, 71, -80, 32, 101, -47, 72, 117, -14, 
        0, -29, 70, 65, -12, 74
    };
    private static aez d;
    private Cipher b;
    private Cipher c;

    private aez(byte abyte0[], String s)
    {
        try
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(SecretKeyFactory.getInstance("PBEWITHSHAAND256BITAES-CBC-BC").generateSecret(new PBEKeySpec(s.toCharArray(), abyte0, 1024, 256)).getEncoded(), "AES");
            b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            b.init(1, secretkeyspec, new IvParameterSpec(a));
            c = Cipher.getInstance("AES/CBC/PKCS5Padding");
            c.init(2, secretkeyspec, new IvParameterSpec(a));
            return;
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException("AESObfuscator: ", generalsecurityexception);
        }
    }

    public static aez a(Context context)
    {
        aez;
        JVM INSTR monitorenter ;
        aez aez1;
        if (d == null)
        {
            String s = gx.a(context);
            d = new aez(akr.c, s);
        }
        aez1 = d;
        aez;
        JVM INSTR monitorexit ;
        return aez1;
        Exception exception;
        exception;
        throw exception;
    }

    public String a(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = afa.a(b.doFinal((new StringBuilder()).append("com.dianxinos.dxbs.billing.util.AESObfuscator-1|").append(s).toString().getBytes("UTF-8")));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("obfuscate: ", unsupportedencodingexception);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException("obfuscate: ", generalsecurityexception);
        }
        return s1;
    }

}
