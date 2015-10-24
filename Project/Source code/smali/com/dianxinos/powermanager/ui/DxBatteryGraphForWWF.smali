.class public Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;
.super Landroid/widget/FrameLayout;
.source "DxBatteryGraphForWWF.java"


# instance fields
.field private A:Z

.field private B:Landroid/content/Context;

.field private C:Landroid/content/res/Resources;

.field private a:Landroid/graphics/Bitmap;

.field private b:Z

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/animation/Animation;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ladp;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->b:Z

    .line 68
    iput v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->g:I

    .line 102
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->A:Z

    .line 109
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    .line 111
    invoke-static {p1}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->y:Ladp;

    .line 112
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->DxbatteryGraph:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->g:I

    .line 114
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->k:I

    .line 115
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->i:Z

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->v:I

    .line 119
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->w:I

    .line 121
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->x:I

    .line 123
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->k:I

    if-ne v0, v2, :cond_1

    .line 124
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->g:I

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020025

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->l:I

    .line 126
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020022

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->m:I

    .line 127
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001c

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->n:I

    .line 128
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020017

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->o:I

    .line 129
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001a

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->p:I

    .line 130
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001f

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->h:I

    .line 131
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020013

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->j:I

    .line 141
    :goto_0
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030010

    .line 153
    :goto_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    return-void

    .line 133
    :cond_0
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020023

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->l:I

    .line 134
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020020

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->m:I

    .line 135
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020014

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->n:I

    .line 136
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020015

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->o:I

    .line 137
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020018

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->p:I

    .line 138
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001d

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->h:I

    .line 139
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020011

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->j:I

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020024

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->l:I

    .line 145
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020021

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->m:I

    .line 146
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001b

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->n:I

    .line 147
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020016

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->o:I

    .line 148
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020019

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->p:I

    .line 149
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001e

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->h:I

    .line 150
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020012

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->j:I

    .line 151
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03000a

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->b:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "DxBatteryGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleAndCrop == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p4, p5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 289
    if-ne p2, p4, :cond_1

    if-ne p3, p5, :cond_1

    move-object v0, v3

    .line 301
    :goto_0
    return-object v0

    .line 292
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 293
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    new-instance v6, Landroid/graphics/Rect;

    if-eqz p6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, p5, v0

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eqz p6, :cond_3

    move v2, p5

    :goto_2
    invoke-direct {v6, v1, v0, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    new-instance v2, Landroid/graphics/Rect;

    if-eqz p6, :cond_4

    sub-int v0, p5, p3

    :goto_3
    if-eqz p6, :cond_5

    :goto_4
    invoke-direct {v2, v1, v0, p2, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 299
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v3, v6, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 300
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v4

    .line 301
    goto :goto_0

    :cond_2
    move v0, v1

    .line 294
    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 297
    goto :goto_3

    :cond_5
    move p5, p3

    goto :goto_4
.end method

.method private b()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 269
    if-nez p2, :cond_1

    .line 270
    const/4 v0, 0x0

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->u:I

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 274
    if-lt v0, v1, :cond_0

    .line 275
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->A:Z

    .line 248
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a(IZI)V

    .line 249
    return-void
.end method

.method public a(IZI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a:Landroid/graphics/Bitmap;

    .line 306
    if-nez v1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->k:I

    if-nez v0, :cond_4

    .line 312
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 313
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v4, v0

    .line 314
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f0801eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 317
    mul-int v0, v4, p1

    div-int/lit8 v2, v0, 0x64

    .line 318
    const/4 v0, 0x1

    if-ge v2, v0, :cond_1

    .line 319
    const/4 v2, 0x1

    .line 321
    :cond_1
    iget v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->x:I

    iget v5, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->x:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lzr;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->b:Z

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "DxBatteryGraph"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->i:Z

    if-eqz v0, :cond_8

    .line 398
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->b:Z

    if-eqz v0, :cond_3

    .line 399
    const-string v0, "DxBatteryGraph"

    const-string v1, "thender show"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 325
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->g:I

    if-nez v0, :cond_7

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->w:I

    .line 327
    :goto_3
    int-to-float v0, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 328
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 329
    mul-int v0, v5, p1

    div-int/lit8 v3, v0, 0x64

    .line 330
    const/4 v0, 0x1

    if-ge v3, v0, :cond_5

    .line 331
    const/4 v3, 0x1

    .line 333
    :cond_5
    const/4 v6, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 334
    const/4 v0, 0x0

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_6

    .line 336
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lzr;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 337
    const/4 v0, 0x1

    .line 339
    :cond_6
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f0801ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 341
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    iget v5, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->u:I

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a(Landroid/graphics/Bitmap;Z)I

    move-result v0

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v4, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 325
    :cond_7
    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->v:I

    goto :goto_3

    .line 405
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 407
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->q:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getBatteryHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    return v0
.end method

.method public getBatteryLiquidHeight()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->s:I

    return v0
.end method

.method public getLesseningScale()F
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    const/16 v1, 0xa0

    .line 254
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-static {v2}, Lazf;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    const/high16 v0, 0x42f0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 265
    :cond_0
    :goto_0
    const/high16 v1, 0x4000

    div-float v0, v1, v0

    return v0

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-static {v2}, Lazf;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    const/high16 v0, 0x4320

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-static {v2}, Lazf;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    const/high16 v0, 0x4370

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 260
    :cond_3
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-static {v2}, Lazf;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    const/high16 v0, 0x43a0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 159
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->r:Landroid/view/animation/Animation;

    .line 161
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->q:Landroid/widget/ImageView;

    .line 162
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->c:Landroid/widget/ImageView;

    .line 163
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->d:Landroid/widget/TextView;

    .line 171
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->g:I

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-static {v0}, Lazf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->k:I

    if-eq v0, v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    .line 187
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->k:I

    if-ne v0, v2, :cond_3

    .line 188
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->g:I

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->t:I

    .line 191
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->u:I

    .line 205
    :goto_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->z:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->z:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->b()V

    .line 209
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->setClickable(Z)V

    .line 210
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->setFocusable(Z)V

    .line 211
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->setDescendantFocusability(I)V

    .line 213
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->t:I

    .line 196
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->u:I

    goto :goto_1

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->t:I

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->C:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->u:I

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 226
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->k:I

    if-ne v1, v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    .line 232
    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->f:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    if-eq v1, v2, :cond_0

    .line 233
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->f:I

    .line 235
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->B:Landroid/content/Context;

    invoke-static {v1}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lacz;->c()Ladd;

    move-result-object v1

    .line 237
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->A:Z

    if-eqz v2, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a()V

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->e:I

    goto :goto_0

    .line 240
    :cond_2
    iget v2, v1, Ladd;->j:I

    iget v3, v1, Ladd;->e:I

    if-eqz v3, :cond_3

    :goto_2
    iget v1, v1, Ladd;->j:I

    invoke-static {v1}, Lacz;->a(I)I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a(IZI)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setPercentTextVisble(Z)V
    .locals 2
    .parameter

    .prologue
    .line 421
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setWWFSkinThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraphForWWF;->a:Landroid/graphics/Bitmap;

    .line 426
    return-void
.end method
