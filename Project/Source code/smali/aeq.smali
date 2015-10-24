.class public Laeq;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Laeq;->a:Ljava/security/SecureRandom;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Laeq;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 90
    sget-object v0, Laeq;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 91
    sget-object v2, Laeq;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-static {p0}, Laez;->a(Landroid/content/Context;)Laez;

    move-result-object v0

    invoke-virtual {v0, p1}, Laez;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter

    .prologue
    .line 209
    :try_start_0
    invoke-static {p0}, Lafa;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 210
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lafb; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v1, v2, v0}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    :catch_1
    move-exception v0

    .line 216
    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2, v0}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 218
    :catch_2
    move-exception v0

    .line 219
    const-string v1, "Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v1, v2, v0}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const-string v2, "Security"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Laeq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    .line 197
    :goto_0
    return-object v2

    .line 121
    :cond_0
    const-string v2, "Security"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signedData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laeq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 136
    invoke-static {}, Laeq;->b()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Laeq;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Laeq;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 139
    if-nez v2, :cond_1

    .line 140
    const-string v2, "Security"

    const-string v3, "signature does not match data."

    invoke-static {v2, v3}, Laeq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v10, v2

    .line 147
    :goto_1
    const/4 v2, 0x0

    .line 150
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 154
    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 155
    if-eqz v16, :cond_6

    .line 156
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v11, v2

    .line 163
    :goto_2
    invoke-static {v14, v15}, Laeq;->b(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    const-string v2, "Security"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nonce not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laeq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    const-string v3, "Security"

    const-string v4, "verifyPurchase: "

    invoke-static {v3, v4, v2}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 168
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    if-ge v13, v11, :cond_5

    .line 171
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 173
    invoke-static {v3}, Laks;->a(I)Laks;

    move-result-object v3

    .line 174
    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 177
    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    const/4 v4, 0x0

    .line 179
    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 180
    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    :cond_3
    const-string v9, "developerPayload"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 186
    sget-object v2, Laks;->a:Laks;

    if-ne v3, v2, :cond_4

    if-nez v10, :cond_4

    .line 170
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 189
    :cond_4
    new-instance v2, Laer;

    invoke-direct/range {v2 .. v9}, Laer;-><init>(Laks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 192
    :catch_1
    move-exception v2

    .line 193
    const-string v3, "Security"

    const-string v4, "verifyPurchase2: "

    invoke-static {v3, v4, v2}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 196
    :cond_5
    invoke-static {v14, v15}, Laeq;->a(J)V

    move-object v2, v12

    .line 197
    goto/16 :goto_0

    :cond_6
    move v11, v2

    goto/16 :goto_2

    :cond_7
    move v10, v2

    goto/16 :goto_1
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 96
    sget-object v0, Laeq;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 234
    const-string v1, "Security"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laeq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 238
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 240
    invoke-static {p2}, Lafa;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const-string v1, "Security"

    const-string v2, "Signature verification failed."

    invoke-static {v1, v2}, Laeq;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lafb; {:try_start_0 .. :try_end_0} :catch_3

    .line 254
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    const-string v2, "Security"

    const-string v3, "NoSuchAlgorithmException."

    invoke-static {v2, v3, v1}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    :catch_1
    move-exception v1

    .line 248
    const-string v2, "Security"

    const-string v3, "Invalid key specification."

    invoke-static {v2, v3, v1}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    :catch_2
    move-exception v1

    .line 250
    const-string v2, "Security"

    const-string v3, "Signature exception."

    invoke-static {v2, v3, v1}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 251
    :catch_3
    move-exception v1

    .line 252
    const-string v2, "Security"

    const-string v3, "Base64 decoding failed."

    invoke-static {v2, v3, v1}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    const-string v0, "dianxinos"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 262
    sget-object v0, Lakr;->b:[B

    array-length v0, v0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 264
    :goto_0
    sget-object v5, Lakr;->b:[B

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 265
    sget-object v5, Lakr;->b:[B

    aget-byte v5, v5, v0

    aget-byte v6, v3, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 266
    add-int/lit8 v2, v2, 0x1

    array-length v5, v3

    if-ne v2, v5, :cond_0

    move v2, v1

    .line 264
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    return-void
.end method

.method public static b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 100
    sget-object v0, Laeq;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
