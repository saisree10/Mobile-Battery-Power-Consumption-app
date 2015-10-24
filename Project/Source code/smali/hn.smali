.class public Lhn;
.super Ljava/lang/Object;
.source "ADCheckManager.java"


# static fields
.field private static a:Lhn;


# instance fields
.field private b:Lhb;

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:Landroid/content/Context;

.field private f:Lhk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhn;->d:Ljava/lang/Object;

    .line 153
    new-instance v0, Lho;

    invoke-direct {v0, p0}, Lho;-><init>(Lhn;)V

    iput-object v0, p0, Lhn;->f:Lhk;

    .line 143
    const-string v0, "dxad_c.s"

    invoke-static {p1, v0}, Lim;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lhb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lhb;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lhn;->b:Lhb;

    .line 150
    :cond_0
    iput-object p1, p0, Lhn;->e:Landroid/content/Context;

    .line 151
    return-void
.end method

.method public static a(Landroid/content/Context;J)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 460
    const-string v0, "ad_check_dx"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 465
    const-string v1, "pref_key_ad_next_rtc"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.acomponent.CHECK_"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    const v1, 0x131228

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 472
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 473
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 474
    return v3
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 588
    const-string v0, "dxad_c.s"

    invoke-static {p1, p2, v0}, Lim;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 590
    return v0
.end method

