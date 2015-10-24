.class public Lasc;
.super Ljava/lang/Object;
.source "SmartModeSwitcher.java"


# static fields
.field private static a:Lasc;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lasd;

.field private d:Lamp;

.field private e:Land;

.field private f:Lamh;

.field private g:Lanh;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lasc;->b:Landroid/content/Context;

    .line 53
    new-instance v0, Lasd;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lasd;-><init>(Lasc;I)V

    iput-object v0, p0, Lasc;->c:Lasd;

    .line 54
    iget-object v0, p0, Lasc;->b:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lasc;->d:Lamp;

    .line 55
    iget-object v0, p0, Lasc;->b:Landroid/content/Context;

    invoke-static {v0}, Land;->a(Landroid/content/Context;)Land;

    move-result-object v0

    iput-object v0, p0, Lasc;->e:Land;

    .line 56
    iget-object v0, p0, Lasc;->d:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lasc;->f:Lamh;

    .line 57
    iget-object v0, p0, Lasc;->b:Landroid/content/Context;

    invoke-static {v0}, Lanh;->a(Landroid/content/Context;)Lanh;

    move-result-object v0

    iput-object v0, p0, Lasc;->g:Lanh;

    .line 58
    return-void
.end method

.method static synthetic a(Lasc;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lasc;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lasc;
    .locals 2
    .parameter

    .prologue
    .line 41
    sget-object v0, Lasc;->a:Lasc;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lasc;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lasc;->a:Lasc;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lasc;

    invoke-direct {v0, p0}, Lasc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lasc;->a:Lasc;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lasc;->a:Lasc;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, p2, v0, v0}, Lasc;->a(IIZI)V

    .line 268
    return-void
.end method

.method private a(IIZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lasc;->f:Lamh;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lamh;->b(II)I

    move-result v0

    .line 281
    iget-object v1, p0, Lasc;->f:Lamh;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lamh;->b(II)I

    move-result v1

    .line 283
    iget-object v2, p0, Lasc;->f:Lamh;

    const/16 v3, 0xd

    invoke-virtual {v2, p1, v3}, Lamh;->b(II)I

    move-result v2

    .line 286
    if-eqz p3, :cond_0

    .line 290
    neg-int v0, v0

    .line 291
    neg-int v0, v1

    .line 292
    neg-int v0, v2

    .line 296
    :goto_0
    new-instance v0, Lasw;

    iget-object v1, p0, Lasc;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lasw;-><init>(Landroid/content/Context;)V

    .line 297
    iget-object v1, p0, Lasc;->d:Lamp;

    invoke-virtual {v1, p4}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lasw;->a(ILjava/lang/String;)V

    .line 298
    return-void

    :cond_0
    move p4, p1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smart_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 174
    iget-object v0, p0, Lasc;->g:Lanh;

    invoke-virtual {v0}, Lanh;->a()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 256
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lasc;->b:Landroid/content/Context;

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v1

    .line 180
    iget-object v0, p0, Lasc;->b:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v2

    .line 183
    :try_start_0
    invoke-virtual {v1}, Larr;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v1}, Larr;->j()I

    move-result v0

    .line 185
    iget-object v3, p0, Lasc;->b:Landroid/content/Context;

    invoke-static {v3}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v3

    invoke-virtual {v3}, Lacz;->c()Ladd;

    move-result-object v3

    iget v3, v3, Ladd;->c:I

    if-gt v3, v0, :cond_1

    .line 186
    const-string v0, "fix low battery"

    invoke-static {v0}, Lasc;->c(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Larr;->h(I)I

    move-result v0

    invoke-static {v0}, Lamq;->d(I)I

    move-result v0

    .line 193
    const-string v3, "switch_by_battery"

    invoke-direct {p0, v3}, Lasc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    iget-object v4, p0, Lasc;->g:Lanh;

    invoke-virtual {v4, v0, v3}, Lanh;->a(ILjava/lang/String;)V

    .line 198
    iget-object v4, p0, Lasc;->g:Lanh;

    invoke-virtual {v2}, Lamp;->f()Lanb;

    move-result-object v5

    invoke-virtual {v5, v0}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lanh;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :try_start_1
    const-string v0, "Push"

    invoke-static {v0}, Lasc;->c(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lasc;->c:Lasd;

    const-string v3, "switch_by_battery"

    invoke-virtual {v0, v3}, Lasd;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Larr;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {v1}, Larr;->n()[I

    move-result-object v0

    .line 215
    invoke-virtual {v1}, Larr;->o()[I

    move-result-object v3

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 219
    const/16 v7, 0xb

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 220
    const/16 v7, 0xc

    const/4 v8, 0x1

    aget v0, v0, v8

    invoke-virtual {v4, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/16 v0, 0xd

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 224
    const/16 v0, 0xb

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-virtual {v4, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v0, 0xc

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v4, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 226
    const/16 v0, 0xd

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 227
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 229
    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    cmp-long v0, v5, v3

    if-gez v0, :cond_2

    .line 230
    const-string v0, "fix time switch"

    invoke-static {v0}, Lasc;->c(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Larr;->f(I)I

    move-result v0

    invoke-static {v0}, Lamq;->d(I)I

    move-result v0

    .line 233
    const-string v1, "switch_by_time"

    invoke-direct {p0, v1}, Lasc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v3, p0, Lasc;->g:Lanh;

    invoke-virtual {v3, v0, v1}, Lanh;->a(ILjava/lang/String;)V

    .line 236
    iget-object v3, p0, Lasc;->g:Lanh;

    invoke-virtual {v2}, Lamp;->f()Lanb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lanh;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 239
    :try_start_3
    const-string v0, "Push"

    invoke-static {v0}, Lasc;->c(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lasc;->c:Lasd;

    const-string v1, "switch_by_time"

    invoke-virtual {v0, v1}, Lasd;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 255
    :cond_2
    :goto_2
    iget-object v0, p0, Lasc;->g:Lanh;

    invoke-virtual {v0, v10}, Lanh;->a(I)V

    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 250
    :catch_1
    move-exception v0

    goto :goto_2

    .line 241
    :catch_2
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public a(Lase;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lasc;->a(Lase;ZI)V

    .line 69
    return-void
.end method

.method public a(Lase;ZI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchMode switchWay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isManual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " modeIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasc;->c(Ljava/lang/String;)V

    .line 92
    if-eqz p2, :cond_1

    .line 94
    const/4 v0, 0x0

    iput v0, p1, Lase;->b:I

    .line 97
    :cond_1
    if-nez p2, :cond_2

    .line 98
    iget v0, p1, Lase;->b:I

    invoke-direct {p0, p3, v0}, Lasc;->a(II)V

    .line 101
    :cond_2
    iget-object v0, p0, Lasc;->e:Land;

    iget v1, p1, Lase;->b:I

    invoke-virtual {v0, p3, v1}, Land;->a(II)Z

    .line 102
    iget-object v0, p0, Lasc;->e:Land;

    invoke-virtual {v0}, Land;->a()V

    .line 104
    :try_start_0
    const-string v0, "Push"

    invoke-static {v0}, Lasc;->c(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lasc;->c:Lasd;

    iget-object v1, p1, Lase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lasd;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lasc;->c:Lasd;

    invoke-virtual {v0, p1}, Lasd;->b(Ljava/lang/String;)V

    .line 264
    return-void
.end method
