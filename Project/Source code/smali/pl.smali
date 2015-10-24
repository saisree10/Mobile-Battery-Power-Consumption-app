.class public Lpl;
.super Landroid/widget/ArrayAdapter;
.source "ListGoldAdapter.java"


# instance fields
.field a:Lmf;

.field b:Lox;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lpl;->e:I

    .line 40
    iput-object p1, p0, Lpl;->c:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lpl;->d:Landroid/view/LayoutInflater;

    .line 42
    invoke-static {p1}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v0

    iput-object v0, p0, Lpl;->a:Lmf;

    .line 43
    invoke-virtual {p0, p1}, Lpl;->a(Landroid/content/Context;)Lox;

    move-result-object v0

    iput-object v0, p0, Lpl;->b:Lox;

    .line 44
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;Lou;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 59
    if-nez p2, :cond_2

    .line 60
    iget-object v0, p0, Lpl;->d:Landroid/view/LayoutInflater;

    sget v1, Loj;->toolbox_apps_recently_item:I

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Lpn;

    invoke-direct {v1}, Lpn;-><init>()V

    .line 63
    sget v0, Loi;->toolbox_apps_listitem_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lpn;->b:Landroid/widget/ImageView;

    .line 64
    sget v0, Loi;->toolbox_apps_listitem_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->c:Landroid/widget/TextView;

    .line 65
    sget v0, Loi;->toolbox_apps_listitem_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->d:Landroid/widget/TextView;

    .line 66
    sget v0, Loi;->toolbox_apps_listitem_icon_installed:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lpn;->a:Landroid/view/View;

    .line 68
    sget v0, Loi;->toolbox_apps_listitem_gold_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->e:Landroid/widget/TextView;

    .line 70
    sget v0, Loi;->toolbox_apps_listitem_downloads:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->f:Landroid/widget/TextView;

    .line 72
    sget v0, Loi;->toolbox_apps_listitem_close:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    new-instance v2, Lpm;

    iget-object v3, p0, Lpl;->c:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lpm;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;)V

    iput-object v2, v1, Lpn;->h:Lpm;

    .line 74
    iget-object v2, v1, Lpn;->h:Lpm;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-static {}, Lpl;->a()Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    iput-object v0, v1, Lpn;->i:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 83
    :goto_0
    iget-object v1, v0, Lpn;->h:Lpm;

    invoke-virtual {v1, p4}, Lpm;->a(Lou;)V

    .line 85
    iget-object v1, v0, Lpn;->c:Landroid/widget/TextView;

    iget-object v2, p4, Lou;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, v0, Lpn;->d:Landroid/widget/TextView;

    iget-object v2, p4, Lou;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-boolean v1, p4, Lou;->t:Z

    if-nez v1, :cond_0

    iget v1, p4, Lou;->p:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lpl;->a:Lmf;

    iget-wide v2, p4, Lou;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "22"

    invoke-virtual {v1, v2, v3}, Lmf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    :cond_0
    iget-object v1, v0, Lpn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_1
    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    iget-object v2, p4, Lou;->l:Ljava/lang/String;

    iget-object v3, v0, Lpn;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lpl;->b:Lox;

    invoke-virtual {v1, v2, v3, v4}, Lov;->a(Ljava/lang/String;Landroid/widget/ImageView;Lox;)V

    .line 99
    iget-boolean v1, p4, Lou;->t:Z

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, v0, Lpn;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_2
    iget-object v1, v0, Lpn;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lpl;->c:Landroid/content/Context;

    sget v3, Lok;->toolbox_downloads:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p4, Lou;->s:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    iget v1, p0, Lpl;->e:I

    if-ge v1, p1, :cond_1

    .line 108
    iget-object v0, v0, Lpn;->i:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :cond_1
    iput p1, p0, Lpl;->e:I

    .line 111
    return-object p2

    .line 79
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpn;

    goto :goto_0

    .line 93
    :cond_3
    iget-object v1, v0, Lpn;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p4, Lou;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, v0, Lpn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 102
    :cond_4
    iget-object v1, v0, Lpn;->a:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static a()Landroid/view/animation/TranslateAnimation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4316

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 201
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 204
    return-object v0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;Lou;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 116
    if-nez p2, :cond_2

    .line 117
    iget-object v0, p0, Lpl;->d:Landroid/view/LayoutInflater;

    sget v1, Loj;->toolbox_apps_listviewgold_item:I

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v1, Lpn;

    invoke-direct {v1}, Lpn;-><init>()V

    .line 120
    sget v0, Loi;->toolbox_apps_listitem_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lpn;->b:Landroid/widget/ImageView;

    .line 121
    sget v0, Loi;->toolbox_apps_listitem_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->c:Landroid/widget/TextView;

    .line 122
    sget v0, Loi;->toolbox_apps_listitem_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->d:Landroid/widget/TextView;

    .line 123
    sget v0, Loi;->toolbox_apps_listitem_icon_installed:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lpn;->a:Landroid/view/View;

    .line 125
    sget v0, Loi;->toolbox_apps_listitem_gold_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->e:Landroid/widget/TextView;

    .line 127
    sget v0, Loi;->toolbox_apps_listitem_downloads:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpn;->f:Landroid/widget/TextView;

    .line 129
    sget v0, Loi;->toolbox_apps_listitem_icon_hot:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lpn;->g:Landroid/view/View;

    .line 130
    invoke-static {}, Lpl;->a()Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    iput-object v0, v1, Lpn;->i:Landroid/view/animation/Animation;

    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 137
    :goto_0
    iget-object v1, v0, Lpn;->c:Landroid/widget/TextView;

    iget-object v2, p4, Lou;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, v0, Lpn;->d:Landroid/widget/TextView;

    iget-object v2, p4, Lou;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-boolean v1, p4, Lou;->t:Z

    if-nez v1, :cond_0

    iget v1, p4, Lou;->p:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lpl;->a:Lmf;

    iget-wide v2, p4, Lou;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "22"

    invoke-virtual {v1, v2, v3}, Lmf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    :cond_0
    iget-object v1, v0, Lpn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_1
    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    iget-object v2, p4, Lou;->l:Ljava/lang/String;

    iget-object v3, v0, Lpn;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lpl;->b:Lox;

    invoke-virtual {v1, v2, v3, v4}, Lov;->a(Ljava/lang/String;Landroid/widget/ImageView;Lox;)V

    .line 151
    iget-boolean v1, p4, Lou;->t:Z

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, v0, Lpn;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_2
    iget-boolean v1, p4, Lou;->r:Z

    if-eqz v1, :cond_5

    .line 158
    iget-object v1, v0, Lpn;->g:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_3
    iget-object v1, v0, Lpn;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lpl;->c:Landroid/content/Context;

    sget v3, Lok;->toolbox_downloads:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p4, Lou;->s:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    iget v1, p0, Lpl;->e:I

    if-ge v1, p1, :cond_1

    .line 166
    iget-object v0, v0, Lpn;->i:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    :cond_1
    iput p1, p0, Lpl;->e:I

    .line 169
    return-object p2

    .line 133
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpn;

    goto :goto_0

    .line 145
    :cond_3
    iget-object v1, v0, Lpn;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p4, Lou;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, v0, Lpn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 154
    :cond_4
    iget-object v1, v0, Lpn;->a:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 160
    :cond_5
    iget-object v1, v0, Lpn;->g:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lox;
    .locals 3
    .parameter

    .prologue
    .line 187
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    .line 188
    sget v1, Loh;->toolbox_default_app_icon:I

    iput v1, v0, Lox;->a:I

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    sget v2, Log;->toolbox_apps_listview_item_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    iput v1, v0, Lox;->b:I

    .line 194
    iput v1, v0, Lox;->c:I

    .line 196
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lpl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 183
    iget-boolean v0, v0, Lou;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lpl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 49
    iget-boolean v1, v0, Lou;->u:Z

    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lpl;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lou;)Landroid/view/View;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lpl;->b(ILandroid/view/View;Landroid/view/ViewGroup;Lou;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x2

    return v0
.end method
