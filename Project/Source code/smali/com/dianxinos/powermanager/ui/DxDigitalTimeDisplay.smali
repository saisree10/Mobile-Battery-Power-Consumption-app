.class public Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;
.super Landroid/widget/LinearLayout;
.source "DxDigitalTimeDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Typeface;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/util/LinkedList;

.field private n:Landroid/graphics/Shader;

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:Landroid/content/Context;

.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lavf;

    invoke-direct {v0, p0}, Lavf;-><init>(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->h:Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lavf;

    invoke-direct {v0, p0}, Lavf;-><init>(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->h:Landroid/os/Handler;

    .line 95
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->DxDigitalTimeDisplay:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->o:F

    .line 97
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->p:F

    .line 98
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->r:I

    .line 99
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->q:F

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a()V

    .line 102
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->j:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->j:I

    return p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b(II)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->s:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->s:Landroid/content/Context;

    invoke-static {v0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lazp;->c()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->g:Landroid/graphics/Typeface;

    .line 108
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030032

    invoke-static {v0, v2, p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->o:F

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->n:Landroid/graphics/Shader;

    .line 113
    return-void
.end method

.method private b(II)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    if-le p1, p2, :cond_1

    .line 225
    add-int/lit8 p1, p1, -0x1

    .line 228
    :cond_0
    :goto_0
    return p1

    .line 226
    :cond_1
    if-ge p1, p2, :cond_0

    .line 227
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->e:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->i:I

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c(II)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 201
    .line 203
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->j:I

    if-lez v0, :cond_2

    .line 204
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->j:I

    .line 207
    :goto_0
    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->i:I

    if-lez v2, :cond_0

    .line 208
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->i:I

    .line 210
    :cond_0
    const-string v2, ""

    .line 211
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 221
    return-void

    .line 214
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 232
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b(II)I

    move-result p1

    .line 240
    :cond_0
    :goto_0
    return p1

    .line 236
    :cond_1
    if-le p1, p2, :cond_2

    .line 237
    add-int/lit8 p1, p1, -0x7

    goto :goto_0

    .line 238
    :cond_2
    if-ge p1, p2, :cond_0

    .line 239
    add-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->i:I

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->t:Ljava/util/HashMap;

    .line 274
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    .line 283
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->f:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "DxDigitalTimeDisplay"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->t:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 172
    .line 175
    const/16 v1, 0xe10

    if-lt p1, v1, :cond_1

    .line 176
    div-int/lit16 v1, p1, 0xe10

    .line 177
    mul-int/lit16 v2, v1, 0xe10

    sub-int/2addr p1, v2

    .line 179
    :goto_0
    const/16 v2, 0x3c

    if-lt p1, v2, :cond_0

    .line 180
    div-int/lit8 v0, p1, 0x3c

    .line 181
    mul-int/lit8 v2, v0, 0x3c

    sub-int v2, p1, v2

    .line 183
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(II)V

    .line 184
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    .line 188
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_0

    .line 191
    :cond_0
    iput p1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->e:I

    .line 192
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->f:I

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b()V

    .line 198
    return-void

    .line 195
    :cond_1
    iput p2, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->f:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 248
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    .line 120
    invoke-static {}, Lazf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->n:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 124
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    .line 125
    invoke-static {}, Lazf;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->n:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->k:Landroid/widget/TextView;

    .line 130
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->l:Landroid/widget/TextView;

    .line 131
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->o:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->o:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->o:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->p:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->p:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->p:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->r:I

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->r:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->r:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->q:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->k:Landroid/widget/TextView;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->q:F

    float-to-int v4, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 156
    :cond_5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    .line 157
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p0, v6}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->setClickable(Z)V

    .line 167
    invoke-virtual {p0, v6}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->setFocusable(Z)V

    .line 168
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->setDescendantFocusability(I)V

    .line 169
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 256
    :pswitch_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d()V

    .line 257
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b()V

    goto :goto_0

    .line 260
    :pswitch_2
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c()V

    .line 261
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDigitalClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method
