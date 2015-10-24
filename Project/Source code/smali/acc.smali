.class public Lacc;
.super Ljava/lang/Object;
.source "SleepModeWarningTipsShower.java"

# interfaces
.implements Lame;


# static fields
.field private static k:Lacc;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/content/Context;

.field private d:Lawu;

.field private e:Lawr;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Lamb;

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    .line 20
    iput-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    .line 46
    iput-object p1, p0, Lacc;->c:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lacc;->j:Lamb;

    .line 48
    iget-object v0, p0, Lacc;->j:Lamb;

    invoke-virtual {v0, p0}, Lamb;->a(Lame;)V

    .line 49
    iget-object v0, p0, Lacc;->j:Lamb;

    invoke-virtual {v0}, Lamb;->f()Z

    move-result v0

    iput-boolean v0, p0, Lacc;->g:Z

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;)Lacc;
    .locals 2
    .parameter

    .prologue
    .line 34
    sget-object v0, Lacc;->k:Lacc;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lacc;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lacc;->k:Lacc;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lacc;

    invoke-direct {v0, p0}, Lacc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lacc;->k:Lacc;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lacc;->k:Lacc;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lacc;)Lamb;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lacc;->j:Lamb;

    return-object v0
.end method

.method static synthetic b(Lacc;)Lawr;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lacc;->e:Lawr;

    return-object v0
.end method

.method static synthetic c(Lacc;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lacc;->d:Lawu;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    .line 57
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    new-instance v1, Lawu;

    iget-object v2, p0, Lacc;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lawu;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lacc;->d:Lawu;

    .line 59
    iget-object v0, p0, Lacc;->d:Lawu;

    new-instance v1, Lacd;

    invoke-direct {v1, p0}, Lacd;-><init>(Lacc;)V

    invoke-virtual {v0, v1}, Lawu;->setMoveListener(Lawx;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lacc;->e:Lawr;

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    new-instance v1, Lawr;

    iget-object v2, p0, Lacc;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lawr;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lacc;->e:Lawr;

    .line 73
    iget-object v0, p0, Lacc;->e:Lawr;

    new-instance v1, Lace;

    invoke-direct {v1, p0}, Lace;-><init>(Lacc;)V

    invoke-virtual {v0, v1}, Lawr;->setCloseListener(Lawt;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 88
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 93
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 94
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 96
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 98
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    invoke-static {v0}, Laxb;->a(Landroid/content/Context;)I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 104
    :cond_1
    iget-object v1, p0, Lacc;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 106
    sub-int/2addr v0, v1

    iput v0, p0, Lacc;->h:I

    .line 107
    iget v0, p0, Lacc;->h:I

    iput v0, p0, Lacc;->l:I

    .line 108
    const/16 v0, 0xa

    iput v0, p0, Lacc;->m:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    iput-boolean v4, p0, Lacc;->g:Z

    .line 113
    iget-object v0, p0, Lacc;->j:Lamb;

    iget-boolean v1, p0, Lacc;->g:Z

    invoke-virtual {v0, v1}, Lamb;->e(Z)V

    .line 114
    iget-object v0, p0, Lacc;->j:Lamb;

    invoke-virtual {v0}, Lamb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0}, Lacc;->e()V

    .line 119
    invoke-direct {p0}, Lacc;->g()V

    .line 120
    iget-object v0, p0, Lacc;->j:Lamb;

    invoke-virtual {v0}, Lamb;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-direct {p0}, Lacc;->f()V

    .line 122
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 123
    iget-object v1, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lacc;->h:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 124
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    iget-boolean v0, p0, Lacc;->i:Z

    if-nez v0, :cond_2

    .line 127
    :try_start_0
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->e:Lawr;

    iget-object v2, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lacc;->i:Z

    .line 135
    :cond_3
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lacc;->l:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lacc;->m:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    iget-boolean v0, p0, Lacc;->f:Z

    if-nez v0, :cond_4

    .line 140
    :try_start_1
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->d:Lawu;

    iget-object v2, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :cond_4
    :goto_2
    iput-boolean v4, p0, Lacc;->f:Z

    .line 146
    iget-object v0, p0, Lacc;->j:Lamb;

    iget-boolean v1, p0, Lacc;->f:Z

    invoke-virtual {v0, v1}, Lamb;->d(Z)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "SleepModeWarningTipsShower"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aleady added guide view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    const-string v1, "SleepModeWarningTipsShower"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aleady added view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 171
    :try_start_0
    iget-boolean v0, p0, Lacc;->i:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacc;->i:Z

    .line 173
    iget-object v0, p0, Lacc;->j:Lamb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamb;->f(Z)V

    .line 174
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->e:Lawr;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 181
    iput p1, p0, Lacc;->l:I

    .line 182
    iput p2, p0, Lacc;->m:I

    .line 183
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lacc;->l:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 184
    iget-object v0, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lacc;->m:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 186
    :try_start_1
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->d:Lawu;

    iget-object v2, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_1
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "SleepModeWarningTipsShower"

    const-string v1, " WindowManager remove view  Exception ..."

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    const-string v1, "SleepModeWarningTipsShower"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 201
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lacc;->f:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lacc;->b()V

    .line 203
    iput-boolean v1, p0, Lacc;->g:Z

    .line 204
    iget-object v0, p0, Lacc;->j:Lamb;

    iget-boolean v1, p0, Lacc;->g:Z

    invoke-virtual {v0, v1}, Lamb;->e(Z)V

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_2
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lacc;->g:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lacc;->a()V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lacc;->g:Z

    .line 151
    iget-object v0, p0, Lacc;->j:Lamb;

    iget-boolean v1, p0, Lacc;->g:Z

    invoke-virtual {v0, v1}, Lamb;->e(Z)V

    .line 152
    iget-boolean v0, p0, Lacc;->f:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lacc;->f:Z

    .line 155
    iget-object v0, p0, Lacc;->j:Lamb;

    iget-boolean v1, p0, Lacc;->f:Z

    invoke-virtual {v0, v1}, Lamb;->d(Z)V

    .line 156
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->d:Lawu;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 158
    iget-boolean v0, p0, Lacc;->i:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacc;->i:Z

    .line 160
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->e:Lawr;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v0, "SleepModeWarningTipsShower"

    const-string v1, " WindowManager remove view  Exception ..."

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 195
    const-string v0, "SleepModeWarningTipsShower"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShowStatus  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lacc;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lacc;->f:Z

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 213
    iget-boolean v0, p0, Lacc;->f:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->d:Lawu;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :goto_1
    iget-object v0, p0, Lacc;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 223
    new-instance v1, Lawu;

    iget-object v2, p0, Lacc;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lawu;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lacc;->d:Lawu;

    .line 224
    iget-object v0, p0, Lacc;->d:Lawu;

    new-instance v1, Lacf;

    invoke-direct {v1, p0}, Lacf;-><init>(Lacc;)V

    invoke-virtual {v0, v1}, Lawu;->setMoveListener(Lawx;)V

    .line 232
    :try_start_1
    iget-object v0, p0, Lacc;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lacc;->d:Lawu;

    iget-object v2, p0, Lacc;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "SleepModeWarningTipsShower"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aleady added view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    const-string v0, "SleepModeWarningTipsShower"

    const-string v1, " WindowManager remove view  Exception ..."

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
