.class public Lahz;
.super Lahp;
.source "Only2GCommand.java"


# instance fields
.field private a:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Laia;

    invoke-direct {v0, p0}, Laia;-><init>(Lahz;)V

    iput-object v0, p0, Lahz;->h:Landroid/content/BroadcastReceiver;

    .line 28
    iput-boolean v1, p0, Lahz;->a:Z

    .line 29
    iput-boolean v1, p0, Lahz;->f:Z

    .line 30
    return-void
.end method

.method static synthetic a(Lahz;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lahz;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v3, "dianxinos.intent.action.ACTION_PREFERRED_NETWORK_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iput-boolean v0, p0, Lahz;->f:Z

    .line 119
    const-string v2, "prefer2G"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 123
    iput-boolean v1, p0, Lahz;->g:Z

    .line 130
    :cond_0
    :goto_0
    iget-object v2, p0, Lahz;->e:Lahq;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lahz;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-boolean v2, p0, Lahz;->g:Z

    if-eqz v2, :cond_3

    .line 132
    :goto_1
    iget-object v1, p0, Lahz;->e:Lahq;

    invoke-interface {v1, p0, v0, v0}, Lahq;->a(Lahp;II)V

    .line 135
    :cond_1
    return-void

    .line 125
    :cond_2
    const-string v2, "prefer2G"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 128
    iput-boolean v0, p0, Lahz;->g:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 131
    goto :goto_1
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dianxinos.intent.action.ACTION_SET_PREFERRED_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "prefer2G"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lahz;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    const-string v1, "dianxinos.intent.action.ACTION_PREFERRED_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lahz;->d:Landroid/content/Context;

    iget-object v2, p0, Lahz;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lahz;->f:Z

    .line 97
    invoke-direct {p0, v0}, Lahz;->a(Landroid/content/Intent;)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahz;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lahz;->a:Z

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lahz;->e:Lahq;

    .line 56
    invoke-direct {p0}, Lahz;->i()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lahz;->a:Z

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lahz;->b(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lahz;->g:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lahz;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "Only2GCommand"

    return-object v0
.end method
