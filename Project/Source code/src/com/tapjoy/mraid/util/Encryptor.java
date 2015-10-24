// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.util;

import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class Encryptor
{

    private static final String HEX = "0123456789ABCDEF";

    public Encryptor()
    {
    }

    private static void appendHex(StringBuffer stringbuffer, byte byte0)
    {
        stringbuffer.append("0123456789ABCDEF".charAt(0xf & byte0 >> 4)).append("0123456789ABCDEF".charAt(byte0 & 0xf));
    }

    public static String decrypt(String s, String s1)
    {
        return new String(decrypt(getRawKey(s.getBytes()), toByte(s1)));
    }

    private static byte[] decrypt(byte abyte0[], byte abyte1[])
    {
        SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(2, secretkeyspec);
        return cipher.doFinal(abyte1);
    }

    public static String encrypt(String s, String s1)
    {
        return toHex(encrypt(getRawKey(s.getBytes()), s1.getBytes()));
    }

    private static byte[] encrypt(byte abyte0[], byte abyte1[])
    {
        SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(1, secretkeyspec);
        return cipher.doFinal(abyte1);
    }

    public static String fromHex(String s)
    {
        return new String(toByte(s));
    }

    private static byte[] getRawKey(byte abyte0[])
    {
        KeyGenerator keygenerator = KeyGenerator.getInstance("AES");
        SecureRandom securerandom = SecureRandom.getInstance("SHA1PRNG");
        securerandom.setSeed(abyte0);
        keygenerator.init(256, securerandom);
        return keygenerator.generateKey().getEncoded();
    }

    public static byte[] toByte(String s)
    {
        int i = s.length() / 2;
        byte abyte0[] = new byte[i];
        for (int j = 0; j < i; j++)
        {
            abyte0[j] = Integer.valueOf(s.substring(j * 2, 2 + j * 2), 16).byteValue();
        }

        return abyte0;
    }

    public static String toHex(String s)
    {
        return toHex(s.getBytes());
    }

    public static String toHex(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return "";
        }
        StringBuffer stringbuffer = new StringBuffer(2 * abyte0.length);
        for (int i = 0; i < abyte0.length; i++)
        {
            appendHex(stringbuffer, abyte0[i]);
        }

        return stringbuffer.toString();
    }
}
