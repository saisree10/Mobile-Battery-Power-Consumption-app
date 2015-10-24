.class Lalb;
.super Ljava/lang/Object;
.source "AppListActivity.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/CheckBox;

.field final synthetic d:Lala;


# direct methods
.method public constructor <init>(Lala;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lalb;->d:Lala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lalb;->a:Landroid/widget/TextView;

    .line 267
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lalb;->b:Landroid/widget/ImageView;

    .line 268
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lalb;->c:Landroid/widget/CheckBox;

    .line 269
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    return-void
.end method


# virtual methods
.method public a(Lakz;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lalb;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lakz;->c(Lakz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lalb;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Lakz;->d(Lakz;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-boolean v0, p1, Lakz;->a:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lalb;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lalb;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
