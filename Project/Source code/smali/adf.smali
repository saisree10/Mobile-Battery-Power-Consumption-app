.class public Ladf;
.super Ljava/lang/Object;
.source "BatteryInfoReport.java"


# static fields
.field private static v:Ladf;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:J

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:J

.field private s:J

.field private t:Landroid/content/SharedPreferences;

.field private u:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "REPORT_TEMPRATURE"

    iput-object v0, p0, Ladf;->b:Ljava/lang/String;

    .line 20
    const-string v0, "REPORT_VOLTAGE"

    iput-object v0, p0, Ladf;->c:Ljava/lang/String;

    .line 21
    const-string v0, "REPORT_POWER_MAX_PERCENT"

    iput-object v0, p0, Ladf;->d:Ljava/lang/String;

    .line 22
    const-string v0, "REPORT_BATTERY_CAPACITY"

    iput-object v0, p0, Ladf;->e:Ljava/lang/String;

    .line 24
    const-string v0, "MAX_PERCENT"

    iput-object v0, p0, Ladf;->f:Ljava/lang/String;

    .line 25
    const-string v0, "MAX_LEVEL"

    iput-object v0, p0, Ladf;->g:Ljava/lang/String;

    .line 26
    const-string v0, "BEGIN_TIME"

    iput-object v0, p0, Ladf;->h:Ljava/lang/String;

    .line 27
    const-string v0, "LAST_TIME"

    iput-object v0, p0, Ladf;->i:Ljava/lang/String;

    .line 28
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Ladf;->j:J

    .line 29
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Ladf;->k:J

    .line 33
    iput-boolean v2, p0, Ladf;->l:Z

    .line 34
    iput-boolean v2, p0, Ladf;->m:Z

    .line 35
    iput-boolean v2, p0, Ladf;->n:Z

    .line 36
    iput-boolean v2, p0, Ladf;->o:Z

    .line 61
    iput-object p1, p0, Ladf;->a:Landroid/content/Context;

    .line 62
    const-string v0, "BatteryInfoReport"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    .line 63
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v1, "REPORT_TEMPRATURE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ladf;->l:Z

    .line 65
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v1, "REPORT_VOLTAGE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ladf;->m:Z

    .line 66
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v1, "REPORT_POWER_MAX_PERCENT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ladf;->n:Z

    .line 67
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v1, "REPORT_BATTERY_CAPACITY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ladf;->o:Z

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;)Ladf;
    .locals 2
    .parameter

    .prologue
    .line 50
    sget-object v0, Ladf;->v:Ladf;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Ladf;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Ladf;->v:Ladf;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ladf;

    invoke-direct {v0, p0}, Ladf;-><init>(Landroid/content/Context;)V

    sput-object v0, Ladf;->v:Ladf;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Ladf;->v:Ladf;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    const/4 v3, 0x0

    .line 173
    const-string v0, ""

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "data/battery_capacity.properties"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 177
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 178
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 179
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 180
    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 185
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :goto_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Ladf;->a:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lbal;->a(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v0

    .line 196
    :goto_1
    return v0

    .line 186
    :catch_0
    move-exception v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 181
    :catch_1
    move-exception v2

    .line 182
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 186
    :catch_2
    move-exception v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 188
    :goto_2
    throw v0

    .line 186
    :catch_3
    move-exception v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    move v0, v1

    .line 196
    goto :goto_1
.end method

.method private b(Ladd;)[I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 153
    iget v3, p1, Ladd;->c:I

    .line 154
    iget v4, p1, Ladd;->d:I

    .line 155
    if-ge v4, v5, :cond_0

    move v0, v3

    .line 157
    :goto_0
    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    .line 165
    :goto_1
    const/4 v2, 0x3

    new-array v2, v2, [I

    aput v0, v2, v1

    aput v3, v2, v5

    const/4 v0, 0x2

    aput v4, v2, v0

    return-object v2

    .line 155
    :cond_0
    mul-int/lit8 v0, v3, 0x64

    div-int/2addr v0, v4

    goto :goto_0

    .line 159
    :cond_1
    if-gez v0, :cond_2

    move v0, v1

    .line 160
    goto :goto_1

    .line 162
    :cond_2
    if-le v0, v2, :cond_3

    move v0, v2

    .line 163
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-boolean v0, p0, Ladf;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ladf;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ladf;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ladf;->o:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v3, "BEGIN_TIME"

    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ladf;->r:J

    .line 78
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v3, "LAST_TIME"

    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ladf;->s:J

    .line 80
    iget-wide v3, p0, Ladf;->r:J

    cmp-long v0, v3, v9

    if-nez v0, :cond_2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ladf;->r:J

    .line 82
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v3, "BEGIN_TIME"

    iget-wide v4, p0, Ladf;->r:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 86
    :cond_2
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v3, "MAX_PERCENT"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladf;->p:I

    .line 87
    iget-object v0, p0, Ladf;->t:Landroid/content/SharedPreferences;

    const-string v3, "MAX_LEVEL"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladf;->q:I

    .line 89
    iget v0, p1, Ladd;->g:I

    .line 90
    iget v3, p1, Ladd;->f:I

    .line 91
    iget v4, p1, Ladd;->a:I

    .line 92
    iget v5, p1, Ladd;->b:I

    .line 95
    iget-boolean v6, p0, Ladf;->l:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x258

    if-gt v0, v6, :cond_4

    if-ltz v0, :cond_4

    :cond_3
    if-ne v5, v12, :cond_5

    .line 97
    :cond_4
    iget-object v6, p0, Ladf;->a:Landroid/content/Context;

    new-array v7, v1, [Ljava/lang/String;

    int-to-float v0, v0

    const/high16 v8, 0x4120

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v2, v7}, Lbal;->a(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ladf;->l:Z

    .line 100
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v6, "REPORT_TEMPRATURE"

    iget-boolean v7, p0, Ladf;->l:Z

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 105
    :cond_5
    iget-boolean v0, p0, Ladf;->m:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x1068

    if-gt v3, v0, :cond_6

    const/16 v0, 0xe10

    if-lt v3, v0, :cond_6

    const/4 v0, 0x5

    if-ne v5, v0, :cond_7

    .line 107
    :cond_6
    iget-object v0, p0, Ladf;->a:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/String;

    int-to-float v3, v3

    const/high16 v6, 0x447a

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v1, v5}, Lbal;->a(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ladf;->m:Z

    .line 110
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v3, "REPORT_VOLTAGE"

    iget-boolean v5, p0, Ladf;->m:Z

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 115
    :cond_7
    iget-boolean v0, p0, Ladf;->o:Z

    if-eqz v0, :cond_8

    .line 116
    iget-object v0, p0, Ladf;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Ladf;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Ladf;->o:Z

    .line 117
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v3, "REPORT_BATTERY_CAPACITY"

    iget-boolean v5, p0, Ladf;->o:Z

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 122
    :cond_8
    iget-boolean v0, p0, Ladf;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne v4, v0, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 124
    iget-wide v5, p0, Ladf;->s:J

    cmp-long v0, v5, v9

    if-eqz v0, :cond_9

    iget-wide v5, p0, Ladf;->s:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v0, v5, v7

    if-ltz v0, :cond_0

    .line 127
    :cond_9
    invoke-direct {p0, p1}, Ladf;->b(Ladd;)[I

    move-result-object v0

    .line 128
    aget v5, v0, v2

    .line 129
    iget v6, p0, Ladf;->p:I

    if-ge v6, v5, :cond_a

    .line 130
    iput v5, p0, Ladf;->p:I

    .line 131
    iget-object v5, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v6, "MAX_PERCENT"

    iget v7, p0, Ladf;->p:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    iput-wide v3, p0, Ladf;->s:J

    .line 134
    iget-object v5, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v6, "LAST_TIME"

    iget-wide v7, p0, Ladf;->s:J

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 136
    aget v5, v0, v1

    iput v5, p0, Ladf;->q:I

    .line 137
    iget-object v5, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v6, "MAX_LEVEL"

    iget v7, p0, Ladf;->q:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v5, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    invoke-static {v5}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 142
    :cond_a
    iget-wide v5, p0, Ladf;->r:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x240c8400

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 143
    iget-object v3, p0, Ladf;->a:Landroid/content/Context;

    new-array v4, v12, [Ljava/lang/String;

    iget v5, p0, Ladf;->p:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Ladf;->q:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v3, v11, v4}, Lbal;->a(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_4
    iput-boolean v1, p0, Ladf;->n:Z

    .line 146
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    const-string v1, "REPORT_POWER_MAX_PERCENT"

    iget-boolean v2, p0, Ladf;->n:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v0, p0, Ladf;->u:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 97
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 107
    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 116
    goto/16 :goto_3

    :cond_e
    move v1, v2

    .line 143
    goto :goto_4
.end method
