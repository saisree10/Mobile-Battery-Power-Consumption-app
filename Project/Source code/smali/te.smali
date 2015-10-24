.class public final Lte;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# static fields
.field private static a:Ljavax/crypto/Cipher;

.field private static b:Ljavax/crypto/Cipher;

.field private static c:Ljava/security/KeyFactory;


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    const-class v1, Lte;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    .line 58
    :cond_1
    :try_start_1
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lbdi;->b([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 59
    invoke-static {}, Lte;->c()Ljava/security/KeyFactory;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 61
    invoke-static {}, Lte;->b()Ljavax/crypto/Cipher;

    move-result-object v2

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lte;->b([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "stat.EncryptionUtil"

    const-string v3, "Failed to encrypt via RSA."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 75
    const-class v1, Lte;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    .line 78
    :cond_1
    :try_start_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 79
    invoke-static {}, Lte;->a()Ljavax/crypto/Cipher;

    move-result-object v2

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lte;->b([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "stat.EncryptionUtil"

    const-string v3, "Failed to encrypt via AES."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 111
    const-class v1, Lte;

    monitor-enter v1

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lte;->b([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 123
    :goto_0
    monitor-exit v1

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_1
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "stat.EncryptionUtil"

    const-string v3, "Failed to encryptSHA1!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "stat.EncryptionUtil"

    const-string v3, "Failed to encryptSHA1!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lte;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lte;->a:Ljavax/crypto/Cipher;

    .line 34
    :cond_0
    sget-object v0, Lte;->a:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    const-class v1, Lte;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbdi;->b([B)[B

    move-result-object v0

    .line 96
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 97
    invoke-static {}, Lte;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 99
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lte;->b([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "stat.EncryptionUtil"

    const-string v3, "Failed to encrypt via AES."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-static {p0}, Lbdk;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lte;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lte;->b:Ljavax/crypto/Cipher;

    .line 42
    :cond_0
    sget-object v0, Lte;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method private static c()Ljava/security/KeyFactory;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lte;->c:Ljava/security/KeyFactory;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    sput-object v0, Lte;->c:Ljava/security/KeyFactory;

    .line 50
    :cond_0
    sget-object v0, Lte;->c:Ljava/security/KeyFactory;

    return-object v0
.end method
