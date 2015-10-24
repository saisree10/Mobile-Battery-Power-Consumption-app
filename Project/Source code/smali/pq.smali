.class public Lpq;
.super Landroid/app/Dialog;
.source "LoadingTctbDialog.java"


# instance fields
.field a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lox;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Lpq;)V

    iput-object v0, p0, Lpq;->q:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lpq;->e:Landroid/content/Context;

    .line 49
    sget v0, Loj;->toolbox_loadingdialog_tctb:I

    invoke-virtual {p0, v0}, Lpq;->setContentView(I)V

    .line 51
    invoke-direct {p0, p1}, Lpq;->a(Landroid/content/Context;)Lox;

    move-result-object v0

    iput-object v0, p0, Lpq;->p:Lox;

    .line 53
    sget v0, Loi;->toolbox_loading_des:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpq;->b:Landroid/widget/TextView;

    .line 54
    sget v0, Loi;->toolbox_loading_dots:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpq;->d:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lpq;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lpq;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    sget v0, Loi;->toolbox_app_tctb_title:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->f:Landroid/view/View;

    .line 58
    sget v0, Loi;->toolbox_app_tctb_subtitle:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->g:Landroid/view/View;

    .line 59
    sget v0, Loi;->toolbox_app_tctb_line:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->h:Landroid/view/View;

    .line 60
    sget v0, Loi;->toolbox_app_tctb_recommend:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->i:Landroid/view/View;

    .line 61
    sget v0, Loi;->toolbox_apps_tctb:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->j:Landroid/view/View;

    .line 62
    sget v0, Loi;->toolbox_apps_tctb_ad_icon:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpq;->k:Landroid/widget/ImageView;

    .line 63
    sget v0, Loi;->toolbox_apps_tctb_ad_title:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpq;->l:Landroid/widget/TextView;

    .line 64
    sget v0, Loi;->toolbox_apps_tctb_ad_downlaod:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpq;->m:Landroid/widget/TextView;

    .line 65
    sget v0, Loi;->toolbox_tctb_space:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->n:Landroid/view/View;

    .line 67
    sget v0, Loi;->toolbox_loading_close:I

    invoke-virtual {p0, v0}, Lpq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpq;->o:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lpq;->o:Landroid/view/View;

    new-instance v1, Lps;

    invoke-direct {v1, p0}, Lps;-><init>(Lpq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;)Lox;
    .locals 3
    .parameter

    .prologue
    .line 159
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    .line 160
    sget v1, Loh;->toolbox_default_app_icon:I

    iput v1, v0, Lox;->a:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 163
    sget v2, Log;->toolbox_apps_listview_item_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 165
    iput v1, v0, Lox;->b:I

    .line 166
    iput v1, v0, Lox;->c:I

    .line 168
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lpq;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lpq;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 78
    iget-object v0, p0, Lpq;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lpq;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 135
    iget-object v0, p0, Lpq;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lpq;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lpq;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lpq;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lpq;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lpq;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lpq;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lpq;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lpq;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lpq;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lpq;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lpq;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lpq;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lpq;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lpq;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lpq;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lpq;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpq;->b(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lpq;->c:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lpq;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lpq;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lpq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Lou;)V
    .locals 7
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lpq;->c()V

    .line 127
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p1, Lou;->l:Ljava/lang/String;

    iget-object v2, p0, Lpq;->k:Landroid/widget/ImageView;

    iget-object v3, p0, Lpq;->p:Lox;

    invoke-virtual {v0, v1, v2, v3}, Lov;->a(Ljava/lang/String;Landroid/widget/ImageView;Lox;)V

    .line 128
    iget-object v0, p0, Lpq;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lou;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lpq;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lpq;->e:Landroid/content/Context;

    sget v2, Lok;->toolbox_downloads:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lou;->s:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lpq;->show()V

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lpq;->a(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lpq;->b()V

    .line 107
    invoke-virtual {p0}, Lpq;->show()V

    .line 108
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 84
    iget-object v0, p0, Lpq;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lpq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0}, Lpq;->a()V

    .line 86
    return-void
.end method
