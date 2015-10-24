.class public Laqc;
.super Larf;
.source "OperationConfigActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    .line 166
    invoke-direct {p0, p2}, Larf;-><init>(Landroid/content/Context;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected a(Larg;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    iget v0, p1, Larg;->a:I

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p1, Larg;->d:Ljava/lang/String;

    invoke-static {v0}, Larh;->a(Ljava/lang/String;)Z

    move-result v0

    .line 173
    iget-object v1, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v1

    const-string v2, "ot_"

    invoke-virtual {v1, v2, v0}, Ladp;->a(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    iget-wide v1, p1, Larg;->e:J

    invoke-virtual {v0, v1, v2}, Ladp;->a(J)V

    .line 176
    iget-object v0, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    iget-object v1, p1, Larg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladp;->b(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    .line 178
    iget-object v0, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :goto_0
    iget-object v0, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d()V

    .line 183
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Laqc;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    check-cast p1, Larg;

    invoke-virtual {p0, p1}, Laqc;->a(Larg;)V

    return-void
.end method
