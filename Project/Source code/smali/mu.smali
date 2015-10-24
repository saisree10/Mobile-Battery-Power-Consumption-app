.class public Lmu;
.super Lnf;
.source "SplashConfigsMgr.java"


# static fields
.field private static final b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/ArrayList;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lmi;->a:Z

    sput-boolean v0, Lmu;->b:Z

    .line 38
    const-string v0, ""

    sput-object v0, Lmu;->c:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lmu;->e:Ljava/lang/String;

    .line 193
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    sput-object v0, Lmu;->f:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method

.method private static a(Landroid/content/Context;Lnc;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 152
    const-wide/32 v1, 0x100000

    .line 153
    invoke-static {}, Lnd;->a()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 154
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "splash_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 113
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 147
    return-object v3

    .line 114
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 116
    :try_start_0
    new-instance v4, Lnc;

    invoke-direct {v4}, Lnc;-><init>()V

    .line 119
    const-string v5, "firstdate"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnd;->a(Ljava/lang/String;)J

    move-result-wide v5

    .line 118
    iput-wide v5, v4, Lnc;->b:J

    .line 120
    const-string v5, "lastdate"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnd;->a(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lnc;->c:J

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lasttime"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Lnc;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmu;->c(Ljava/lang/String;)V

    .line 123
    const-string v5, "img"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move v2, v1

    .line 125
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v2, v7, :cond_2

    .line 137
    iget-object v2, v4, Lnc;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-boolean v2, Lmu;->b:Z

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v4}, Lnc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmu;->c(Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 127
    const-string v8, "density"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnd;->b(Ljava/lang/String;)I

    move-result v8

    .line 128
    if-ne v8, v6, :cond_3

    .line 129
    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lnc;->e:Ljava/lang/String;

    .line 130
    const-string v8, "md5"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lnc;->d:Ljava/lang/String;

    .line 131
    const-string v8, "stayTime"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v4, Lnc;->g:F

    .line 132
    invoke-static {p0, v4}, Lmu;->a(Landroid/content/Context;Lnc;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lnc;->f:Ljava/lang/String;

    .line 125
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Desity not match, config desity: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellPhone desity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmu;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 143
    :catch_0
    move-exception v2

    .line 144
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmt;->a(Landroid/content/Context;J)J

    move-result-wide v0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    sub-long v4, v2, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 57
    const-string v0, "Repeate pull in one day!"

    invoke-static {v0}, Lmu;->c(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p0}, Lnd;->b(Landroid/content/Context;)I

    move-result v1

    .line 62
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 63
    const-string v0, "Network not avaliable!"

    invoke-static {v0}, Lmu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 70
    :try_start_0
    sget-object v4, Lmu;->a:Ljava/lang/String;

    .line 71
    const-string v5, "splash"

    invoke-static {p0, v1, v5}, Lmu;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {p0, v4, v1}, Lml;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    sget-boolean v4, Lmu;->b:Z

    if-eqz v4, :cond_2

    .line 75
    const-string v4, "SplashConfigsMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    invoke-static {v1}, Lmk;->a(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 79
    const-string v4, "SplashConfigsMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bad response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lms;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v1}, Lmk;->b(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    const-string v1, "404 error"

    invoke-static {v1}, Lmu;->c(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lmu;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Lmt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    :cond_3
    invoke-static {p0, v2, v3}, Lmt;->b(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "SplashConfigsMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected excetpion: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lms;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_1
    invoke-static {p0, v2, v3}, Lmt;->b(Landroid/content/Context;J)V

    goto :goto_0

    .line 88
    :cond_4
    :try_start_1
    const-string v4, "response"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "datas"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 89
    sget-boolean v4, Lmu;->b:Z

    if-eqz v4, :cond_5

    .line 90
    const-string v4, "SplashConfigsMgr"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v1

    invoke-virtual {v1}, Lmy;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 96
    :catch_1
    move-exception v1

    .line 97
    const-string v1, "SplashConfigsMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lms;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :catch_2
    move-exception v0

    .line 99
    const-string v1, "SplashConfigsMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " IllegalStateException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lms;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    invoke-static {p0}, Lmu;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    const-class v1, Lmu;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lmu;->e:Ljava/lang/String;

    invoke-static {p0, v2}, Lmt;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v3, "getSplashItemList"

    invoke-static {v3}, Lmu;->c(Ljava/lang/String;)V

    .line 168
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    const-string v2, ""

    sput-object v2, Lmu;->c:Ljava/lang/String;

    .line 171
    const/4 v2, 0x0

    sput-object v2, Lmu;->d:Ljava/util/ArrayList;

    .line 172
    const-string v2, "No data"

    invoke-static {v2}, Lmu;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    monitor-exit v1

    return-object v0

    .line 176
    :cond_1
    :try_start_1
    sget-object v3, Lmu;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lmu;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 177
    const-string v0, "Reuse splash item data!"

    invoke-static {v0}, Lmu;->c(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lmu;->d:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :cond_2
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 183
    sput-object v2, Lmu;->c:Ljava/lang/String;

    .line 184
    invoke-static {p0, v3}, Lmu;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lmu;->d:Ljava/util/ArrayList;

    .line 185
    sget-object v0, Lmu;->d:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v3

    .line 188
    :try_start_3
    const-string v3, "SplashConfigsMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "corrupted data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lms;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    sget-boolean v0, Lmu;->b:Z

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "SplashConfigsMgr"

    invoke-static {v0, p0}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method
