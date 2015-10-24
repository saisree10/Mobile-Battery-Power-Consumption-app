.class Lkb;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Liv;


# instance fields
.field final synthetic a:Ljv;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lka;


# direct methods
.method constructor <init>(Lka;Ljv;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lkb;->d:Lka;

    iput-object p2, p0, Lkb;->a:Ljv;

    iput p3, p0, Lkb;->b:I

    iput-boolean p4, p0, Lkb;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lkb;->a:Ljv;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lkb;->a:Ljv;

    invoke-interface {v0}, Ljv;->d()V

    .line 443
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update found before download, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkb;->d:Lka;

    invoke-static {v2}, Lka;->a(Lka;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    iget-object v0, p0, Lkb;->d:Lka;

    iget-object v1, p0, Lkb;->d:Lka;

    invoke-static {v1}, Lka;->a(Lka;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkb;->a:Ljv;

    iget v3, p0, Lkb;->b:I

    iget-boolean v4, p0, Lkb;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lka;->a(Lka;Ljava/lang/String;Ljv;IZ)V

    .line 454
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "UpdateManager"

    const-string v1, "No update available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v0, p0, Lkb;->a:Ljv;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lkb;->a:Ljv;

    invoke-interface {v0}, Ljv;->d()V

    .line 463
    :cond_1
    return-void
.end method
