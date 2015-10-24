.class Laue;
.super Ljava/lang/Object;
.source "RemainingTimeImpl.java"


# instance fields
.field private A:D

.field private B:D

.field private C:D

.field private D:D

.field private E:D

.field private F:Z

.field private G:Z

.field private H:D

.field private I:D

.field private J:D

.field private K:D

.field private L:D

.field private M:D

.field private N:D

.field private O:Landroid/util/SparseArray;

.field private P:Lasy;

.field private a:Landroid/content/Context;

.field private b:Lauc;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Landroid/app/ActivityManager;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Z

.field private h:Z

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:D

.field private t:D

.field private u:D

.field private v:D

.field private w:D

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/4 v5, 0x1

    const-wide v9, 0x408f400000000000L

    const-wide v3, 0x3f847ae147ae147bL

    const/4 v8, 0x0

    const-wide v1, 0x3fb999999999999aL

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laue;->f:Ljava/util/ArrayList;

    .line 66
    iput-boolean v8, p0, Laue;->g:Z

    .line 67
    iput-boolean v8, p0, Laue;->h:Z

    .line 98
    iput-boolean v5, p0, Laue;->F:Z

    .line 99
    iput-boolean v5, p0, Laue;->G:Z

    .line 102
    iput-wide v1, p0, Laue;->H:D

    .line 103
    iput-wide v1, p0, Laue;->I:D

    .line 104
    iput-wide v1, p0, Laue;->J:D

    .line 105
    iput-wide v1, p0, Laue;->K:D

    .line 106
    iput-wide v3, p0, Laue;->L:D

    .line 107
    iput-wide v3, p0, Laue;->M:D

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    .line 114
    iput-object p1, p0, Laue;->a:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Lauc;->a(Landroid/content/Context;)Lauc;

    move-result-object v0

    iput-object v0, p0, Laue;->b:Lauc;

    .line 116
    iget-object v0, p0, Laue;->a:Landroid/content/Context;

    invoke-static {v0}, Lasy;->a(Landroid/content/Context;)Lasy;

    move-result-object v0

    iput-object v0, p0, Laue;->P:Lasy;

    .line 118
    new-instance v1, Latj;

    invoke-direct {v1, p1}, Latj;-><init>(Landroid/content/Context;)V

    .line 119
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Laue;->c:Landroid/net/ConnectivityManager;

    .line 121
    iget-object v0, p0, Laue;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Laue;->d:Landroid/app/ActivityManager;

    .line 123
    const-string v0, "battery.capacity"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Laue;->N:D

    .line 124
    iget-wide v2, p0, Laue;->N:D

    const-wide v4, 0x40ac200000000000L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    .line 126
    const-string v0, "screen.on"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 128
    div-double v6, v4, v9

    mul-double/2addr v6, v9

    div-double/2addr v6, v2

    iput-wide v6, p0, Laue;->t:D

    .line 129
    iput-wide v4, p0, Laue;->n:D

    .line 131
    const-string v0, "screen.full"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 133
    div-double v6, v4, v2

    iput-wide v6, p0, Laue;->u:D

    .line 134
    iput-wide v4, p0, Laue;->o:D

    .line 136
    const-string v0, "wifi.on"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 137
    div-double v6, v4, v2

    iput-wide v6, p0, Laue;->v:D

    .line 138
    iput-wide v4, p0, Laue;->p:D

    .line 140
    const-string v0, "wifi.active"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 142
    div-double/2addr v4, v2

    iput-wide v4, p0, Laue;->w:D

    .line 144
    const-string v0, "bluetooth.on"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 146
    div-double v6, v4, v2

    iput-wide v6, p0, Laue;->x:D

    .line 147
    iput-wide v4, p0, Laue;->q:D

    .line 149
    const-string v0, "radio.on"

    invoke-virtual {v1, v0, v8}, Latj;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    .line 150
    div-double/2addr v4, v2

    iput-wide v4, p0, Laue;->y:D

    .line 152
    const-string v0, "radio.active"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 154
    div-double v6, v4, v2

    iput-wide v6, p0, Laue;->z:D

    .line 155
    iput-wide v4, p0, Laue;->r:D

    .line 157
    const-string v0, "dsp.audio"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 158
    div-double v6, v4, v2

    iput-wide v6, p0, Laue;->A:D

    .line 160
    const-string v0, "dsp.video"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 161
    div-double v8, v6, v2

    iput-wide v8, p0, Laue;->B:D

    .line 163
    const-string v0, "cpu.idle"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 164
    div-double/2addr v8, v2

    iput-wide v8, p0, Laue;->C:D

    .line 166
    invoke-virtual {v1}, Latj;->getNumSpeedSteps()I

    move-result v0

    .line 167
    const-string v8, "cpu.active"

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v8, v0}, Latj;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v8

    .line 168
    div-double v10, v8, v2

    iput-wide v10, p0, Laue;->D:D

    .line 170
    const-string v0, "gps.on"

    invoke-virtual {v1, v0}, Latj;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 171
    div-double v2, v0, v2

    iput-wide v2, p0, Laue;->E:D

    .line 187
    iget-object v2, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object v2, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    iget-object v2, p0, Laue;->O:Landroid/util/SparseArray;

    const/16 v3, 0x8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method private a(D)D
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 600
    .line 602
    iget-object v0, p0, Laue;->d:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 603
    if-nez v9, :cond_0

    .line 630
    :goto_0
    return-wide v5

    :cond_0
    move v1, v2

    move-wide v3, v5

    .line 607
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 608
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 609
    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_1

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const v8, 0x1869f

    if-le v7, v8, :cond_2

    .line 607
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 613
    :cond_2
    iget-object v7, p0, Laue;->P:Lasy;

    iget-object v8, p0, Laue;->O:Landroid/util/SparseArray;

    iget v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8, v10, v0}, Lasy;->a(Landroid/util/SparseArray;ILjava/lang/String;)D

    move-result-wide v7

    .line 614
    cmpg-double v0, v7, v5

    if-gez v0, :cond_3

    .line 615
    const-wide/high16 v7, 0x3ff0

    .line 616
    :cond_3
    add-double/2addr v3, v7

    goto :goto_2

    .line 619
    :cond_4
    iget-object v0, p0, Laue;->P:Lasy;

    iget-object v1, p0, Laue;->O:Landroid/util/SparseArray;

    const-string v7, "system"

    invoke-virtual {v0, v1, v2, v7}, Lasy;->a(Landroid/util/SparseArray;ILjava/lang/String;)D

    move-result-wide v0

    .line 620
    cmpg-double v2, v0, v5

    if-gez v2, :cond_5

    .line 621
    const-wide/high16 v0, 0x403e

    .line 623
    :cond_5
    add-double/2addr v0, v3

    .line 624
    iget-object v2, p0, Laue;->P:Lasy;

    iget-object v3, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lasy;->a(Landroid/util/SparseArray;I)D

    move-result-wide v2

    add-double v5, v0, v2

    .line 630
    goto :goto_0
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 268
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(DI)I
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 494
    iget-boolean v0, p0, Laue;->h:Z

    if-nez v0, :cond_0

    .line 495
    const-string v0, "RemainingTimeImpl"

    const-string v1, "not in a mode"

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v0, -0x1

    .line 596
    :goto_0
    return v0

    .line 499
    :cond_0
    const/4 v2, 0x0

    .line 500
    iget-wide v0, p0, Laue;->i:D

    .line 501
    packed-switch p3, :pswitch_data_0

    :cond_1
    move-wide v11, v0

    move v0, v2

    move-wide v1, v11

    .line 586
    :goto_1
    if-nez v0, :cond_2

    .line 587
    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-lez v0, :cond_8

    div-double v0, p1, v1

    :goto_2
    double-to-int v0, v0

    .line 591
    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 592
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_3

    .line 593
    const/16 v0, 0x3c

    .line 596
    :cond_3
    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0

    .line 503
    :pswitch_0
    iget-wide v0, p0, Laue;->j:D

    .line 504
    iget-boolean v3, p0, Laue;->F:Z

    if-nez v3, :cond_1

    .line 505
    const/4 v0, -0x1

    goto :goto_0

    .line 510
    :pswitch_1
    iget-wide v0, p0, Laue;->k:D

    .line 511
    iget-boolean v3, p0, Laue;->G:Z

    if-nez v3, :cond_1

    .line 512
    const/4 v0, -0x1

    goto :goto_0

    .line 517
    :pswitch_2
    iget-wide v0, p0, Laue;->l:D

    move-wide v11, v0

    move v0, v2

    move-wide v1, v11

    .line 518
    goto :goto_1

    .line 521
    :pswitch_3
    iget-wide v0, p0, Laue;->m:D

    move-wide v11, v0

    move v0, v2

    move-wide v1, v11

    .line 522
    goto :goto_1

    .line 526
    :pswitch_4
    iget-wide v0, p0, Laue;->i:D

    iget-wide v2, p0, Laue;->m:D

    const-wide v4, 0x3f847ae147ae147bL

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Laue;->k:D

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Laue;->l:D

    const-wide v4, 0x3f947ae147ae147bL

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Laue;->j:D

    const-wide v4, 0x3fa999999999999aL

    mul-double/2addr v2, v4

    add-double v1, v0, v2

    .line 527
    div-double v3, p1, v1

    .line 530
    invoke-direct {p0, p1, p2}, Laue;->a(D)D

    move-result-wide v5

    .line 531
    iget-wide v7, p0, Laue;->N:D

    mul-double/2addr v7, p1

    div-double v5, v7, v5

    const-wide/high16 v7, 0x4059

    div-double/2addr v5, v7

    const-wide v7, 0x40ac200000000000L

    mul-double/2addr v5, v7

    .line 533
    const-wide/high16 v7, 0x3fe0

    mul-double/2addr v7, v3

    const-wide/high16 v9, 0x3fe0

    mul-double/2addr v5, v9

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 536
    iget-object v5, p0, Laue;->a:Landroid/content/Context;

    invoke-static {v5}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v5

    .line 537
    invoke-virtual {v5}, Larr;->r()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 538
    int-to-double v6, v0

    const-wide v8, 0x3fed70a3d70a3d71L

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 540
    :cond_4
    invoke-virtual {v5}, Larr;->l()Z

    move-result v6

    if-nez v6, :cond_5

    .line 541
    int-to-double v6, v0

    const-wide v8, 0x3fedc28f5c28f5c3L

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 543
    :cond_5
    invoke-virtual {v5}, Larr;->i()Z

    move-result v5

    if-nez v5, :cond_6

    .line 544
    int-to-double v5, v0

    const-wide v7, 0x3fedc28f5c28f5c3L

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 549
    :cond_6
    iget-object v5, p0, Laue;->b:Lauc;

    invoke-virtual {v5}, Lauc;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 551
    iget-object v5, p0, Laue;->b:Lauc;

    invoke-virtual {v5}, Lauc;->b()D

    move-result-wide v5

    .line 552
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_9

    .line 553
    const-wide v7, 0x3fe3333333333333L

    mul-double/2addr v7, v5

    const-wide v9, 0x3fd999999999999aL

    mul-double/2addr v1, v9

    add-double/2addr v1, v7

    .line 554
    div-double v5, p1, v5

    .line 555
    int-to-double v7, v0

    const-wide v9, 0x3fe3333333333333L

    mul-double/2addr v7, v9

    const-wide v9, 0x3fd999999999999aL

    mul-double/2addr v5, v9

    add-double/2addr v5, v7

    double-to-int v0, v5

    move-wide v11, v1

    move v2, v0

    move-wide v0, v11

    .line 577
    :goto_3
    int-to-double v5, v2

    const-wide/high16 v7, 0x4000

    mul-double/2addr v7, v3

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    .line 578
    const-wide/high16 v5, 0x4000

    mul-double v2, v3, v5

    double-to-int v2, v2

    move-wide v11, v0

    move v0, v2

    move-wide v1, v11

    goto/16 :goto_1

    .line 579
    :cond_7
    int-to-double v5, v2

    const-wide/high16 v7, 0x4010

    div-double v7, v3, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 580
    const-wide/high16 v5, 0x4010

    div-double v2, v3, v5

    double-to-int v2, v2

    move-wide v11, v0

    move v0, v2

    move-wide v1, v11

    goto/16 :goto_1

    .line 587
    :cond_8
    const-wide/high16 v0, -0x4010

    goto/16 :goto_2

    :cond_9
    move-wide v11, v1

    move v2, v0

    move-wide v0, v11

    goto :goto_3

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Laue;->a:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Lamp;->e()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Laue;->a(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v2}, Lanb;->b(I)I

    move-result v0

    .line 202
    invoke-virtual {p0, v2, v0}, Laue;->a(II)V

    .line 204
    invoke-virtual {v1, v3}, Lanb;->b(I)I

    move-result v0

    .line 205
    invoke-virtual {p0, v3, v0}, Laue;->a(II)V

    .line 207
    invoke-virtual {v1, v4}, Lanb;->b(I)I

    move-result v0

    .line 208
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Laue;->a(II)V

    .line 210
    invoke-virtual {v1, v5}, Lanb;->b(I)I

    move-result v0

    .line 211
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0}, Laue;->a(II)V

    .line 213
    invoke-virtual {v1, v6}, Lanb;->b(I)I

    move-result v0

    .line 214
    invoke-virtual {p0, v6, v0}, Laue;->a(II)V

    .line 216
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lanb;->b(I)I

    move-result v0

    .line 217
    invoke-virtual {p0, v4, v0}, Laue;->a(II)V

    .line 219
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lanb;->b(I)I

    move-result v0

    .line 220
    invoke-virtual {p0, v5, v0}, Laue;->a(II)V

    .line 222
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lanb;->b(I)I

    move-result v0

    .line 223
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0}, Laue;->a(II)V

    .line 225
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lanb;->b(I)I

    move-result v0

    .line 226
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Laue;->a(II)V

    .line 228
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lanb;->b(I)I

    move-result v0

    .line 229
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0}, Laue;->a(II)V

    .line 231
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lanb;->b(I)I

    move-result v0

    .line 232
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Laue;->a(II)V

    .line 238
    invoke-virtual {p0}, Laue;->b()V

    .line 239
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 252
    iget-boolean v0, p0, Laue;->g:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Laue;->f:Ljava/util/ArrayList;

    new-instance v1, Lauf;

    invoke-direct {v1, p1, p2}, Lauf;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "RemainingTimeImpl"

    const-string v1, "Logic error! Adding settings but not in mode switching."

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-boolean v0, p0, Laue;->g:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "RemainingTimeImpl"

    const-string v1, "Discard the pending mode swithcing and start a new one"

    invoke-static {v0, v1}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iput-object p1, p0, Laue;->e:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Laue;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Laue;->g:Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Laue;->h:Z

    .line 249
    return-void
