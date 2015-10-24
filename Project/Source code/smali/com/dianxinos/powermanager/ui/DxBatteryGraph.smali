.class public Lcom/dianxinos/powermanager/ui/DxBatteryGraph;
.super Landroid/widget/FrameLayout;
.source "DxBatteryGraph.java"


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/content/res/Resources;

.field private a:Z

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/animation/Animation;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ladp;

.field private y:Landroid/widget/ImageView;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a:Z

    .line 63
    iput v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->f:I

    .line 97
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->z:Z

    .line 104
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    .line 106
    invoke-static {p1}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->x:Ladp;

    .line 107
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->DxbatteryGraph:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->f:I

    .line 109
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    .line 110
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->h:Z

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->u:I

    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->v:I

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->w:I

    .line 116
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    if-ne v0, v2, :cond_1

    .line 117
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->f:I

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020025

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->k:I

    .line 119
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020022

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->l:I

    .line 120
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001c

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->m:I

    .line 121
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020017

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->n:I

    .line 122
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001a

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->o:I

    .line 123
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001f

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->g:I

    .line 124
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020013

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->i:I

    .line 134
    :goto_0
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030010

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    return-void

    .line 126
    :cond_0
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020023

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->k:I

    .line 127
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020020

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->l:I

    .line 128
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020014

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->m:I

    .line 129
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020015

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->n:I

    .line 130
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020018

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->o:I

    .line 131
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001d

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->g:I

    .line 132
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020011

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->i:I

    goto :goto_0

    .line 137
    :cond_1
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020024

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->k:I

    .line 138
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020021

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->l:I

    .line 139
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001b

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->m:I

    .line 140
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020016

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->n:I

    .line 141
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020019

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->o:I

    .line 142
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02001e

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->g:I

    .line 143
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020012

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->i:I

    .line 144
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

    .line 274
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a:Z

    if-eqz v0, :cond_0

    .line 275
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

    .line 277
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p4, p5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 278
    if-ne p2, p4, :cond_1

    if-ne p3, p5, :cond_1

    move-object v0, v3

    .line 288
    :goto_0
    return-object v0

    .line 281
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 282
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
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

    .line 285
    new-instance v2, Landroid/graphics/Rect;

    if-eqz p6, :cond_4

    sub-int v0, p5, p3

    :goto_3
    if-eqz p6, :cond_5

    :goto_4
    invoke-direct {v2, v1, v0, p2, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 286
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v3, v6, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 287
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v4

    .line 288
    goto :goto_0

    :cond_2
    move v0, v1

    .line 283
    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 285
    goto :goto_3

    :cond_5
    move p5, p3

    goto :goto_4
.end method

.method private b()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    if-nez p2, :cond_1

    .line 261
    const/4 v0, 0x0

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 265
    if-lt v0, v1, :cond_0

    .line 266
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 238
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->z:Z

    .line 239
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(IZI)V

    .line 240
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 404
    return-void
.end method

.method public a(IZI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    .line 293
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->x:Ladp;

    invoke-virtual {v0}, Ladp;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->x:Ladp;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->x:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->x:Ladp;

    invoke-virtual {v0}, Ladp;->g()I

    move-result v3

    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 298
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 299
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    if-nez v0, :cond_5

    .line 300
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->w:I

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 301
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v4, v0

    .line 302
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f0801eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 305
    mul-int v0, v4, p1

    div-int/lit8 v2, v0, 0x64

    .line 306
    const/4 v0, 0x1

    if-ge v2, v0, :cond_0

    .line 307
    const/4 v2, 0x1

    .line 309
    :cond_0
    iget v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->w:I

    iget v5, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->w:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lzr;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 380
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a:Z

    if-eqz v0, :cond_2

    .line 381
    const-string v0, "DxBatteryGraph"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_2
    if-eqz p2, :cond_13

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->h:Z

    if-eqz v0, :cond_13

    .line 384
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a:Z

    if-eqz v0, :cond_3

    .line 385
    const-string v0, "DxBatteryGraph"

    const-string v1, "thender show"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 395
    :goto_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->c:Landroid/widget/TextView;

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

    .line 396
    return-void

    .line 293
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 312
    :cond_5
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->f:I

    if-nez v0, :cond_8

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->v:I

    .line 313
    :goto_4
    int-to-float v0, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 314
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 315
    mul-int v0, v5, p1

    div-int/lit8 v3, v0, 0x64

    .line 316
    const/4 v0, 0x1

    if-ge v3, v0, :cond_6

    .line 317
    const/4 v3, 0x1

    .line 319
    :cond_6
    const/4 v6, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    const/4 v0, 0x0

    .line 321
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    .line 322
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lzr;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 323
    const/4 v0, 0x1

    .line 325
    :cond_7
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f0801ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 327
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    const/4 v4, 0x0

    iget v5, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(Landroid/graphics/Bitmap;Z)I

    move-result v0

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v4, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 312
    :cond_8
    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->u:I

    goto :goto_4

    .line 333
    :cond_9
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    if-nez p3, :cond_e

    .line 335
    const/4 v0, 0x7

    if-le p1, v0, :cond_c

    .line 336
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 352
    :goto_5
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a:Z

    if-eqz v0, :cond_a

    .line 353
    const-string v0, "DxBatteryGraph"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_a
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->s:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 358
    const/16 v1, 0xe

    if-gt p1, v1, :cond_b

    .line 359
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    mul-int/lit8 v0, v0, 0xe

    div-int/lit8 v0, v0, 0x64

    .line 362
    :cond_b
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 363
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 364
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 369
    :goto_6
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 370
    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->r:I

    .line 371
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 372
    const/4 v0, 0x2

    if-le p1, v0, :cond_12

    .line 373
    const/16 v0, 0xa

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->r:I

    goto/16 :goto_2

    .line 337
    :cond_c
    const/4 v0, 0x2

    if-le p1, v0, :cond_d

    .line 338
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 343
    :cond_e
    const/16 v0, 0x32

    if-lt p1, v0, :cond_f

    .line 344
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 345
    :cond_f
    const/16 v0, 0x32

    if-ge p1, v0, :cond_10

    .line 346
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 348
    :cond_10
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 366
    :cond_11
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 367
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    goto :goto_6

    .line 375
    :cond_12
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->r:I

    goto/16 :goto_2

    .line 391
    :cond_13
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 393
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->p:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public getBatteryHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    return v0
.end method

.method public getBatteryLiquidHeight()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->r:I

    return v0
.end method

.method public getLesseningScale()F
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    const/16 v1, 0xa0

    .line 245
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-static {v2}, Lazf;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const/high16 v0, 0x42f0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 256
    :cond_0
    :goto_0
    const/high16 v1, 0x4000

    div-float v0, v1, v0

    return v0

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-static {v2}, Lazf;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    const/high16 v0, 0x4320

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-static {v2}, Lazf;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    const/high16 v0, 0x4370

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 251
    :cond_3
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-static {v2}, Lazf;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/high16 v0, 0x43a0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 152
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->q:Landroid/view/animation/Animation;

    .line 154
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->p:Landroid/widget/ImageView;

    .line 155
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b:Landroid/widget/ImageView;

    .line 156
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->c:Landroid/widget/TextView;

    .line 163
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->f:I

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-static {v0}, Lazf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    if-eq v0, v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    .line 178
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    if-ne v0, v2, :cond_3

    .line 179
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->f:I

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->s:I

    .line 182
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    .line 196
    :goto_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->y:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->y:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 198
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->b()V

    .line 200
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setClickable(Z)V

    .line 201
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setFocusable(Z)V

    .line 202
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setDescendantFocusability(I)V

    .line 204
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->s:I

    .line 187
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->s:I

    .line 193
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->B:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->t:I

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 217
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->j:I

    if-ne v1, v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    .line 223
    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->e:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    if-eq v1, v2, :cond_0

    .line 224
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->e:I

    .line 226
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->A:Landroid/content/Context;

    invoke-static {v1}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lacz;->c()Ladd;

    move-result-object v1

    .line 228
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->z:Z

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a()V

    .line 235
    :cond_0
    :goto_1
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->d:I

    goto :goto_0

    .line 231
    :cond_2
    iget v2, v1, Ladd;->j:I

    iget v3, v1, Ladd;->e:I

    if-eqz v3, :cond_3

    :goto_2
    iget v1, v1, Ladd;->j:I

    invoke-static {v1}, Lacz;->a(I)I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(IZI)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setPercentTextVisble(Z)V
    .locals 2
    .parameter

    .prologue
    .line 407
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
