.class public abstract Lajk;
.super Ljava/lang/Object;
.source "ItemBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static b:Z


# instance fields
.field protected c:Landroid/content/Context;

.field protected d:Landroid/os/Handler;

.field protected e:Landroid/widget/LinearLayout;

.field protected f:Landroid/view/View;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/Button;

.field protected i:Landroid/widget/ImageView;

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Ljava/lang/String;

.field protected n:Z

.field protected o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lajk;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajk;->n:Z

    .line 51
    iput-object p1, p0, Lajk;->c:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lajk;->d:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lajk;->e:Landroid/widget/LinearLayout;

    .line 54
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/view/LayoutInflater;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 93
    iget-boolean v0, p0, Lajk;->n:Z

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, p0, Lajk;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030030

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lajk;->f:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lajk;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lajk;->g:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lajk;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lajk;->h:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lajk;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lajk;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajk;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lajk;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lajk;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget v0, p0, Lajk;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget v0, p0, Lajk;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lajk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lajk;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lajk;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajk;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 120
    iput-object v4, p0, Lajk;->f:Landroid/view/View;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lajk;->n:Z

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lajk;->f()V

    .line 171
    iget-object v0, p0, Lajk;->c:Landroid/content/Context;

    const-string v1, "home"

    const-string v2, "hasope"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 175
    new-instance v0, Lajl;

    invoke-direct {v0, p0}, Lajl;-><init>(Lajk;)V

    invoke-static {v0}, Layv;->a(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lajk;->d:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lajk;->n:Z

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lajk;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lajk;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lajk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lajk;->k:I

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lajk;->n:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lajk;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajk;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lajk;->n:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lajk;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lajk;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lajk;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget v0, p0, Lajk;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :goto_1
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lajk;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lajk;->b()V

    .line 90
    return-void
.end method
