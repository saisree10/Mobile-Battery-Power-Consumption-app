.class public Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;
.super Laao;
.source "BatteryInfoDetailsActivity.java"

# interfaces
.implements Ladc;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private final d:I

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Z

.field private final i:[I

.field private final j:[I

.field private final k:[I

.field private l:Lacz;

.field private m:Laud;

.field private n:Z

.field private o:Lcom/dianxinos/powermanager/ui/DragListView;

.field private p:Laah;

.field private q:Lacx;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203cc

    aput v1, v0, v2

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203ce

    aput v1, v0, v3

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203cd

    aput v1, v0, v4

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d1

    aput v1, v0, v5

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203cf

    aput v1, v0, v6

    sput-object v0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a:[I

    .line 198
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0137

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0136

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0138

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0139

    aput v1, v0, v5

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0135

    aput v1, v0, v6

    sput-object v0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    invoke-direct {p0}, Laao;-><init>()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->d:I

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    .line 220
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020048

    aput v1, v0, v4

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020049

    aput v1, v0, v3

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02004a

    aput v1, v0, v5

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02004b

    aput v1, v0, v6

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02004c

    aput v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02004d

    aput v2, v0, v1

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->i:[I

    .line 225
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a022f

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a022d

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a022c

    aput v1, v0, v5

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0247

    aput v1, v0, v6

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a022e

    aput v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0230

    aput v2, v0, v1

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->j:[I

    .line 231
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02004e

    aput v1, v0, v4

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020051

    aput v1, v0, v3

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020052

    aput v1, v0, v5

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020053

    aput v1, v0, v6

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020054

    aput v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020055

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020056

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020057

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020058

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02004f

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020050

    aput v2, v0, v1

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->k:[I

    .line 241
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->n:Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->r:Ljava/lang/String;

    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-static {p0, p1, p2}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 555
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 556
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 557
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 559
    :cond_0
    if-nez p2, :cond_1

    .line 560
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_1
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_2
    invoke-static {p0, p1}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 472
    invoke-static {p0}, Lacx;->a(Landroid/content/Context;)Lacx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->q:Lacx;

    .line 473
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->q:Lacx;

    invoke-virtual {v0}, Lacx;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    .line 474
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->h:Z

    return p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->k:[I

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->r:Ljava/lang/String;

    invoke-static {p0, v0}, Lbal;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->q:Lacx;

    iget-object v1, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lacx;->b(Ljava/lang/String;)V

    .line 481
    :cond_0
    return-void
.end method

.method private b(Ladd;)V
    .locals 11
    .parameter

    .prologue
    .line 258
    .line 260
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 268
    new-instance v3, Lacy;

    invoke-direct {v3, p0}, Lacy;-><init>(Landroid/content/Context;)V

    .line 269
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    const/4 v0, 0x1

    .line 270
    :goto_0
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->l:Lacz;

    iget v5, p1, Ladd;->g:I

    invoke-virtual {v4, v5}, Lacz;->c(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 271
    iget v4, p1, Ladd;->g:I

    invoke-static {p0, v4}, Lbao;->a(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v4

    .line 272
    iget v5, p1, Ladd;->g:I

    const/16 v6, 0x1c2

    if-lt v5, v6, :cond_0

    .line 273
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lacy;->a(Z)V

    .line 275
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->i:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lacy;->b(I)V

    .line 279
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->j:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lacy;->c(I)V

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lacy;->b(Ljava/lang/String;)V

    .line 281
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lacy;->d(I)V

    .line 282
    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v3, Lacy;

    invoke-direct {v3, p0}, Lacy;-><init>(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    const/4 v0, 0x1

    .line 296
    :goto_2
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->l:Lacz;

    iget v4, p1, Ladd;->f:I

    invoke-static {v4}, Lacz;->d(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 298
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 300
    :cond_2
    iget v4, p1, Ladd;->f:I

    const/16 v5, 0xbb8

    if-lt v4, v5, :cond_3

    const/16 v4, 0x10cc

    iget v5, p1, Ladd;->f:I

    if-ge v4, v5, :cond_4

    .line 301
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lacy;->a(Z)V

    .line 303
    :cond_4
    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a036c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p1, Ladd;->f:I

    int-to-double v7, v7

    const-wide v9, 0x408f400000000000L

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0363

    invoke-virtual {p0, v7}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->i:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lacy;->b(I)V

    .line 308
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->j:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lacy;->c(I)V

    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lacy;->b(Ljava/lang/String;)V

    .line 310
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lacy;->d(I)V

    .line 311
    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v3, Lacy;

    invoke-direct {v3, p0}, Lacy;-><init>(Landroid/content/Context;)V

    .line 324
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_12

    const/4 v0, 0x1

    .line 325
    :goto_4
    invoke-static {p0}, Latj;->a(Landroid/content/Context;)D

    move-result-wide v4

    .line 326
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_13

    iget v6, p1, Ladd;->j:I

    if-lez v6, :cond_13

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 328
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 330
    :cond_6
    iget v6, p1, Ladd;->j:I

    int-to-double v6, v6

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4059

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 331
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    sget-object v6, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a0360

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    iget-object v6, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->i:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Lacy;->b(I)V

    .line 334
    iget-object v6, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->j:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Lacy;->c(I)V

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lacy;->b(Ljava/lang/String;)V

    .line 336
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lacy;->d(I)V

    .line 337
    if-eqz v0, :cond_7

    .line 338
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v3, Lacy;

    invoke-direct {v3, p0}, Lacy;-><init>(Landroid/content/Context;)V

    .line 350
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_15

    const/4 v0, 0x1

    .line 351
    :goto_6
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_16

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 353
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 355
    :cond_8
    double-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 356
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0360

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    iget-object v2, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->i:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Lacy;->b(I)V

    .line 359
    iget-object v2, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->j:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Lacy;->c(I)V

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lacy;->b(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lacy;->d(I)V

    .line 362
    if-eqz v0, :cond_9

    .line 363
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v1, Lacy;

    invoke-direct {v1, p0}, Lacy;-><init>(Landroid/content/Context;)V

    .line 375
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    const/4 v0, 0x1

    .line 376
    :goto_8
    iget-object v2, p1, Ladd;->h:Ljava/lang/String;

    .line 377
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    .line 378
    iget-object v3, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->i:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Lacy;->b(I)V

    .line 379
    iget-object v3, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->j:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Lacy;->c(I)V

    .line 380
    invoke-virtual {v1, v2}, Lacy;->b(Ljava/lang/String;)V

    .line 381
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lacy;->d(I)V

    .line 382
    if-eqz v0, :cond_a

    .line 383
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    invoke-virtual {v0}, Laud;->a()V

    .line 395
    sget-object v0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a:[I

    array-length v2, v0

    .line 396
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    const/4 v0, 0x5

    if-ge v1, v0, :cond_1e

    .line 397
    new-instance v3, Lacy;

    invoke-direct {v3, p0}, Lacy;-><init>(Landroid/content/Context;)V

    .line 398
    sget-object v0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a:[I

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Lacy;->b(I)V

    .line 400
    sget-object v0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->b:[I

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Lacy;->c(I)V

    .line 401
    iget v4, p1, Ladd;->j:I

    .line 403
    const/4 v0, 0x0

    .line 404
    packed-switch v1, :pswitch_data_0

    .line 436
    :goto_b
    invoke-virtual {v3, v0}, Lacy;->b(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    add-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    const/4 v0, 0x1

    .line 438
    :goto_c
    if-nez v1, :cond_1c

    iget-boolean v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->n:Z

    if-nez v4, :cond_1c

    .line 439
    if-nez v0, :cond_b

    .line 440
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    add-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    :cond_b
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lacy;->d(I)V

    .line 450
    :goto_d
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 269
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 286
    :cond_d
    if-nez v0, :cond_e

    .line 287
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    :cond_e
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lacy;->d(I)V

    goto/16 :goto_1

    .line 295
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 315
    :cond_10
    if-nez v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 318
    :cond_11
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lacy;->d(I)V

    goto/16 :goto_3

    .line 324
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 341
    :cond_13
    if-nez v0, :cond_14

    .line 342
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 344
    :cond_14
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lacy;->d(I)V

    goto/16 :goto_5

    .line 350
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 366
    :cond_16
    if-nez v0, :cond_17

    .line 367
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 369
    :cond_17
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lacy;->d(I)V

    goto/16 :goto_7

    .line 375
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 386
    :cond_19
    if-nez v0, :cond_1a

    .line 387
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 389
    :cond_1a
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lacy;->d(I)V

    goto/16 :goto_9

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    int-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Laud;->a(DI)I

    move-result v0

    .line 408
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 412
    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    int-to-double v4, v4

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v5, v6}, Laud;->a(DI)I

    move-result v0

    .line 414
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 417
    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    int-to-double v4, v4

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v6}, Laud;->a(DI)I

    move-result v0

    .line 419
    const/4 v4, 0x2

    invoke-direct {p0, v0, v4}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 422
    :pswitch_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    int-to-double v4, v4

    const/4 v6, 0x3

    invoke-virtual {v0, v4, v5, v6}, Laud;->a(DI)I

    move-result v0

    .line 424
    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 427
    :pswitch_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    int-to-double v4, v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Laud;->a(DI)I

    move-result v0

    .line 429
    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 437
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 444
    :cond_1c
    if-eqz v0, :cond_1d

    .line 445
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    add-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_1d
    add-int v0, v2, v1

    invoke-virtual {v3, v0}, Lacy;->d(I)V

    goto/16 :goto_d

    .line 453
    :cond_1e
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 454
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_1f
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->p:Laah;

    if-nez v0, :cond_20

    .line 458
    new-instance v0, Laah;

    invoke-direct {v0, p0, p0}, Laah;-><init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->p:Laah;

    .line 459
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->o:Lcom/dianxinos/powermanager/ui/DragListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->p:Laah;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    :cond_20
    new-instance v0, Laac;

    invoke-direct {v0, p0}, Laac;-><init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->r:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->p:Laah;

    if-nez v0, :cond_0

    move v0, v1

    .line 511
    :goto_0
    return v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->p:Laah;

    invoke-virtual {v0}, Laah;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 489
    iget-object v2, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacy;

    .line 493
    invoke-virtual {v0}, Lacy;->f()I

    move-result v0

    .line 494
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 497
    iget-object v4, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 502
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 503
    if-lez v0, :cond_3

    .line 504
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 507
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->r:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->q:Lacx;

    invoke-virtual {v0}, Lacx;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 509
    goto :goto_0

    .line 511
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Laah;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->p:Laah;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DragListView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->o:Lcom/dianxinos/powermanager/ui/DragListView;

    .line 518
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 519
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 520
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 521
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Laad;

    invoke-direct {v1, p0}, Laad;-><init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 527
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Laae;

    invoke-direct {v1, p0}, Laae;-><init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    sget-boolean v0, Lazw;->i:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->n:Z

    .line 539
    new-instance v0, Laud;

    invoke-direct {v0, p0}, Laud;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->m:Laud;

    .line 541
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->l:Lacz;

    .line 542
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->l:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 543
    iget-object v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->l:Lacz;

    invoke-virtual {v0}, Lacz;->c()Ladd;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->b(Ladd;)V

    .line 547
    :cond_0
    return-void

    .line 538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->b()V

    return-void
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->h:Z

    return v0
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 1
    .parameter

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->h:Z

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->b(Ladd;)V

    .line 576
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->h:Z

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    .line 582
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02b4

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 583
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 584
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0386

    new-instance v2, Laaf;

    invoke-direct {v2, p0}, Laaf;-><init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 592
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0387

    new-instance v2, Laag;

    invoke-direct {v2, p0, v0}, Laag;-><init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;Lauu;)V

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {v0}, Lauu;->show()V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 251
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->setContentView(I)V

    .line 253
    invoke-direct {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a()V

    .line 254
    invoke-direct {p0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->d()V

    .line 255
    return-void
.end method
