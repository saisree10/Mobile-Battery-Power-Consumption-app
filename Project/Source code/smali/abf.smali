.class public Labf;
.super Landroid/os/Handler;
.source "PowerMgrReceiver.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrReceiver;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Labf;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrReceiver;Labe;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Labf;-><init>(Lcom/dianxinos/powermanager/PowerMgrReceiver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Labf;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lazh;->g()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Labf;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Labf;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
