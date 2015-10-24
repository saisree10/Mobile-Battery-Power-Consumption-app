.class public Lavn;
.super Ljava/lang/Object;
.source "TigerGameView.java"


# instance fields
.field final synthetic a:Lavl;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:I

.field private e:I

.field private f:Landroid/widget/LinearLayout$LayoutParams;

.field private g:[I


# direct methods
.method public constructor <init>(Lavl;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-object p1, p0, Lavn;->a:Lavl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-object v1, p0, Lavn;->a:Lavl;

    invoke-virtual {v1}, Lavl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f08026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lavn;->d:I

    .line 139
    iget-object v1, p0, Lavn;->a:Lavl;

    invoke-virtual {v1}, Lavl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f08026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lavn;->e:I

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lavn;->d:I

    iget v3, p0, Lavn;->e:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lavn;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    const/4 v1, 0x4

    new-array v1, v1, [I

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0204a1

    aput v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02049d

    aput v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02049b

    aput v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02049c

    aput v3, v1, v2

    iput-object v1, p0, Lavn;->g:[I

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lavn;->g:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lavn;->b:Ljava/util/List;

    .line 151
    iget-object v1, p0, Lavn;->g:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 152
    iget-object v4, p0, Lavn;->b:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v3}, Lavn;->a(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lavn;->a:Lavl;

    invoke-static {v0}, Lavl;->a(Lavl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    iget v1, p0, Lavn;->d:I

    iget v2, p0, Lavn;->e:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lavn;->g:[I

    array-length v0, v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    if-eqz p2, :cond_1

    .line 170
    check-cast p2, Landroid/widget/ImageView;

    .line 174
    :goto_0
    iget-object v0, p0, Lavn;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lavn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 177
    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lavn;->g:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lavn;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lavn;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    return-object p2

    .line 172
    :cond_1
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lavn;->a:Lavl;

    invoke-static {v0}, Lavl;->a(Lavl;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lavn;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lavn;->c:Ljava/util/List;

    .line 194
    :cond_0
    iget-object v0, p0, Lavn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public b(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lavn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lavn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    return-void
.end method
