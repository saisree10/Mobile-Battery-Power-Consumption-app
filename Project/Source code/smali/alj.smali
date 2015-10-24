.class public Lalj;
.super Landroid/widget/BaseAdapter;
.source "AppWhiteListActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lalj;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 238
    iput-object p2, p0, Lalj;->b:Landroid/content/Context;

    .line 239
    iget-object v0, p0, Lalj;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lalj;->c:Landroid/view/LayoutInflater;

    .line 240
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lalj;->e:Ljava/util/ArrayList;

    .line 244
    iget-object v0, p0, Lalj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lalj;->d:I

    .line 246
    invoke-virtual {p0}, Lalj;->notifyDataSetChanged()V

    .line 247
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lalj;->d:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lalj;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 261
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    iget-object v0, p0, Lalj;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 269
    new-instance v1, Lalk;

    invoke-direct {v1, p0}, Lalk;-><init>(Lalj;)V

    .line 270
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lalk;->a:Landroid/widget/TextView;

    .line 271
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lalk;->b:Landroid/widget/ImageView;

    .line 272
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lalk;->c:Landroid/widget/CheckBox;

    .line 273
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 279
    :goto_0
    iget-object v2, v1, Lalk;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lalj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lali;

    invoke-static {v0}, Lali;->b(Lali;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, v1, Lalk;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lalj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lali;

    invoke-static {v0}, Lali;->c(Lali;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v0, p0, Lalj;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lali;

    iget-boolean v0, v0, Lali;->a:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, v1, Lalk;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    :goto_1
    return-object p2

    .line 276
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalk;

    move-object v1, v0

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, v1, Lalk;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
