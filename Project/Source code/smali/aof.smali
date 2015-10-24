.class public Laof;
.super Laoq;
.source "DiagnosticADSwitch.java"


# static fields
.field private static d:Laof;

.field private static e:Landroid/content/Context;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Laoq;-><init>()V

    .line 24
    const-string v0, "DiagnosticADSwitch"

    iput-object v0, p0, Laof;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Laof;->c:Z

    .line 30
    const-string v0, "dashiswitches"

    iput-object v0, p0, Laof;->f:Ljava/lang/String;

    .line 31
    const-string v0, "switch"

    iput-object v0, p0, Laof;->g:Ljava/lang/String;

    .line 32
    const-string v0, "smartad"

    iput-object v0, p0, Laof;->h:Ljava/lang/String;

    .line 33
    const-string v0, "dashi"

    iput-object v0, p0, Laof;->i:Ljava/lang/String;

    .line 36
    sput-object p1, Laof;->e:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Laof;
    .locals 2
    .parameter

    .prologue
    .line 40
    sget-object v0, Laof;->d:Laof;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Laof;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Laof;->d:Laof;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Laof;

    invoke-direct {v0, p0}, Laof;-><init>(Landroid/content/Context;)V

    sput-object v0, Laof;->d:Laof;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Laof;->d:Laof;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 9

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    sget-object v0, Laof;->e:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Laog;->d(Landroid/content/Context;J)J

    move-result-wide v0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 54
    const-string v0, "Repeate pull in one day!"

    invoke-direct {p0, v0}, Laof;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0}, Lazx;->a(Landroid/content/Context;)I

    move-result v1

    .line 59
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 60
    const-string v0, "Network not avaliable!"

    invoke-direct {p0, v0}, Laof;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_1
    :try_start_2
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 66
    const/4 v0, 0x0

    .line 68
    :try_start_3
    sget-object v5, Laof;->e:Landroid/content/Context;

    sget-object v6, Laof;->b:Ljava/lang/String;

    sget-object v7, Laof;->e:Landroid/content/Context;

    const-string v8, "dashiswitches"

    invoke-static {v7, v1, v8}, Laof;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lazs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v1}, Lazk;->a(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 77
    const-string v5, "DiagnosticADSwitch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Lazk;->b(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "404 error"

    invoke-direct {p0, v1}, Laof;->b(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Laje;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    :cond_2
    :try_start_4
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Laog;->e(Landroid/content/Context;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 85
    :cond_3
    :try_start_5
    const-string v5, "response"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "datas"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 86
    const-string v5, "switch"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    const-string v5, "smartad"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 89
    invoke-virtual {v4, v5}, Laje;->a(Z)V

    .line 91
    const-string v5, "dashi"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 92
    invoke-virtual {v4, v1}, Laje;->b(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    .line 100
    :try_start_6
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Laog;->e(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_7
    const-string v1, "DiagnosticADSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected excetpion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 100
    :try_start_8
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Laog;->e(Landroid/content/Context;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    :try_start_9
    const-string v1, "DiagnosticADSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 100
    :try_start_a
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Laog;->e(Landroid/content/Context;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    :try_start_b
    const-string v1, "DiagnosticADSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 100
    :try_start_c
    sget-object v0, Laof;->e:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Laog;->e(Landroid/content/Context;J)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Laof;->e:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Laog;->e(Landroid/content/Context;J)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method
