.class public Lcom/dianxinos/powermanager/PersonalCenterActivity;
.super Laao;
.source "PersonalCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final a:[I

.field private static final b:[Ljava/lang/String;

.field private static c:Landroid/graphics/Bitmap;


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:Z

.field private E:[Ljava/lang/String;

.field private F:[Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/ArrayList;

.field private I:Lafc;

.field private J:Landroid/content/BroadcastReceiver;

.field private K:Lmc;

.field private L:Landroid/os/Handler;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ScrollView;

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Z

.field private q:Landroid/widget/ScrollView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/view/animation/AnimationSet;

.field private v:Landroid/view/animation/AnimationSet;

.field private w:Landroid/view/animation/Animation;

.field private x:Landroid/view/animation/Animation;

.field private y:Landroid/view/animation/Animation;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v5, [I

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900b8

    aput v1, v0, v2

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900b7

    aput v1, v0, v3

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900b9

    aput v1, v0, v4

    sput-object v0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a:[I

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ChargerRecordActivity"

    aput-object v1, v0, v2

    const-string v1, "SmartSettingsActivity"

    aput-object v1, v0, v3

    const-string v1, "MySkinActivity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Laao;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->o:Z

    .line 101
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->p:Z

    .line 117
    iput v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->B:F

    .line 118
    iput v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->C:F

    .line 119
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->D:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->H:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Laat;

    invoke-direct {v0, p0}, Laat;-><init>(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->K:Lmc;

    .line 145
    new-instance v0, Laau;

    invoke-direct {v0, p0}, Laau;-><init>(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->L:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 352
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f08029e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 354
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 355
    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 356
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0802a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 357
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0802a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 360
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 361
    return-object v0
.end method

.method private a(IIIIIIIIZ)Landroid/view/animation/Animation;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, p2

    int-to-float v5, p4

    move/from16 v0, p6

    int-to-float v7, v0

    move/from16 v0, p8

    int-to-float v9, v0

    move v2, p1

    move v4, p3

    move v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 646
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 647
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 648
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 649
    return-object v1
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    const/4 v1, 0x0

    sput-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    .line 172
    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 174
    return-void
.end method

.method private a(Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 158
    const/16 v1, 0xfa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 159
    iget v1, p1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 160
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->L:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PersonalCenterActivity;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 365
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f08029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 367
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 368
    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0802a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 370
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0802a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 372
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 373
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0228

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a010d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v2, 0x1

    const-string v6, "http://dxurl.cn/dxbs/share_feature_gp"

    aput-object v6, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 264
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 266
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 268
    if-nez v7, :cond_0

    move-object v0, v5

    .line 294
    :goto_0
    return-object v0

    .line 271
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 274
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v0

    move-object v1, v5

    move-object v2, v5

    .line 277
    :goto_1
    if-ge v6, v8, :cond_1

    .line 279
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 280
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 281
    iget-object v3, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->H:Ljava/util/ArrayList;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->H:Ljava/util/ArrayList;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 283
    if-ge v3, v4, :cond_3

    .line 285
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 286
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move v2, v3

    .line 277
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 291
    :cond_1
    if-nez v2, :cond_2

    move-object v0, v5

    .line 292
    goto :goto_0

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    move-object v1, v2

    move v2, v4

    goto :goto_2
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-static {p0}, Lzc;->a(Landroid/content/Context;)Z

    move-result v0

    .line 300
    iget-object v4, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->G:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 305
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 306
    iget-object v4, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->G:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 308
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v4

    .line 309
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/dianxinos/common/coins/CoinManager;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->g:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 311
    invoke-static {p0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    iget-object v5, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->h:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "10"

    sget-object v2, Laoe;->a:Laoe;

    invoke-virtual {v2}, Laoe;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v3

    .line 317
    :goto_2
    invoke-static {}, Laoe;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 319
    if-eqz v0, :cond_6

    .line 328
    :cond_2
    const/4 v0, 0x3

    new-array v4, v0, [I

    invoke-static {p0}, Lafs;->a(Landroid/content/Context;)Lafs;

    move-result-object v0

    invoke-virtual {v0}, Lafs;->a()I

    move-result v0

    aput v0, v4, v1

    aput v2, v4, v3

    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v2

    invoke-virtual {v2}, Ladp;->l()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v4, v7

    .line 334
    :goto_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 335
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzz;

    .line 336
    aget v2, v4, v1

    invoke-virtual {v0, v2}, Lzz;->setCount(I)V

    .line 339
    if-nez v1, :cond_7

    aget v2, v4, v1

    if-ge v2, v7, :cond_7

    .line 340
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02f9

    invoke-virtual {v0, v2}, Lzz;->setTitle(I)V

    .line 341
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02fa

    invoke-virtual {v0, v2}, Lzz;->setDesc(I)V

    .line 342
    const-string v2, "BatteryChargeDetailsDialog"

    invoke-virtual {v0, v2}, Lzz;->setTag(Ljava/lang/Object;)V

    .line 334
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 300
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 306
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 315
    goto :goto_2

    .line 322
    :cond_6
    invoke-static {}, Laoe;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoe;

    .line 323
    const-string v6, "10"

    invoke-virtual {v0}, Laoe;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    add-int/lit8 v0, v2, 0x1

    :goto_6
    move v2, v0

    goto :goto_5

    .line 344
    :cond_7
    iget-object v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->E:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lzz;->setTitle(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->F:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lzz;->setDesc(Ljava/lang/String;)V

    .line 346
    sget-object v2, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lzz;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 349
    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto :goto_6
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 379
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07017a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v1

    invoke-virtual {v1}, Lazp;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    .line 382
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070179

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->n:Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 386
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02d2

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a036d

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07017b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 391
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v3, 0x7f0d000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 396
    array-length v1, v3

    if-le v1, v6, :cond_0

    .line 397
    aget-object v1, v3, v6

    const-string v4, "xx"

    invoke-static {p0}, Lma;->a(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 401
    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 402
    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    aget-object v4, v3, v1

    invoke-direct {p0, v4}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07017d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    .line 407
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    .line 408
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    sget-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07017e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d:Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07017f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e:Landroid/view/View;

    .line 413
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070180

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->f:Landroid/widget/TextView;

    .line 415
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070182

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->g:Landroid/widget/TextView;

    .line 416
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070145

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->h:Landroid/view/View;

    .line 417
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070186

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->i:Landroid/widget/ImageView;

    .line 419
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070183

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->j:Landroid/view/View;

    .line 420
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070187

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->k:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070189

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->l:Landroid/widget/LinearLayout;

    .line 424
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->o:Z

    .line 654
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 656
    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040009

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->u:Landroid/view/animation/AnimationSet;

    .line 429
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->v:Landroid/view/animation/AnimationSet;

    .line 432
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 434
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f080260

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 436
    sub-int v0, v13, v0

    iput v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    .line 437
    iget v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    neg-int v4, v0

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(IIIIIIIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->s:Landroid/view/animation/Animation;

    .line 441
    iget v4, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(IIIIIIIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->t:Landroid/view/animation/Animation;

    .line 445
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 446
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 448
    iget v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    neg-int v4, v0

    move-object v0, p0

    move v3, v2

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(IIIIIIIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->w:Landroid/view/animation/Animation;

    move-object v3, p0

    move v4, v2

    move v5, v13

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v2

    .line 453
    invoke-direct/range {v3 .. v12}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(IIIIIIIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->y:Landroid/view/animation/Animation;

    .line 457
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 459
    iget v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    neg-int v5, v0

    move-object v3, p0

    move v4, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v3 .. v12}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(IIIIIIIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->x:Landroid/view/animation/Animation;

    move-object v0, p0

    move v3, v2

    move v4, v13

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    .line 462
    invoke-direct/range {v0 .. v9}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(IIIIIIIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->z:Landroid/view/animation/Animation;

    .line 465
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 467
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 471
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->u:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->p:Z

    if-nez v0, :cond_0

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->p:Z

    .line 477
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->v:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 637
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laao;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 618
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->B:F

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->C:F

    goto :goto_0

    .line 622
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 624
    iget v3, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->B:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x42a0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->C:F

    sub-float v1, v2, v1

    const/high16 v2, 0x4220

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 625
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->D:Z

    goto :goto_0

    .line 629
    :pswitch_2
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->D:Z

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->onBackPressed()V

    .line 631
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->D:Z

    goto :goto_1

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 498
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->s:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 500
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 502
    iget v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    neg-int v1, v1

    iget v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->A:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 503
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->t:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->finish()V

    .line 507
    invoke-virtual {p0, v3, v3}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->y:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->x:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->o:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->g()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 524
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->r:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c()V

    .line 612
    :cond_0
    :goto_1
    return-void

    .line 524
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->h:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 529
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal"

    const-string v2, "c_c"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 533
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->o:Z

    .line 534
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 536
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->j:Landroid/view/View;

    if-ne p1, v1, :cond_5

    .line 539
    invoke-static {p0}, Lzc;->a(Landroid/content/Context;)Z

    move-result v0

    .line 540
    const-string v1, "msgbox"

    if-eqz v0, :cond_4

    const-string v0, "mbpcnc"

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 540
    :cond_4
    const-string v0, "mbpcnoc"

    goto :goto_2

    .line 545
    :cond_5
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->k:Landroid/view/View;

    if-ne p1, v1, :cond_6

    .line 546
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 548
    :try_start_0
    invoke-static {p0}, Lazz;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 552
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 555
    :cond_6
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d:Landroid/view/View;

    if-ne p1, v1, :cond_7

    .line 556
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 558
    const-string v0, "scc"

    const-string v1, "pcc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0228

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a010d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const-string v1, "http://dxurl.cn/dxbs/share_feature_gp"

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 566
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->G:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 568
    new-instance v2, Landroid/content/ComponentName;

    aget-object v3, v1, v5

    aget-object v1, v1, v4

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 570
    :cond_7
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e:Landroid/view/View;

    if-ne p1, v1, :cond_8

    .line 571
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 572
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 573
    :cond_8
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->n:Landroid/view/View;

    if-ne p1, v1, :cond_9

    .line 574
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->g()V

    goto/16 :goto_1

    .line 575
    :cond_9
    sget-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 577
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal"

    const-string v2, "c_charge"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 582
    :cond_a
    sget-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 583
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->c()V

    .line 585
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal"

    const-string v2, "c_s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 589
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->setResult(I)V

    goto/16 :goto_1

    .line 590
    :cond_b
    sget-object v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 592
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal"

    const-string v2, "c_skin"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    const-string v1, "from_arc"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 599
    :cond_c
    const-string v1, "BatteryChargeDetailsDialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    if-nez v0, :cond_e

    .line 601
    new-instance v0, Lafc;

    invoke-direct {v0, p0, v5}, Lafc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    .line 602
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    invoke-virtual {v0}, Lafc;->show()V

    .line 607
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal"

    const-string v2, "c_charge"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_1

    .line 603
    :cond_e
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    invoke-virtual {v0}, Lafc;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 604
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    invoke-virtual {v0}, Lafc;->show()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 179
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->setContentView(I)V

    .line 181
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->f()V

    .line 182
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a()V

    .line 184
    sget-object v2, Lazg;->b:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 185
    iget-object v5, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v2, 0x7f0d0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->E:[Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v2, 0x7f0d0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->F:[Ljava/lang/String;

    move v0, v1

    .line 193
    :goto_1
    sget-object v2, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 194
    new-instance v2, Lzz;

    sget-object v3, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->E:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->F:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v2, p0, v3, v4, v5}, Lzz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    invoke-virtual {v2, p0}, Lzz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->b()V

    .line 202
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 203
    const-string v2, "From"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 204
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->o:Z

    .line 206
    iget-object v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->w:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->K:Lmc;

    invoke-static {p0, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lmc;)V

    .line 212
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_3

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    const-string v1, "com.dianxinos.dxbs.GOTO_TOOLBOX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    new-instance v1, Laav;

    invoke-direct {v1, p0}, Laav;-><init>(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->J:Landroid/content/BroadcastReceiver;

    .line 224
    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->K:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lmc;)V

    .line 230
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    invoke-virtual {v0}, Lafc;->dismiss()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->I:Lafc;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    invoke-super {p0}, Laao;->onDestroy()V

    .line 236
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 660
    invoke-super {p0, p1}, Laao;->onNewIntent(Landroid/content/Intent;)V

    .line 661
    const-string v0, "From"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 662
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->o:Z

    .line 664
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->q:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 666
    iget-object v0, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->m:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PersonalCenterActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 668
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 240
    invoke-super {p0}, Laao;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "personal"

    const-string v2, "e"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 247
    invoke-static {p0}, Lzc;->a(Landroid/content/Context;)Z

    move-result v0

    .line 248
    const-string v1, "msgbox"

    if-eqz v0, :cond_0

    const-string v0, "mbpcn"

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 253
    invoke-static {p0}, Lpt;->a(Landroid/content/Context;)V

    .line 255
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->e()V

    .line 256
    return-void

    .line 248
    :cond_0
    const-string v0, "mbpcno"

    goto :goto_0
.end method
