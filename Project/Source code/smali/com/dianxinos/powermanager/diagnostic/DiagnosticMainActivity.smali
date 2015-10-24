.class public Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;
.super Laao;
.source "DiagnosticMainActivity.java"

# interfaces
.implements Ladc;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static d:I


# instance fields
.field private A:Lakx;

.field private B:I

.field private volatile C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:Laff;

.field private H:Lazr;

.field private I:Laje;

.field private J:Lamb;

.field private K:Laji;

.field private L:Z

.field private M:Lazz;

.field private N:Lawg;

.field private O:Landroid/os/Handler;

.field private a:Z

.field private b:Z

.field private c:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lacz;

.field private j:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

.field private k:Landroid/widget/ProgressBar;

.field private l:Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

.field private m:Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

.field private n:Landroid/view/LayoutInflater;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;

.field private u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Laao;-><init>()V

    .line 88
    iput v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->c:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    .line 95
    iput v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    .line 96
    iput v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    .line 98
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    .line 129
    iput v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->E:I

    .line 136
    new-instance v0, Laji;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laji;-><init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Lajf;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    .line 138
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->L:Z

    .line 142
    new-instance v0, Lajf;

    invoke-direct {v0, p0}, Lajf;-><init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    .line 601
    return-void
.end method

.method public static synthetic A(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->w:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic B(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lazr;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->H:Lazr;

    return-object v0
.end method

.method public static synthetic C(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    return p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)I
    .locals 3
    .parameter

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 872
    invoke-virtual {v0}, Lajk;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 875
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Lawg;)Lawg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->N:Lawg;

    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ladd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Ladd;)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 805
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 806
    invoke-virtual {v0, p2}, Lajk;->a(Z)V

    goto :goto_0

    .line 808
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;Z)V

    .line 797
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;Z)V

    .line 798
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;Z)V

    .line 799
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;Z)V

    .line 800
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;Z)V

    .line 801
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Ljava/util/List;Z)V

    .line 802
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h:Z

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->C:Z

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l:Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    .line 468
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    .line 469
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ba

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l:Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    .line 470
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->m:Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    .line 472
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/diagnostic/StateButton;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    .line 473
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0313

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setText(I)V

    .line 474
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700c0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v:Landroid/widget/LinearLayout;

    .line 477
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->w:Landroid/widget/LinearLayout;

    .line 478
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->x:Landroid/widget/LinearLayout;

    .line 479
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    .line 480
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    .line 482
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    new-instance v1, Lajn;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajn;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    new-instance v1, Laiu;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Laiu;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    new-instance v1, Lajo;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajo;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    new-instance v1, Lajv;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3, v5}, Lajv;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    new-instance v1, Laix;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3, v5}, Laix;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->H:Lazr;

    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q:Ljava/util/List;

    new-instance v1, Lait;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->x:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lait;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q:Ljava/util/List;

    new-instance v1, Lajt;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->x:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajt;-><init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b:Z

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    new-instance v1, Laiy;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Laiy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    new-instance v1, Lajs;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajs;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    new-instance v1, Laju;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Laju;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    new-instance v1, Laiv;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Laiv;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    new-instance v1, Lajq;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajq;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    new-instance v1, Lajr;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajr;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    new-instance v1, Lajv;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3, v4}, Lajv;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    new-instance v1, Laix;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3, v4}, Laix;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    new-instance v1, Lajm;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lajm;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    new-instance v1, Laiw;

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Laiw;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->n:Landroid/view/LayoutInflater;

    .line 508
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a:Z

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Ladd;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 831
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->G:Laff;

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->c()I

    move-result v0

    .line 832
    if-lez v0, :cond_0

    .line 833
    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->F:I

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->G:Laff;

    if-nez v0, :cond_6

    iget-boolean v0, p1, Ladd;->l:Z

    .line 838
    :goto_0
    iget v2, p1, Ladd;->j:I

    invoke-static {v2}, Lacz;->a(I)I

    move-result v2

    .line 839
    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iget v4, p1, Ladd;->j:I

    invoke-virtual {v3, v4, v0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(IZI)V

    .line 840
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->c:I

    if-eq v2, v0, :cond_1

    .line 841
    invoke-static {p0, v2}, Lacz;->a(Landroid/content/Context;I)I

    move-result v0

    .line 842
    iput v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->c:I

    .line 843
    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v2, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(I)V

    .line 848
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->B:I

    if-nez v0, :cond_2

    .line 849
    iget v0, p1, Ladd;->k:I

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->B:I

    .line 853
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->E:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 854
    iget v0, p1, Ladd;->a:I

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->E:I

    .line 857
    :cond_3
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->C:Z

    if-nez v0, :cond_4

    iget v0, p1, Ladd;->a:I

    iget v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->E:I

    if-eq v0, v2, :cond_5

    .line 858
    :cond_4
    iget v0, p1, Ladd;->k:I

    iget v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->B:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->D:I

    .line 863
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 864
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->C:Z

    .line 866
    :cond_5
    iget v0, p1, Ladd;->a:I

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->E:I

    .line 867
    return-void

    .line 834
    :cond_6
    iget-boolean v0, p1, Ladd;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->G:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->G:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v2, 0x67

    if-eq v0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->n:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f()V

    .line 520
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setEnabled(Z)V

    .line 521
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Z)V

    .line 523
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laji;->a(Z)V

    .line 524
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    invoke-static {v0}, Layv;->a(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->L:Z

    return p1
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->J:Lamb;

    iget v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->D:I

    invoke-virtual {v0, v1}, Lamb;->c(I)V

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 557
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->finish()V

    .line 558
    return-void
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f()V

    .line 571
    iput v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    .line 572
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 575
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    sget v2, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 576
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->m:Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setVisibility(I)V

    .line 578
    iput v4, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    .line 579
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setState(I)V

    .line 581
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    invoke-virtual {v0, v3}, Laji;->a(Z)V

    .line 582
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Layv;->a(Ljava/lang/Runnable;J)V

    .line 583
    return-void
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    .line 587
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a:Z

    if-nez v0, :cond_1

    .line 590
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    .line 591
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    .line 592
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    .line 593
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b:Z

    if-nez v0, :cond_0

    .line 597
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    goto :goto_0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 715
    iput v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    .line 716
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 717
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f:I

    sget v2, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 718
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->m:Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setVisibility(I)V

    .line 721
    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Z)V

    .line 723
    iput v4, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    .line 724
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l:Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 725
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setState(I)V

    .line 726
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h()V

    .line 727
    return-void
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 730
    new-instance v0, Lajh;

    invoke-direct {v0, p0}, Lajh;-><init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V

    invoke-static {v0}, Layv;->a(Ljava/lang/Runnable;)V

    .line 760
    return-void
