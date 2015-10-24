.class public Laqa;
.super Lajz;
.source "OperationConfigActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Lajz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Ljava/lang/String;I)V

    .line 332
    return-void
.end method

.method public a(Ljava/lang/String;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ladp;->b(J)V

    .line 362
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladp;->c(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Ljava/lang/String;I)V

    .line 364
    const v0, 0x30d42

    if-ne p2, v0, :cond_0

    .line 365
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0222

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(I)V

    .line 373
    :goto_0
    return-void

    .line 366
    :cond_0
    const v0, 0x30d4a

    if-ne p2, v0, :cond_1

    .line 367
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0209

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(I)V

    goto :goto_0

    .line 368
    :cond_1
    const v0, 0x30d41

    if-ne p2, v0, :cond_2

    .line 369
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0221

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(I)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-static {p1}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-object v2, v2, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b:Laqj;

    invoke-virtual {v2}, Laqj;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoj;->a(Ljava/lang/String;Ljava/util/ArrayList;)Laev;

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const-string v2, "ssds"

    invoke-static {v1, v2, v0}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Laev;)V

    .line 343
    iget-object v1, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v1

    invoke-virtual {v1}, Ladp;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    sget-object v1, Laew;->e:Laew;

    iput-object v1, v0, Laev;->h:Laew;

    .line 345
    iget-object v1, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b(Laev;)V

    .line 346
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ladp;->b(J)V

    .line 347
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladp;->c(Ljava/lang/String;)V

    .line 349
    :cond_1
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Laqa;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Ljava/lang/String;I)V

    .line 379
    return-void
.end method
