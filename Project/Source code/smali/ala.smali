.class public Lala;
.super Landroid/widget/BaseAdapter;
.source "AppListActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppListActivity;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lala;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 295
    iput-object p2, p0, Lala;->b:Landroid/content/Context;

    .line 296
    iget-object v0, p0, Lala;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lala;->c:Landroid/view/LayoutInflater;

    .line 297
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lala;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 285
    new-instance v1, Lalb;

    invoke-direct {v1, p0, v0}, Lalb;-><init>(Lala;Landroid/view/View;)V

    .line 286
    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalb;

    .line 291
    iget-object v1, p0, Lala;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakz;

    invoke-virtual {v0, v1}, Lalb;->a(Lakz;)V

    .line 292
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lala;->e:Ljava/util/ArrayList;

    .line 301
    iget-object v0, p0, Lala;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lala;->d:I

    .line 303
    invoke-virtual {p0}, Lala;->notifyDataSetChanged()V

    .line 304
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lala;->d:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lala;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 318
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 325
    invoke-virtual {p0, p3}, Lala;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 330
    :cond_0
    invoke-virtual {p0, p2, p1}, Lala;->a(Landroid/view/View;I)V

    .line 331
    return-object p2
.end method
