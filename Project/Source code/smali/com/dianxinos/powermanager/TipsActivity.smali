.class public Lcom/dianxinos/powermanager/TipsActivity;
.super Laao;
.source "TipsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lawa;


# static fields
.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field a:Lcom/dianxinos/powermanager/ui/GuideView;

.field private e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

.field private f:Landroid/widget/CheckBox;

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v6, [I

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02044b

    aput v1, v0, v2

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02044c

    aput v1, v0, v3

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02044d

    aput v1, v0, v4

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02044e

    aput v1, v0, v5

    sput-object v0, Lcom/dianxinos/powermanager/TipsActivity;->b:[I

    .line 51
    new-array v0, v6, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0251

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0253

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0255

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0257

    aput v1, v0, v5

    sput-object v0, Lcom/dianxinos/powermanager/TipsActivity;->c:[I

    .line 58
    new-array v0, v6, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0252

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0254

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0256

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0258

    aput v1, v0, v5

    sput-object v0, Lcom/dianxinos/powermanager/TipsActivity;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Laao;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->n:J

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 220
    invoke-static {p0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lazr;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "ro.dianxinos.os.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    const-string v2, "DXROM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {p0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v0}, Lazr;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iput p1, p0, Lcom/dianxinos/powermanager/TipsActivity;->l:I

    .line 186
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->a:Lcom/dianxinos/powermanager/ui/GuideView;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/GuideView;->setSelectedId(I)V

    .line 187
    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->j:I

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 237
    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laao;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 239
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->o:F

    goto :goto_0

    .line 243
    :pswitch_1
    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->onBackPressed()V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    iget v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->finish()V

    .line 207
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/TipsActivity;->a()V

    .line 208
    return-void

    .line 196
    :cond_1
    iget v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->l:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/dianxinos/powermanager/TipsActivity;->j:I

    if-ne v1, v2, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->finish()V

    .line 198
    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/TipsActivity;->overridePendingTransition(II)V

    .line 200
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lagl;->a(Landroid/content/Context;)Lagl;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/TipsActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Lagl;->a(Z)V

    .line 201
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {p0}, Lbal;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07023f

    if-ne v0, v1, :cond_1

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/menu/HelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/TipsActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070242

    if-ne v0, v1, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/UserExperienceProgramActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/TipsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03008d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/TipsActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    const-string v1, "tips_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->m:I

    .line 96
    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    sget-object v0, Lcom/dianxinos/powermanager/TipsActivity;->b:[I

    iput-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->g:[I

    .line 98
    sget-object v0, Lcom/dianxinos/powermanager/TipsActivity;->c:[I

    iput-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->h:[I

    .line 99
    sget-object v0, Lcom/dianxinos/powermanager/TipsActivity;->d:[I

    iput-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->i:[I

    .line 100
    sget-object v0, Lcom/dianxinos/powermanager/TipsActivity;->c:[I

    array-length v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->j:I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->n:J

    .line 104
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/TipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    .line 106
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/TipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 112
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v11, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-static {p0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v12

    .line 115
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->j:I

    if-ge v10, v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070243

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v12}, Lazp;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v5, 0x7f080165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v6, 0x7f090063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v7, 0x7f090064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 125
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07022f

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->g:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->h:[I

    aget v0, v0, v10

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 132
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070244

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->i:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    add-int/lit8 v0, v10, 0x1

    iget v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->j:I

    if-ne v0, v1, :cond_1

    .line 137
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070240

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070241

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->f:Landroid/widget/CheckBox;

    .line 139
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070242

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a025f

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/TipsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023d

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023f

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0261

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/TipsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_1
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_0

    .line 156
    :cond_2
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->k:I

    .line 157
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    iget v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setItemSize(I)V

    .line 159
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/TipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/GuideView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->a:Lcom/dianxinos/powermanager/ui/GuideView;

    .line 160
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->a:Lcom/dianxinos/powermanager/ui/GuideView;

    iget v1, p0, Lcom/dianxinos/powermanager/TipsActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/GuideView;->setSize(I)V

    .line 161
    iget-object v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setChangeItemListener(Lawa;)V

    .line 163
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Laao;->onDestroy()V

    .line 168
    iget v0, p0, Lcom/dianxinos/powermanager/TipsActivity;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/powermanager/TipsActivity;->n:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 170
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/TipsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lbal;->b(Landroid/content/Context;I)V

    .line 172
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_0

    .line 216
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 214
    :pswitch_0
    invoke-super {p0, p1, p2}, Laao;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
