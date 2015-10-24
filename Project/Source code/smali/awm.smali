.class public Lawm;
.super Landroid/widget/BaseAdapter;
.source "RunAppBackView.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/RunAppBackView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p2, p0, Lawm;->b:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lawm;->c:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lawm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lawm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lawm;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I

    move-result v1

    iget-object v2, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v2}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I

    move-result v0

    iget-object v1, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I

    move-result v1

    iget-object v2, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v2}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I

    move-result v2

    iget-object v3, p0, Lawm;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v3}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 69
    :goto_0
    iget-object v0, p0, Lawm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-object p2

    .line 67
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0
.end method
