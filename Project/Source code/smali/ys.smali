.class public Lys;
.super Landroid/widget/BaseAdapter;
.source "MessageBoxActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lyi;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 256
    invoke-virtual {p1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lys;->b:Landroid/view/LayoutInflater;

    .line 257
    new-instance v0, Lyi;

    invoke-virtual {p1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02000d

    invoke-direct {v0, v1, v2}, Lyi;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lys;->c:Lyi;

    .line 260
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 274
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 280
    if-nez p2, :cond_2

    .line 281
    new-instance v6, Lyv;

    invoke-direct {v6, v10}, Lyv;-><init>(Lyo;)V

    .line 282
    iput p1, v6, Lyv;->g:I

    .line 283
    iget-object v0, p0, Lys;->b:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030049

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 284
    iget-object v0, p0, Lys;->b:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030080

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 285
    new-instance v0, Lya;

    iget-object v1, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    iget-object v2, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    move-result-object v2

    new-instance v5, Lyt;

    invoke-direct {v5, p0, v3, v6}, Lyt;-><init>(Lys;Landroid/view/View;Lyv;)V

    invoke-direct/range {v0 .. v5}, Lya;-><init>(Landroid/content/Context;Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;Landroid/view/View;Landroid/view/View;Lyg;)V

    .line 302
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07013f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lyv;->a:Landroid/widget/ImageView;

    .line 303
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070143

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lyv;->b:Landroid/widget/ImageView;

    .line 304
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070140

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Lyv;->c:Landroid/widget/TextView;

    .line 305
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070141

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Lyv;->d:Landroid/widget/TextView;

    .line 306
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070144

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lyv;->e:Landroid/widget/ImageView;

    .line 307
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07020a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Lyv;->f:Landroid/widget/Button;

    .line 308
    iget-object v1, v6, Lyv;->f:Landroid/widget/Button;

    new-instance v2, Lyu;

    invoke-direct {v2, p0, v6}, Lyu;-><init>(Lys;Lyv;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    iget-object v1, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lya;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    move-object p2, v0

    .line 321
    :goto_0
    iget-object v0, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    .line 322
    iget-object v2, v0, Lzd;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    .line 323
    :goto_1
    if-eqz v4, :cond_0

    .line 324
    iget-object v2, v1, Lyv;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lzd;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    iget-object v2, v1, Lyv;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lzd;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    const/16 v5, 0xd

    invoke-static {v3, v5}, Laxb;->a(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v3, v2

    .line 327
    iget-object v2, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-virtual {v2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v5, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    const/16 v6, 0x22

    invoke-static {v5, v6}, Laxb;->a(Landroid/content/Context;I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 329
    iget-object v5, v1, Lyv;->c:Landroid/widget/TextView;

    if-le v3, v2, :cond_4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 330
    iget-object v3, v1, Lyv;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    move v2, v7

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v2, v1, Lyv;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    iget-wide v4, v0, Lzd;->h:J

    invoke-static {v3, v4, v5}, Lzo;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, v1, Lyv;->d:Landroid/widget/TextView;

    iget-boolean v3, v0, Lzd;->j:Z

    if-eqz v3, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget v2, v0, Lzd;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 336
    iget-object v2, v1, Lyv;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v2, v1, Lyv;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :goto_4
    iget-object v2, v0, Lzd;->e:Ljava/lang/String;

    invoke-static {v2}, Lyi;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_7

    .line 345
    iget-object v0, v1, Lyv;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v1, v2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    :goto_5
    return-object p2

    .line 317
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyv;

    .line 318
    iput p1, v0, Lyv;->g:I

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 322
    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 329
    goto :goto_2

    :cond_5
    move v2, v8

    .line 330
    goto :goto_3

    .line 339
    :cond_6
    iget-object v2, v1, Lyv;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v2, v1, Lyv;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 347
    :cond_7
    iget-object v2, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-virtual {v2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a()[I

    move-result-object v3

    iget v4, v0, Lzd;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a()[I

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 349
    invoke-static {v2}, Lzr;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 350
    iget-object v1, v1, Lyv;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v3, v2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    iget-object v1, p0, Lys;->c:Lyi;

    iget-object v0, v0, Lzd;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v10}, Lyi;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_5
.end method
