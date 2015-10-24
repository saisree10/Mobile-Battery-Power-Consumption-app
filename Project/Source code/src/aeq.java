// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aeq
{

    private static final SecureRandom a = new SecureRandom();
    private static HashSet b = new HashSet();

    public static long a()
    {
        long l = a.nextLong();
        b.add(Long.valueOf(l));
        return l;
    }

    public static String a(Context context, String s)
    {
        return aez.a(context).a(s);
    }

    public static PublicKey a(String s)
    {
        PublicKey publickey;
        try
        {
            byte abyte0[] = afa.a(s);
            publickey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(abyte0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            a("Security", "NoSuchAlgorithmException.", ((Throwable) (nosuchalgorithmexception)));
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            a("Security", "Invalid key specification.", ((Throwable) (invalidkeyspecexception)));
            throw new IllegalArgumentException(invalidkeyspecexception);
        }
        catch (afb afb1)
        {
            a("Security", "Base64 decoding failed.", ((Throwable) (afb1)));
            throw new IllegalArgumentException(afb1);
        }
        return publickey;
    }

    public static ArrayList a(String s, String s1)
    {
        if (s == null)
        {
            b("Security", "data is null");
            return null;
        }
        b("Security", (new StringBuilder()).append("signedData: ").append(s).toString());
        boolean flag;
        long l;
        JSONArray jsonarray;
        int i;
        int j;
        ArrayList arraylist;
        JSONException jsonexception1;
        JSONObject jsonobject1;
        aks aks1;
        String s2;
        long l1;
        String s3;
        boolean flag1;
        String s4;
        String s5;
        if (!TextUtils.isEmpty(s1))
        {
            boolean flag2 = a(a(b()), s, s1);
            if (!flag2)
            {
                b("Security", "signature does not match data.");
                return null;
            }
            flag = flag2;
        } else
        {
            flag = false;
        }
        try
        {
            JSONObject jsonobject = new JSONObject(s);
            l = jsonobject.optLong("nonce");
            jsonarray = jsonobject.optJSONArray("orders");
        }
        catch (JSONException jsonexception)
        {
            a("Security", "verifyPurchase: ", ((Throwable) (jsonexception)));
            return null;
        }
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_340;
        }
        i = jsonarray.length();
        j = i;
_L1:
        if (!b(l))
        {
            b("Security", (new StringBuilder()).append("Nonce not found: ").append(l).toString());
            return null;
        }
        arraylist = new ArrayList();
        for (int k = 0; k >= j; k++)
        {
            break MISSING_BLOCK_LABEL_332;
        }

        try
        {
            jsonobject1 = jsonarray.getJSONObject(k);
            aks1 = aks.a(jsonobject1.getInt("purchaseState"));
            s2 = jsonobject1.getString("productId");
            jsonobject1.getString("packageName");
            l1 = jsonobject1.getLong("purchaseTime");
            s3 = jsonobject1.optString("orderId", "");
            flag1 = jsonobject1.has("notificationId");
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception1)
        {
            a("Security", "verifyPurchase2: ", ((Throwable) (jsonexception1)));
            return null;
        }
        s4 = null;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_266;
        }
        s4 = jsonobject1.getString("notificationId");
        s5 = jsonobject1.optString("developerPayload", null);
        if (aks1 == aks.a && !flag)
        {
            break MISSING_BLOCK_LABEL_351;
        }
        arraylist.add(new aer(aks1, s4, s2, s3, l1, s5));
        break MISSING_BLOCK_LABEL_351;
        a(l);
        return arraylist;
        j = 0;
          goto _L1
    }

    public static void a(long l)
    {
        b.remove(Long.valueOf(l));
    }

    static void a(String s, String s1, Throwable throwable)
    {
    }

    public static boolean a(PublicKey publickey, String s, String s1)
    {
label0:
        {
            b("Security", (new StringBuilder()).append("signature: ").append(s1).toString());
            try
            {
                Signature signature = Signature.getInstance("SHA1withRSA");
                signature.initVerify(publickey);
                signature.update(s.getBytes());
                if (signature.verify(afa.a(s1)))
                {
                    break label0;
                }
                b("Security", "Signature verification failed.");
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                a("Security", "NoSuchAlgorithmException.", ((Throwable) (nosuchalgorithmexception)));
                return false;
            }
            catch (InvalidKeyException invalidkeyexception)
            {
                a("Security", "Invalid key specification.", ((Throwable) (invalidkeyexception)));
                return false;
            }
            catch (SignatureException signatureexception)
            {
                a("Security", "Signature exception.", ((Throwable) (signatureexception)));
                return false;
            }
            catch (afb afb1)
            {
                a("Security", "Base64 decoding failed.", ((Throwable) (afb1)));
                return false;
            }
            return false;
        }
        return true;
    }

    public static String b()
    {
        byte abyte0[] = "dianxinos".getBytes();
        byte abyte1[] = new byte[akr.b.length];
        int i = 0;
        int j = 0;
        for (; i < akr.b.length; i++)
        {
            abyte1[i] = (byte)(akr.b[i] ^ abyte0[j]);
            if (++j == abyte0.length)
            {
                j = 0;
            }
        }

        return new String(abyte1);
    }

    static void b(String s, String s1)
    {
    }

    public static boolean b(long l)
    {
        return b.contains(Long.valueOf(l));
    }

}
