.class public Larm;
.super Ljava/lang/Object;
.source "FloatSwitchWindow.java"

# interfaces
.implements Ladc;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static p:Larm;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Lcom/dianxinos/powermanager/mode/ModeIconView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:I

.field private j:Lase;

.field private k:Lacz;

.field private l:Z

.field private m:Lane;

.field private n:Laro;

.field private o:I

.field private volatile q:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Larm;->a:Landroid/view/WindowManager;

    .line 32
    iput-object v1, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    .line 46
    iput-object v1, p0, Larm;->j:Lase;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Larm;->o:I

    .line 86
    iput-object p1, p0, Larm;->c:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Larm;->c:Landroid/content/Context;

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Larm;->k:Lacz;

    .line 88
    new-instance v0, Laro;

    invoke-direct {v0, p0, v1}, Laro;-><init>(Larm;Larn;)V

    iput-object v0, p0, Larm;->n:Laro;

    .line 89
    invoke-direct {p0}, Larm;->e()V

    .line 90
    invoke-direct {p0}, Larm;->f()V

    .line 91
    return-void
.end method

.method static synthetic a(Larm;)Lacz;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Larm;->k:Lacz;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Larm;
    .locals 2
    .parameter

    .prologue
    .line 71
    sget-object v0, Larm;->p:Larm;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Larm;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Larm;->p:Larm;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Larm;

    invoke-direct {v0, p0}, Larm;-><init>(Landroid/content/Context;)V

    sput-object v0, Larm;->p:Larm;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Larm;->p:Larm;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Larm;->c:Landroid/content/Context;

    invoke-static {v0}, Lasc;->a(Landroid/content/Context;)Lasc;

    move-result-object v0

    iget-object v1, p0, Larm;->j:Lase;

    iget v2, p0, Larm;->i:I

    invoke-static {v2}, Lamq;->d(I)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lasc;->a(Lase;ZI)V

    .line 249
    return-void
.end method

.method static synthetic a(Larm;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Larm;->l:Z

    return p1
.end method

.method static synthetic b(Larm;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Larm;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Larm;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Larm;->q:Z

    return p1
.end method

.method static synthetic c(Larm;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic d(Larm;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Larm;->a:Landroid/view/WindowManager;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Larm;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 96
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Larm;->d:Landroid/view/View;

    .line 97
    iget-object v0, p0, Larm;->d:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Larm;->d:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Larm;->h:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Larm;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Larm;->d:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/mode/ModeIconView;

    iput-object v0, p0, Larm;->e:Lcom/dianxinos/powermanager/mode/ModeIconView;

    .line 103
    iget-object v0, p0, Larm;->d:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Larm;->f:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Larm;->d:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Larm;->g:Landroid/view/View;

    .line 106
    iget-object v0, p0, Larm;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Larm;->a:Landroid/view/WindowManager;

    .line 107
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 110
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    .line 114
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 115
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 116
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 117
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 118
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Larm;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public a(ILamp;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Larm;->i:I

    .line 133
    iget-object v0, p0, Larm;->e:Lcom/dianxinos/powermanager/mode/ModeIconView;

    invoke-virtual {v0, p1, p2}, Lcom/dianxinos/powermanager/mode/ModeIconView;->a(ILamp;)V

    .line 134
    return-void
.end method

.method public a(Ladd;)V
    .locals 3
    .parameter

    .prologue
    .line 205
    iget-boolean v0, p0, Larm;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Ladd;->i:Z

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Lanf;

    invoke-direct {v0}, Lanf;-><init>()V

    .line 207
    iget-boolean v1, p1, Ladd;->l:Z

    iput-boolean v1, v0, Lanf;->a:Z

    .line 208
    iget v1, p1, Ladd;->k:I

    iput v1, v0, Lanf;->b:I

    .line 210
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 211
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 214
    iget-object v0, p0, Larm;->m:Lane;

    invoke-virtual {v0, v1}, Lane;->sendMessage(Landroid/os/Message;)Z

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Larm;->m:Lane;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lane;

    iget-object v1, p0, Larm;->c:Landroid/content/Context;

    iget v2, p1, Ladd;->k:I

    invoke-direct {v0, v1, v2}, Lane;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Larm;->m:Lane;

    goto :goto_0
.end method

.method public a(Lase;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Larm;->j:Lase;

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Larm;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget v0, p0, Larm;->o:I

    invoke-virtual {p0, v0}, Larm;->b(I)V

    .line 125
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Larm;->q:Z

    return v0
.end method

.method public b()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x1

    .line 150
    iget-object v0, p0, Larm;->c:Landroid/content/Context;

    invoke-static {v0}, Laxb;->a(Landroid/content/Context;)I

    move-result v0

    .line 151
    iget-object v1, p0, Larm;->c:Landroid/content/Context;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Laxb;->a(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 153
    iget-object v1, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 154
    iget-object v0, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 156
    iget-boolean v0, p0, Larm;->q:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Larm;->c()V

    .line 158
    iget-object v0, p0, Larm;->n:Laro;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, v6}, Laro;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    :goto_0
    iget-object v0, p0, Larm;->n:Laro;

    invoke-virtual {v0, v4, v5, v6}, Laro;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    return-void

    .line 162
    :cond_0
    :try_start_0
    iget-object v0, p0, Larm;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Larm;->d:Landroid/view/View;

    iget-object v2, p0, Larm;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Larm;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "FloatSwitchWindow"

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

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iput p1, p0, Larm;->o:I

    .line 142
    iget v0, p0, Larm;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Larm;->h:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Larm;->h:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Larm;->n:Laro;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Laro;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    :try_start_0
    iget-object v0, p0, Larm;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Larm;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Larm;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "FloatSwitchWindow"

    const-string v1, " WindowManager remove view  Exception ..."

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Larm;->l:Z

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Larm;->a(Z)V

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 192
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700eb

    if-ne v0, v1, :cond_2

    .line 193
    iget v0, p0, Larm;->o:I

    if-ne v0, v2, :cond_0

    .line 194
    iput-boolean v2, p0, Larm;->l:Z

    .line 195
    invoke-direct {p0, v2}, Larm;->a(Z)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Larm;->c()V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700ec

    if-ne v0, v1, :cond_1

    .line 199
    invoke-virtual {p0}, Larm;->c()V

    goto :goto_0
.end method
