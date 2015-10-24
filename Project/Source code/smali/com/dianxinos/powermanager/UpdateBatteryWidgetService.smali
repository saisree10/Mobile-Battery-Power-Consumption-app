.class public Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;
.super Landroid/app/Service;
.source "UpdateBatteryWidgetService.java"

# interfaces
.implements Ladc;
.implements Ladr;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:Laff;

.field private k:Ladp;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lacz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204a8

    sput v0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->a:I

    .line 41
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204a6

    sput v0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b:I

    .line 42
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204ab

    sput v0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->c:I

    .line 43
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204a7

    sput v0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->d:I

    .line 44
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204aa

    sput v0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->e:I

    .line 45
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204ae

    sput v0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 199
    const/high16 v1, 0x3f80

    int-to-float v2, p3

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 203
    invoke-static {p1, v0}, Lzr;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 214
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget v1, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->h:I

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->i:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 209
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 211
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 212
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 214
    goto :goto_0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x7

    const/4 v3, 0x2

    const v6, 0x7f07003f

    const v5, 0x7f07003e

    const/4 v4, 0x0

    .line 149
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const/16 v0, 0x8

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const/16 v0, 0x8

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x74

    invoke-static {v0, v1}, Laxb;->a(Landroid/content/Context;I)I

    move-result v1

    .line 153
    iget v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 154
    iget-object v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    invoke-virtual {v2}, Ladp;->c()Z

    move-result v2

    if-nez v2, :cond_8

    .line 155
    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->m:I

    if-nez v2, :cond_3

    .line 156
    const/16 v2, 0x14

    iget v3, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    .line 157
    sget v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->c:I

    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    .line 172
    :goto_0
    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-gt v2, v7, :cond_6

    .line 173
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    :goto_1
    if-eqz v0, :cond_0

    .line 182
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 183
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 195
    :cond_0
    :goto_2
    return-void

    .line 158
    :cond_1
    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    .line 159
    sget v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->d:I

    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    goto :goto_0

    .line 161
    :cond_2
    sget v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->e:I

    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    goto :goto_0

    .line 164
    :cond_3
    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-gt v2, v3, :cond_4

    .line 165
    sget v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b:I

    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    goto :goto_0

    .line 166
    :cond_4
    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-ge v3, v2, :cond_5

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    if-gt v2, v7, :cond_5

    .line 167
    sget v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->a:I

    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    goto :goto_0

    .line 169
    :cond_5
    sget v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->f:I

    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    goto :goto_0

    .line 175
    :cond_6
    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    const/16 v3, 0xd

    if-gt v2, v3, :cond_7

    .line 176
    mul-int/lit8 v0, v1, 0xd

    div-int/lit8 v0, v0, 0x64

    .line 178
    :cond_7
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    invoke-static {v1, v0, v4}, Laxb;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    iget-object v1, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    invoke-virtual {v1}, Ladp;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    invoke-virtual {v2}, Ladp;->g()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget v1, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->h:I

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->i:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 192
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private b()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->i:I

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->h:I

    .line 119
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->i:I

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->c()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->a(Landroid/widget/RemoteViews;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b(Landroid/widget/RemoteViews;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->c(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private b(Ladd;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->j:Laff;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Ladd;->l:Z

    .line 100
    :goto_0
    iget v3, p1, Ladd;->j:I

    iput v3, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    .line 101
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->n:Z

    .line 102
    iget v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    .line 103
    iput v2, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->m:I

    .line 107
    :goto_1
    return-void

    .line 96
    :cond_0
    iget-boolean v0, p1, Ladd;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->j:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->j:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v3, 0x67

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 105
    :cond_2
    iput v1, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->m:I

    goto :goto_1
.end method

.method private b(Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f070041

    const/4 v2, 0x0

    const v1, 0x7f070040

    .line 218
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->n:Z

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204af

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 220
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 227
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    return-void

    .line 223
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const/16 v0, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private c()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f03000d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    const-string v2, "From"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v2, "com.dianxinos.dxbs.MidBatteryWidget"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f07003d

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 145
    return-object v0
.end method

.method private c(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/dianxinos/powermanager/BatteryPowerMidWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 234
    :try_start_0
    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/dianxinos/powermanager/BatteryPowerMidWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 245
    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 246
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 247
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lapg;->b(Landroid/content/Context;Z)V

    .line 254
    :goto_0
    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lapg;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 251
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    move v0, v1

    .line 254
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b()V

    .line 283
    return-void
.end method

.method public a(Ladd;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazy;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b(Ladd;)V

    .line 92
    invoke-direct {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b()V

    .line 93
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->j:Laff;

    .line 71
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    invoke-virtual {v0, p0}, Ladp;->a(Ladr;)V

    .line 74
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->p:Lacz;

    .line 75
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->p:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->p:Lacz;

    invoke-virtual {v0}, Lacz;->c()Ladd;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b(Ladd;)V

    .line 80
    invoke-direct {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b()V

    .line 82
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->o:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->p:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->k:Ladp;

    invoke-virtual {v0, p0}, Ladp;->a(Ladr;)V

    .line 277
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 278
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->o:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->p:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->o:Z

    .line 266
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;->b()V

    goto :goto_0
.end method
