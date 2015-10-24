.class public Lcom/dianxinos/powermanager/smart/CpuSelectDialog;
.super Laao;
.source "CpuSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Larl;

.field private e:Lazh;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lauu;

.field private v:Lauu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->a:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Laao;-><init>()V

    .line 242
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->f()V

    return-void
.end method

.method public static synthetic b()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)Larl;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->d:Larl;

    return-object v0
.end method

.method public static synthetic c()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->a:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    .line 193
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 194
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 195
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018e

    new-instance v2, Lari;

    invoke-direct {v2, p0}, Lari;-><init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    invoke-virtual {v0}, Lauu;->show()V

    .line 204
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    .line 208
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 209
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 210
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    new-instance v2, Larj;

    invoke-direct {v2, p0}, Larj;-><init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    invoke-virtual {v0}, Lauu;->show()V

    .line 217
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    new-instance v1, Lark;

    invoke-direct {v1, p0}, Lark;-><init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V

    invoke-virtual {v0, v1}, Lbag;->a(Lbai;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->o:I

    iput v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->t:I

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070095

    if-ne v0, v2, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->finish()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    invoke-virtual {v0}, Lbag;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const/4 v0, 0x1

    .line 157
    :goto_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->i:Landroid/view/ViewGroup;

    if-ne p1, v2, :cond_6

    .line 158
    iget v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->q:I

    iput v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->t:I

    .line 167
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0}, Lazh;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0, v1}, Lazh;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-nez v0, :cond_8

    .line 171
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0192

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->finish()V

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbag;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 150
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->d()V

    move v0, v1

    goto :goto_1

    .line 153
    :cond_5
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e()V

    move v0, v1

    goto :goto_1

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->j:Landroid/view/ViewGroup;

    if-ne p1, v2, :cond_7

    .line 161
    iget v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->r:I

    iput v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->t:I

    goto :goto_2

    .line 163
    :cond_7
    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->k:Landroid/view/ViewGroup;

    if-ne p1, v2, :cond_2

    .line 164
    iget v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->s:I

    iput v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->t:I

    goto :goto_2

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    iget v2, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->p:I

    iget v3, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->t:I

    invoke-virtual {v0, v2, v3}, Lazh;->a(II)Z

    move-result v0

    .line 176
    if-nez v0, :cond_3

    .line 177
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f0201f2

    const v6, 0x7f0201f1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    .line 64
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0}, Lazh;->e()V

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0}, Lazh;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->finish()V

    .line 122
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0, v4}, Lazh;->d(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->o:I

    .line 71
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0, v4}, Lazh;->c(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->p:I

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0}, Lazh;->b()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->q:I

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0}, Lazh;->c()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->r:I

    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->e:Lazh;

    invoke-virtual {v0}, Lazh;->d()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->s:I

    .line 76
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->i:Landroid/view/ViewGroup;

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->f:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->f:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a007c

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->q:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->l:Landroid/widget/ImageView;

    .line 81
    iget v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->o:I

    iget v1, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->q:I

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->l:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :goto_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->j:Landroid/view/ViewGroup;

    .line 89
    iget v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->r:I

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    :goto_2
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->k:Landroid/view/ViewGroup;

    .line 105
    iget v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->s:I

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    :goto_3
    new-instance v0, Larl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Larl;-><init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;Lari;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->d:Larl;

    .line 121
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->l:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->g:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->g:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a007d

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->r:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->m:Landroid/widget/ImageView;

    .line 97
    iget v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->o:I

    iget v1, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->r:I

    if-ne v0, v1, :cond_3

    .line 98
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->m:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->m:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->h:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->h:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a007e

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->s:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->n:Landroid/widget/ImageView;

    .line 113
    iget v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->o:I

    iget v1, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->s:I

    if-ne v0, v1, :cond_5

    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->n:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->n:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->u:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->v:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 132
    :cond_1
    invoke-super {p0}, Laao;->onDestroy()V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Laao;->onPause()V

    .line 189
    return-void
.end method
