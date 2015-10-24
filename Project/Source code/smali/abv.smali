.class public Labv;
.super Ljava/lang/Object;
.source "PowerMgrTabActivity.java"

# interfaces
.implements Ladc;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Labm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Labv;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->d(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    iget-boolean v1, p1, Ladd;->l:Z

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    .line 142
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    .line 159
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-boolean v0, p1, Ladd;->l:Z

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "PowerMgrTabActivity"

    const-string v1, "charging status"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "PowerMgrTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNewUser : + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFromSleepTips : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->f(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->g(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->f(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)V

    .line 151
    :cond_1
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    .line 156
    :goto_1
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->d(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    .line 157
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Labv;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    goto :goto_1
.end method