.method static synthetic a(Lhn;Landroid/content/Context;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lhn;->h(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lhn;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lhn;->e:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    .line 288
    const-string v0, "ADCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAlarm for show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhn;->b:Lhb;

    iget-object v2, v2, Lhb;->b:Lhc;

    iget-wide v2, v2, Lhc;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    iget-wide v0, v0, Lhc;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.acomponent.NOTIFICATION_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lhn;->e:Landroid/content/Context;

    const v2, 0x148647

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 294
    iget-object v0, p0, Lhn;->e:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 295
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lhn;->b:Lhb;

    iget-object v5, v5, Lhb;->b:Lhc;

    iget-wide v5, v5, Lhc;->i:J

    const-wide/16 v7, 0x3c

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 297
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Lhn;
    .locals 1
    .parameter

    .prologue
    .line 499
    sget-object v0, Lhn;->a:Lhn;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lhn;

    invoke-direct {v0, p0}, Lhn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhn;->a:Lhn;

    .line 502
    :cond_0
    sget-object v0, Lhn;->a:Lhn;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 277
    const-string v0, "show_notification_flag"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lip;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 279
    invoke-static {p1}, Liq;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p1}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    iget-object v1, p0, Lhn;->f:Lhk;

    invoke-virtual {v0, v1}, Lhj;->a(Lhk;)V

    .line 281
    invoke-static {p1}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    iget-object v1, p0, Lhn;->b:Lhb;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhj;->a(Lhb;I)V

    .line 282
    const-string v0, "show_notification_flag"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lip;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    iget-object v0, v0, Lhc;->j:Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    invoke-static {p1, v0}, Liq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const-string v1, "ADCheckManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " find black pkg not show notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 315
    sget-boolean v0, Lij;->a:Z

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "ADCheckManager"

    const-string v1, " cancel other showing one. "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.acomponent.CANCEL_SP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v1, "id"

    iget-object v2, p0, Lhn;->b:Lhb;

    iget-object v2, v2, Lhb;->b:Lhc;

    iget-object v2, v2, Lhc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "from"

    invoke-static {p1}, Lil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    return-void
.end method

.method private g(Landroid/content/Context;)I
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 331
    const-string v0, "ADCheckManager"

    const-string v1, "try , removeContentApkCantBeInstalled "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lhn;->b:Lhb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    if-nez v0, :cond_1

    :cond_0
    move v1, v3

    .line 381
    :goto_0
    return v1

    .line 337
    :cond_1
    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    iget-object v5, v0, Lhc;->m:[Lhd;

    .line 339
    if-nez v5, :cond_2

    move v1, v3

    .line 340
    goto :goto_0

    .line 342
    :cond_2
    array-length v6, v5

    .line 347
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move v1, v3

    .line 350
    :goto_1
    if-ge v4, v6, :cond_4

    .line 351
    aget-object v0, v5, v4

    .line 352
    iget v8, v0, Lhd;->i:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 353
    iget-object v8, v0, Lhd;->f:Ljava/lang/String;

    .line 354
    iget v9, v0, Lhd;->e:I

    .line 355
    invoke-static {p1, v8}, Liq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 357
    const-string v10, "ADCheckManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " local : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   ad version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-ge v8, v9, :cond_3

    .line 361
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 350
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    .line 364
    :cond_3
    aput-object v2, v5, v4

    .line 365
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 370
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 371
    if-nez v4, :cond_5

    .line 377
    :goto_3
    if-ge v3, v4, :cond_6

    .line 378
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd;

    aput-object v0, v2, v3

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 374
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lhd;

    move-object v2, v0

    goto :goto_3

    .line 380
    :cond_6
    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    iput-object v2, v0, Lhc;->m:[Lhd;

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private h(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 418
    const-string v0, "ADCheckManager"

    const-string v2, " ok , ==========================  show status bar notification. "

    invoke-static {v0, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :try_start_0
    new-instance v0, Lic;

    invoke-direct {v0, p1}, Lic;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v0}, Lic;->b()V

    .line 424
    iget-boolean v0, v0, Lic;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 425
    const/4 v0, 0x0

    .line 433
    :goto_0
    const-string v2, "ADCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " luancher ok : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    if-ne v0, v1, :cond_0

    .line 437
    :try_start_1
    new-instance v2, Lic;

    invoke-direct {v2, p1}, Lic;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v2}, Lic;->a()V

    .line 439
    invoke-virtual {v2}, Lic;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lhn;->i(Landroid/content/Context;)V

    .line 449
    const-string v2, "show_notification_flag"

    invoke-static {p1, v2, v1}, Lip;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 452
    :cond_1
    return v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 430
    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 443
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private i(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 569
    const-string v0, "key_ad_success_today"

    invoke-static {p1, v0}, Lij;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 570
    if-gez v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 574
    const-string v1, "key_ad_success_today"

    invoke-static {p1, v1, v0}, Lij;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 576
    invoke-static {p1}, Lhs;->a(Landroid/content/Context;)Lhs;

    move-result-object v0

    const-string v1, "pn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhs;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 579
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 11
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v0, -0x1

    .line 180
    const-string v1, "ad_check_dx"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    if-nez v1, :cond_0

    .line 205
    :goto_0
    return v0

    .line 185
    :cond_0
    const-string v2, "pref_key_ad_next_rtc"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 187
    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 190
    const-string v1, "ADCheckManager"

    const-string v2, " delay 5 min for first time installed"

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-wide/32 v1, 0x493e0

    add-long/2addr v1, v3

    .line 192
    invoke-static {p1, v1, v2}, Lhn;->a(Landroid/content/Context;J)I

    goto :goto_0

    .line 197
    :cond_1
    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    .line 198
    const-string v0, "ADCheckManager"

    const-string v1, " got it . DO it! "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :cond_2
    const-string v5, "ADCheckManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " not yet.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   mins to wait before next check."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v5, "ADCheckManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cur : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " next time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Z)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/32 v6, 0xdbba00

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 479
    add-long v2, v0, v6

    .line 480
    if-eqz p2, :cond_1

    .line 481
    iget-object v2, p0, Lhn;->b:Lhb;

    iget-object v2, v2, Lhb;->b:Lhc;

    iget-wide v2, v2, Lhc;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 483
    const-string v2, "ADCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " got iterval for next : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lhn;->b:Lhb;

    iget-object v4, v4, Lhb;->b:Lhc;

    iget-wide v4, v4, Lhc;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lhn;->b:Lhb;

    iget-object v2, v2, Lhb;->b:Lhc;

    iget-wide v2, v2, Lhc;->e:J

    add-long/2addr v0, v2

    .line 487
    const-string v2, "ADCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " save next check time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    invoke-static {p1, v0, v1}, Lhn;->a(Landroid/content/Context;J)I

    move-result v0

    return v0

    .line 489
    :cond_0
    add-long/2addr v0, v6

    goto :goto_0

    .line 493
    :cond_1
    add-long/2addr v0, v6

    goto :goto_0
.end method

.method public a()Lhb;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lhn;->b:Lhb;

    return-object v0
.end method

.method public a(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lhn;->b:Lhb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhn;->b:Lhb;

    invoke-virtual {v0}, Lhb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-direct {p0, p1}, Lhn;->g(Landroid/content/Context;)I

    move-result v0

    .line 388
    if-lez v0, :cond_0

    .line 390
    const-string v0, "ADCheckManager"

    const-string v1, " removed content not for show"

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    invoke-static {p1}, Lim;->a(Landroid/content/Context;)V

    .line 394
    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    invoke-virtual {v0, p1}, Lhc;->c(Landroid/content/Context;)I

    move-result v0

    .line 395
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lhn;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-direct {p0, p1}, Lhn;->f(Landroid/content/Context;)V

    .line 400
    const-string v0, "ADCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " delayflag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alldelaytime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhn;->b:Lhb;

    iget-object v2, v2, Lhb;->b:Lhc;

    iget-wide v2, v2, Lhc;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    if-eqz p2, :cond_2

    iget-object v0, p0, Lhn;->b:Lhb;

    iget-object v0, v0, Lhb;->b:Lhc;

    iget-wide v0, v0, Lhc;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 404
    invoke-direct {p0, p1}, Lhn;->d(Landroid/content/Context;)V

    .line 409
    :goto_0
    if-eqz p3, :cond_1

    .line 410
    invoke-direct {p0}, Lhn;->b()V

    .line 414
    :cond_1
    return-void

    .line 406
    :cond_2
    invoke-direct {p0, p1}, Lhn;->h(Landroid/content/Context;)I

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 219
    const-string v2, "ADCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " 1do check from package:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-wide v2, p0, Lhn;->c:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 226
    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    .line 227
    const-string v0, "ADCheckManager"

    const-string v1, " , some other check working found . !"

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, -0x1

    monitor-exit p0

    .line 273
    :goto_0
    return v0

    .line 231
    :cond_0
    iput-wide v4, p0, Lhn;->c:J

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const-string v2, "BroadCastReceiver424 "

    const-string v3, "do post  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-static {}, Lhq;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dev"

    if-ne v3, v4, :cond_5

    .line 240
    invoke-static {p1, v2}, Lil;->b(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 245
    :goto_1
    sget-boolean v3, Lij;->a:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lij;->b:Z

    if-eqz v3, :cond_1

    .line 246
    invoke-static {p1, v2}, Lil;->b(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 249
    :cond_1
    invoke-static {p1}, Lhq;->a(Landroid/content/Context;)Lhq;

    move-result-object v3

    invoke-virtual {v3, v2}, Lhq;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 251
    const/4 v3, 0x0

    iput-object v3, p0, Lhn;->b:Lhb;

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 253
    new-instance v3, Lhb;

    invoke-direct {v3, v2, v0}, Lhb;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lhn;->b:Lhb;

    .line 256
    :cond_2
    const-string v2, "dxad_c.s"

    invoke-static {p1, v2}, Lim;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lhn;->b:Lhb;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lhn;->b:Lhb;

    invoke-virtual {v2}, Lhb;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 260
    :cond_3
    invoke-virtual {p0, p1, v0}, Lhn;->a(Landroid/content/Context;Z)I

    .line 265
    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lhn;->b:Lhb;

    invoke-virtual {v0}, Lhb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhn;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, p1, v1, v1}, Lhn;->a(Landroid/content/Context;ZZ)V

    .line 271
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhn;->c:J

    .line 273
    const/4 v0, -0x2

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 242
    :cond_5
    invoke-static {p1, v2}, Lil;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1
.end method
