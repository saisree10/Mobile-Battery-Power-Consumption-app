.class public Lamv;
.super Landroid/os/Handler;
.source "ModeMgrActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Lamr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lamv;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 680
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_1

    .line 681
    iget-object v2, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Laff;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Z

    move-result v0

    .line 685
    :cond_0
    :goto_0
    iget-object v2, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    iget-object v3, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v3}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ladd;

    move-result-object v3

    iget v3, v3, Ladd;->j:I

    invoke-static {v2, v3, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;IZ)V

    .line 686
    iget-object v0, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ladd;

    move-result-object v0

    iput-boolean v1, v0, Ladd;->i:Z

    .line 687
    iget-object v0, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    iget-object v1, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ladd;

    move-result-object v1

    iget-boolean v1, v1, Ladd;->i:Z

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->b(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Z)Z

    .line 689
    :cond_1
    return-void

    .line 681
    :cond_2
    iget-object v2, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Laff;

    move-result-object v2

    invoke-virtual {v2}, Laff;->e()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lamv;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Laff;

    move-result-object v2

    invoke-virtual {v2}, Laff;->e()I

    move-result v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