.end method

.method public b()V
    .locals 12

    .prologue
    .line 272
    iget-boolean v0, p0, Laue;->g:Z

    if-nez v0, :cond_0

    .line 273
    const-string v0, "RemainingTimeImpl"

    const-string v1, "Logic error! Finish but not in pending mode switching."

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-wide v0, p0, Laue;->C:D

    iput-wide v0, p0, Laue;->i:D

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laue;->j:D

    .line 279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laue;->k:D

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laue;->l:D

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laue;->m:D

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Laue;->F:Z

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Laue;->G:Z

    .line 290
    iget-object v0, p0, Laue;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 293
    :goto_1
    invoke-static {}, Lazf;->e()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Laue;->G:Z

    .line 297
    :cond_1
    const/16 v3, 0x80

    .line 298
    const/16 v2, 0x1e

    .line 300
    const/4 v0, 0x1

    .line 302
    iget-object v4, p0, Laue;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v2

    move v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauf;

    .line 303
    iget v6, v0, Lauf;->a:I

    packed-switch v6, :pswitch_data_0

    :cond_2
    move v0, v2

    move v2, v3

    move v3, v4

    :goto_3
    move v4, v3

    move v3, v2

    move v2, v0

    .line 412
    goto :goto_2

    .line 290
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 305
    :pswitch_0
    iget v4, v0, Lauf;->b:I

    move v0, v2

    move v2, v3

    move v3, v4

    .line 306
    goto :goto_3

    .line 309
    :pswitch_1
    iget v3, v0, Lauf;->b:I

    move v0, v2

    move v2, v3

    move v3, v4

    .line 310
    goto :goto_3

    .line 313
    :pswitch_2
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 314
    if-eqz v0, :cond_2

    .line 315
    int-to-double v6, v2

    const-wide v8, 0x3f747ae147ae147bL

    add-double/2addr v6, v8

    double-to-int v2, v6

    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_3

    .line 320
    :pswitch_3
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 321
    if-eqz v0, :cond_2

    .line 322
    int-to-double v6, v2

    const-wide v8, 0x3f747ae147ae147bL

    add-double/2addr v6, v8

    double-to-int v2, v6

    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_3

    .line 327
    :pswitch_4
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 328
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Laue;->G:Z

    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_3

    .line 334
    :pswitch_5
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 335
    if-eqz v0, :cond_4

    .line 337
    iget-wide v6, p0, Laue;->i:D

    iget-wide v8, p0, Laue;->v:D

    iget-wide v10, p0, Laue;->H:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->i:D

    .line 338
    iget-wide v6, p0, Laue;->j:D

    iget-wide v8, p0, Laue;->v:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->j:D

    .line 339
    iget-wide v6, p0, Laue;->k:D

    iget-wide v8, p0, Laue;->v:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->k:D

    .line 340
    iget-wide v6, p0, Laue;->l:D

    iget-wide v8, p0, Laue;->v:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->l:D

    .line 341
    iget-wide v6, p0, Laue;->m:D

    iget-wide v8, p0, Laue;->v:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->m:D

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Laue;->G:Z

    .line 343
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x2

    iget-wide v7, p0, Laue;->p:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_3

    .line 345
    :cond_4
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    .line 347
    goto/16 :goto_3

    .line 350
    :pswitch_6
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 351
    if-eqz v0, :cond_5

    .line 353
    iget-wide v6, p0, Laue;->i:D

    iget-wide v8, p0, Laue;->x:D

    iget-wide v10, p0, Laue;->J:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->i:D

    .line 354
    iget-wide v6, p0, Laue;->j:D

    iget-wide v8, p0, Laue;->x:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->j:D

    .line 355
    iget-wide v6, p0, Laue;->k:D

    iget-wide v8, p0, Laue;->x:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->k:D

    .line 356
    iget-wide v6, p0, Laue;->l:D

    iget-wide v8, p0, Laue;->x:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->l:D

    .line 357
    iget-wide v6, p0, Laue;->m:D

    iget-wide v8, p0, Laue;->x:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->m:D

    .line 358
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x3

    iget-wide v7, p0, Laue;->q:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_3

    .line 360
    :cond_5
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    .line 362
    goto/16 :goto_3

    .line 365
    :pswitch_7
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 366
    if-eqz v0, :cond_6

    .line 367
    iget-wide v6, p0, Laue;->E:D

    iget-wide v8, p0, Laue;->M:D

    mul-double/2addr v6, v8

    .line 368
    iget-wide v8, p0, Laue;->j:D

    add-double/2addr v8, v6

    iput-wide v8, p0, Laue;->j:D

    .line 369
    iget-wide v8, p0, Laue;->k:D

    add-double/2addr v8, v6

    iput-wide v8, p0, Laue;->k:D

    .line 370
    iget-wide v8, p0, Laue;->l:D

    add-double/2addr v8, v6

    iput-wide v8, p0, Laue;->l:D

    .line 371
    iget-wide v8, p0, Laue;->m:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->m:D

    .line 372
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x7

    iget-wide v7, p0, Laue;->s:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    .line 373
    goto/16 :goto_3

    .line 374
    :cond_6
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    .line 376
    goto/16 :goto_3

    .line 379
    :pswitch_8
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 380
    if-eqz v0, :cond_2

    .line 381
    int-to-double v6, v2

    const-wide v8, 0x3f747ae147ae147bL

    add-double/2addr v6, v8

    double-to-int v2, v6

    move v0, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_3

    .line 386
    :pswitch_9
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    .line 387
    if-eqz v0, :cond_2

    .line 388
    int-to-double v6, v2

    const-wide v8, 0x3f847ae147ae147bL

    add-double/2addr v6, v8

    double-to-int v2, v6

    move v0, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_3

    .line 393
    :pswitch_a
    iget v0, v0, Lauf;->b:I

    invoke-direct {p0, v0}, Laue;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Laue;->F:Z

    .line 394
    iget-boolean v0, p0, Laue;->F:Z

    if-eqz v0, :cond_7

    .line 396
    iget-wide v6, p0, Laue;->i:D

    iget-wide v8, p0, Laue;->y:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->i:D

    .line 397
    iget-wide v6, p0, Laue;->j:D

    iget-wide v8, p0, Laue;->y:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->j:D

    .line 398
    iget-wide v6, p0, Laue;->k:D

    iget-wide v8, p0, Laue;->y:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->k:D

    .line 399
    iget-wide v6, p0, Laue;->l:D

    iget-wide v8, p0, Laue;->y:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->l:D

    .line 400
    iget-wide v6, p0, Laue;->m:D

    iget-wide v8, p0, Laue;->y:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->m:D

    .line 403
    iget-wide v6, p0, Laue;->j:D

    iget-wide v8, p0, Laue;->z:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Laue;->j:D

    .line 405
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x4

    iget-wide v7, p0, Laue;->r:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_3

    .line 407
    :cond_7
    iget-object v0, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    move v2, v3

    move v3, v4

    .line 409
    goto/16 :goto_3

    .line 417
    :cond_8
    iget-wide v0, p0, Laue;->L:D

    int-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide/high16 v5, 0x403e

    div-double v7, v0, v5

    .line 418
    iget-wide v0, p0, Laue;->i:D

    iget-wide v5, p0, Laue;->t:D

    mul-double/2addr v5, v7

    const-wide/high16 v9, 0x3fe0

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->i:D

    .line 419
    iget-wide v0, p0, Laue;->j:D

    iget-wide v5, p0, Laue;->t:D

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->j:D

    .line 420
    iget-wide v0, p0, Laue;->k:D

    iget-wide v5, p0, Laue;->t:D

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->k:D

    .line 421
    iget-wide v0, p0, Laue;->l:D

    iget-wide v5, p0, Laue;->t:D

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->l:D

    .line 422
    iget-wide v0, p0, Laue;->m:D

    iget-wide v5, p0, Laue;->t:D

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->m:D

    .line 425
    iget-wide v0, p0, Laue;->n:D

    .line 426
    const/16 v3, 0x78

    if-ne v4, v3, :cond_b

    .line 428
    iget-wide v3, p0, Laue;->u:D

    const-wide v5, 0x3fd51eb851eb851fL

    mul-double/2addr v3, v5

    .line 429
    iget-wide v5, p0, Laue;->o:D

    const-wide v9, 0x3fd51eb851eb851fL

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    .line 434
    :goto_4
    iget-object v5, p0, Laue;->O:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    iget-wide v0, p0, Laue;->i:D

    mul-double v5, v3, v7

    const-wide/high16 v9, 0x3fe0

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->i:D

    .line 436
    iget-wide v0, p0, Laue;->j:D

    mul-double v5, v3, v7

    add-double/2addr v0, v5

    iput-wide v0, p0, Laue;->j:D

    .line 437
    iget-wide v0, p0, Laue;->k:D

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->k:D

    .line 438
    iget-wide v0, p0, Laue;->l:D

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->l:D

    .line 439
    iget-wide v0, p0, Laue;->m:D

    mul-double/2addr v3, v7

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->m:D

    .line 442
    iget-wide v0, p0, Laue;->m:D

    iget-wide v3, p0, Laue;->A:D

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->m:D

    .line 445
    iget-wide v0, p0, Laue;->l:D

    iget-wide v3, p0, Laue;->A:D

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->l:D

    .line 446
    iget-wide v0, p0, Laue;->l:D

    iget-wide v3, p0, Laue;->B:D

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->l:D

    .line 449
    iget-object v0, p0, Laue;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_9

    .line 451
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 452
    if-nez v0, :cond_c

    .line 453
    iget-wide v0, p0, Laue;->k:D

    iget-wide v3, p0, Laue;->z:D

    iget-wide v5, p0, Laue;->I:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->k:D

    .line 460
    :cond_9
    :goto_5
    iget-boolean v0, p0, Laue;->F:Z

    if-eqz v0, :cond_a

    .line 461
    iget-wide v0, p0, Laue;->j:D

    iget-wide v3, p0, Laue;->D:D

    iget-wide v5, p0, Laue;->K:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->j:D

    .line 463
    :cond_a
    iget-wide v0, p0, Laue;->k:D

    iget-wide v3, p0, Laue;->D:D

    iget-wide v5, p0, Laue;->K:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->k:D

    .line 464
    iget-wide v0, p0, Laue;->l:D

    iget-wide v3, p0, Laue;->D:D

    iget-wide v5, p0, Laue;->K:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->l:D

    .line 465
    iget-wide v0, p0, Laue;->m:D

    iget-wide v3, p0, Laue;->D:D

    iget-wide v5, p0, Laue;->K:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->m:D

    .line 467
    iget-wide v0, p0, Laue;->i:D

    int-to-double v3, v2

    mul-double/2addr v0, v3

    iput-wide v0, p0, Laue;->i:D

    .line 468
    iget-wide v0, p0, Laue;->j:D

    int-to-double v3, v2

    mul-double/2addr v0, v3

    iput-wide v0, p0, Laue;->j:D

    .line 469
    iget-wide v0, p0, Laue;->k:D

    int-to-double v3, v2

    mul-double/2addr v0, v3

    iput-wide v0, p0, Laue;->k:D

    .line 470
    iget-wide v0, p0, Laue;->l:D

    int-to-double v3, v2

    mul-double/2addr v0, v3

    iput-wide v0, p0, Laue;->l:D

    .line 471
    iget-wide v0, p0, Laue;->m:D

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Laue;->m:D

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Laue;->g:Z

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Laue;->h:Z

    goto/16 :goto_0

    .line 431
    :cond_b
    iget-wide v5, p0, Laue;->u:D

    int-to-double v9, v4

    mul-double/2addr v5, v9

    const-wide/high16 v9, 0x4059

    div-double/2addr v5, v9

    .line 432
    iget-wide v9, p0, Laue;->o:D

    int-to-double v3, v4

    mul-double/2addr v3, v9

    const-wide/high16 v9, 0x4059

    div-double/2addr v3, v9

    add-double/2addr v0, v3

    move-wide v3, v5

    goto/16 :goto_4

    .line 454
    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 455
    iget-wide v0, p0, Laue;->k:D

    iget-wide v3, p0, Laue;->w:D

    iget-wide v5, p0, Laue;->I:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, p0, Laue;->k:D

    goto :goto_5

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