.end method

.method private i()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 763
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f()V

    .line 764
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 765
    iget v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    invoke-virtual {v0}, Lajk;->k()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 770
    iget v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    invoke-virtual {v0}, Lajk;->k()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    goto :goto_1

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 775
    iget v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    invoke-virtual {v0}, Lajk;->k()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    goto :goto_2

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 780
    iget v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    invoke-virtual {v0}, Lajk;->k()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    goto :goto_3

    .line 785
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    invoke-static {v0}, Lajj;->b(I)I

    move-result v0

    .line 786
    if-lt v0, v3, :cond_4

    .line 787
    invoke-static {p0, v3}, Lajj;->a(Landroid/content/Context;I)V

    .line 792
    :cond_4
    return v0
.end method

.method public static synthetic i(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i()I

    move-result v0

    return v0
.end method

.method public static synthetic j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic k(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic l(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic m(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a:Z

    return v0
.end method

.method public static synthetic n(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    return v0
.end method

.method public static synthetic o(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lacz;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i:Lacz;

    return-object v0
.end method

.method public static synthetic p(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->m:Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    return-object v0
.end method

.method public static synthetic q(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g:I

    return v0
.end method

.method public static synthetic r(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->F:I

    return v0
.end method

.method public static synthetic s(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->D:I

    return v0
.end method

.method public static synthetic t(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->L:Z

    return v0
.end method

.method public static synthetic u(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lazz;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->M:Lazz;

    return-object v0
.end method

.method public static synthetic v(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lawg;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->N:Lawg;

    return-object v0
.end method

.method public static synthetic w(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d()V

    return-void
.end method

.method public static synthetic x(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Laje;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->I:Laje;

    return-object v0
.end method

.method public static synthetic y(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 824
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 825
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 826
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 827
    iget-object v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->O:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 828
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->J:Lamb;

    iget v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->D:I

    invoke-virtual {v0, v1}, Lamb;->c(I)V

    .line 566
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->finish()V

    .line 567
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    if-ne p1, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u:Lcom/dianxinos/powermanager/diagnostic/StateButton;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->getSate()I

    move-result v0

    .line 531
    if-ne v0, v2, :cond_1

    .line 532
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h:Z

    .line 533
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d()V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 535
    invoke-static {p0}, Lajj;->b(Landroid/content/Context;)V

    .line 537
    const-string v0, "home"

    const-string v1, "finopt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 541
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d()V

    goto :goto_0

    .line 542
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 543
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->L:Z

    .line 545
    const-string v0, "home"

    const-string v1, "coptn"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 549
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 399
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 400
    invoke-static {p0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->H:Lazr;

    .line 401
    invoke-static {p0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->I:Laje;

    .line 402
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->J:Lamb;

    .line 403
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    const-class v1, Laaq;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from_where"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "birc"

    const-string v1, "lbnc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 414
    :cond_0
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->setContentView(I)V

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->B:I

    .line 416
    sget-boolean v0, Lazf;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lazf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    const/4 v0, 0x6

    sput v0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d:I

    .line 418
    :cond_1
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i:Lacz;

    .line 419
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->G:Laff;

    .line 421
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 422
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a023e

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 423
    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 424
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 425
    new-instance v1, Lajg;

    invoke-direct {v1, p0}, Lajg;-><init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-static {p0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->A:Lakx;

    .line 432
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->A:Lakx;

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a:Z

    .line 433
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbag;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b:Z

    .line 434
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b()V

    .line 435
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e()V

    .line 436
    invoke-static {p0}, Lazz;->a(Landroid/content/Context;)Lazz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->M:Lazz;

    .line 437
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Laao;->onDestroy()V

    .line 457
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->K:Laji;

    invoke-virtual {v0}, Laji;->a()V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->N:Lawg;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->N:Lawg;

    invoke-virtual {v0}, Lawg;->dismiss()V

    .line 463
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 880
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 881
    const/4 v0, 0x1

    .line 883
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Laao;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 818
    invoke-super {p0}, Laao;->onPause()V

    .line 819
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 820
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 812
    invoke-super {p0}, Laao;->onResume()V

    .line 813
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 814
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 441
    invoke-super {p0, p1}, Laao;->onWindowFocusChanged(Z)V

    .line 443
    if-eqz p1, :cond_1

    .line 444
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->c()V

    .line 452
    :cond_1
    return-void
.end method
