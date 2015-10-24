.class public Layg;
.super Landroid/widget/BaseAdapter;
.source "AppsPowerUsageListAdapterKitKat.java"


# static fields
.field private static i:I

.field private static j:I


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/app/Activity;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lath;

.field private e:Ljava/util/ArrayList;

.field private f:D

.field private g:Z

.field private h:Landroid/app/ActivityManager;

.field private k:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Layg;->f:D

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Layg;->g:Z

    .line 200
    new-instance v0, Layh;

    invoke-direct {v0, p0}, Layh;-><init>(Layg;)V

    iput-object v0, p0, Layg;->a:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Layi;

    invoke-direct {v0, p0}, Layi;-><init>(Layg;)V

    iput-object v0, p0, Layg;->k:Ljava/util/Comparator;

    .line 92
    iput-object p1, p0, Layg;->b:Landroid/app/Activity;

    .line 93
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Layg;->h:Landroid/app/ActivityManager;

    .line 95
    invoke-direct {p0}, Layg;->b()V

    .line 96
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Layg;->c:Landroid/view/LayoutInflater;

    .line 97
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    invoke-static {v0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    iput-object v0, p0, Layg;->d:Lath;

    .line 98
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    invoke-static {v0}, Lazf;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Layg;->g:Z

    .line 99
    return-void
.end method

.method static synthetic a(Layg;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Layg;->k:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    .line 309
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 310
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    .line 311
    iget-object v6, v0, Layj;->g:Ljava/lang/String;

    invoke-static {v6, p1}, Lazy;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    add-int/lit8 v3, v3, 0x1

    .line 316
    :cond_0
    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v0, v3

    if-ne v0, v4, :cond_3

    .line 321
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    if-eqz v3, :cond_2

    if-nez v0, :cond_4

    .line 348
    :cond_2
    return-object p2

    .line 309
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 326
    :cond_4
    if-lt v0, v4, :cond_5

    move v1, v4

    :goto_1
    move v0, v2

    .line 327
    :goto_2
    if-ge v0, v3, :cond_6

    .line 328
    add-int v4, v1, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    .line 326
    goto :goto_1

    .line 330
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v1

    .line 333
    :goto_3
    add-int v0, v1, v3

    if-ge v5, v0, :cond_2

    .line 334
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    iget-wide v6, v0, Layj;->d:D

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    iget-wide v8, v0, Layj;->d:D

    sub-double/2addr v6, v8

    .line 335
    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-lez v0, :cond_2

    .line 339
    int-to-double v8, v5

    div-double v8, v6, v8

    move v4, v2

    .line 341
    :goto_4
    if-ge v4, v5, :cond_7

    .line 342
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    iget-wide v10, v0, Layj;->d:D

    .line 343
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    add-double/2addr v10, v8

    iput-wide v10, v0, Layj;->d:D

    .line 341
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 345
    :cond_7
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    iget-wide v8, v0, Layj;->d:D

    .line 346
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    sub-double v6, v8, v6

    iput-wide v6, v0, Layj;->d:D

    .line 333
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3
.end method

.method static synthetic a(Layg;Layk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Layg;->a(Layk;)V

    return-void
.end method

.method private a(Layk;)V
    .locals 5
    .parameter

    .prologue
    .line 209
    iget-boolean v0, p0, Layg;->g:Z

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v1, p1, Layk;->g:I

    .line 213
    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close item, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Layj;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", proc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Layj;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Layg;->a(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Layg;->b:Landroid/app/Activity;

    const-string v2, "monitor"

    const-string v3, "astop"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 222
    iget-object v1, v0, Layj;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, v0, Layj;->g:Ljava/lang/String;

    const-string v2, "com.dianxinos.dxbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0142

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Layg;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, v0, Layj;->g:Ljava/lang/String;

    invoke-static {v0}, Lazf;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 229
    iget-object v1, p0, Layg;->b:Landroid/app/Activity;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 254
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    iget v0, v0, Layj;->b:I

    aput v0, v3, v1

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Layg;->h:Landroid/app/ActivityManager;

    invoke-static {v0, v3}, Lazu;->a(Landroid/app/ActivityManager;[I)[I

    move-result-object v3

    move v0, v2

    move v1, v2

    .line 258
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 259
    aget v4, v3, v0

    add-int/2addr v1, v4

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_1
    :goto_2
    array-length v0, v3

    if-ge v2, v0, :cond_2

    .line 262
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    aget v4, v3, v2

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, v0, Layj;->e:D

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 264
    :cond_2
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Layg;->i:I

    .line 88
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Layg;->j:I

    .line 89
    return-void
.end method


# virtual methods
.method public a()D
    .locals 4

    .prologue
    .line 237
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/stat"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 243
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 244
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-double/2addr v0, v2

    .line 248
    :goto_0
    return-wide v0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Layg;->a(Ljava/util/ArrayList;)V

    .line 268
    invoke-virtual {p0}, Layg;->a()D

    move-result-wide v0

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fill power data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Layj;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Layg;->a(Ljava/lang/String;)V

    .line 272
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Layj;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 275
    const/16 v5, 0xd

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 276
    const/16 v7, 0xe

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 277
    const-wide/16 v9, 0x64

    add-long v4, v5, v7

    mul-long/2addr v4, v9

    long-to-double v4, v4

    iput-wide v4, v0, Layj;->c:D

    .line 278
    iget-wide v4, v0, Layj;->c:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-double v0, v1, v4

    :goto_1
    move-wide v1, v0

    .line 282
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v4, "Can not read power stat info!"

    invoke-static {v4}, Layg;->a(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v1

    goto :goto_1

    .line 285
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_3

    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    .line 288
    if-eqz p2, :cond_1

    .line 289
    iget-wide v4, v0, Layj;->c:D

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    div-double/2addr v4, v1

    const-wide v6, 0x3fe99999a0000000L

    mul-double/2addr v4, v6

    iget-wide v6, v0, Layj;->e:D

    const-wide v8, 0x3fc99999a0000000L

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, Layj;->d:D

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Layj;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " power percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Layj;->d:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Layg;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :cond_2
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Layg;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .parameter

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 105
    new-instance v3, Layj;

    invoke-direct {v3}, Layj;-><init>()V

    .line 106
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v4, v3, Layj;->f:Ljava/lang/String;

    .line 107
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v4, v3, Layj;->b:I

    .line 108
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v0, v3, Layj;->a:I

    .line 109
    iget-object v0, p0, Layg;->d:Lath;

    iget v4, v3, Layj;->a:I

    iget-object v5, v3, Layj;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v0

    .line 110
    iget-object v4, v0, Lati;->a:Ljava/lang/String;

    iput-object v4, v3, Layj;->h:Ljava/lang/String;

    .line 111
    iget-object v4, v0, Lati;->c:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Layj;->i:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v0, v0, Lati;->b:Ljava/lang/String;

    iput-object v0, v3, Layj;->g:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Layg;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    iget-wide v0, v0, Layj;->d:D

    iput-wide v0, p0, Layg;->f:D

    .line 121
    :goto_1
    return-void

    .line 119
    :cond_1
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Layg;->f:D

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 141
    if-nez p2, :cond_1

    .line 142
    iget-object v0, p0, Layg;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 144
    new-instance v1, Layk;

    invoke-direct {v1}, Layk;-><init>()V

    .line 145
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layk;->a:Landroid/widget/ImageView;

    .line 146
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layk;->b:Landroid/widget/TextView;

    .line 147
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layk;->c:Landroid/widget/TextView;

    .line 148
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layk;->d:Landroid/widget/ImageView;

    .line 150
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layk;->e:Landroid/widget/TextView;

    .line 152
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layk;->f:Landroid/widget/TextView;

    .line 154
    iget-boolean v0, p0, Layg;->g:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, v1, Layk;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-object v0, p0, Layg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj;

    .line 163
    iput p1, v1, Layk;->g:I

    .line 164
    iget-object v2, v1, Layk;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-object v2, v1, Layk;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Layj;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v2, v1, Layk;->b:Landroid/widget/TextView;

    iget-object v3, v0, Layj;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, v0, Layj;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, v1, Layk;->c:Landroid/widget/TextView;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v2, v1, Layk;->c:Landroid/widget/TextView;

    sget v3, Layg;->i:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v2, v1, Layk;->f:Landroid/widget/TextView;

    sget v3, Layg;->i:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v2, v1, Layk;->f:Landroid/widget/TextView;

    iget-object v3, p0, Layg;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :goto_1
    iget-wide v2, v0, Layj;->d:D

    .line 181
    const-wide v4, 0x4058f999a0000000L

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    .line 182
    iget-object v0, v1, Layk;->e:Landroid/widget/TextView;

    const-string v4, "100%"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_2
    iget-object v0, p0, Layg;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0201e4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    iget-object v4, p0, Layg;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f0201e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 191
    iget-wide v5, p0, Layg;->f:D

    div-double/2addr v2, v5

    .line 192
    new-instance v5, Lawc;

    invoke-direct {v5, v0, v4, v2, v3}, Lawc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;D)V

    .line 194
    iget-object v0, v1, Layk;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iput-wide v2, v1, Layk;->h:D

    .line 196
    iget-object v0, p0, Layg;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object p2

    .line 159
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layk;

    move-object v1, v0

    goto/16 :goto_0

    .line 173
    :cond_2
    iget-object v2, v1, Layk;->c:Landroid/widget/TextView;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0141

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v2, v1, Layk;->c:Landroid/widget/TextView;

    sget v3, Layg;->j:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v2, v1, Layk;->f:Landroid/widget/TextView;

    sget v3, Layg;->j:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v2, v1, Layk;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 177
    iget-object v2, v1, Layk;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, v1, Layk;->e:Landroid/widget/TextView;

    const-string v4, "%.1f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
