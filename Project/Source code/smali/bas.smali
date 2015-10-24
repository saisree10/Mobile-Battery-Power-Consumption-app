.class public Lbas;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "AsyncBitmapDrawable.java"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/dianxinos/powermanager/PowerMangerApplication;

.field private c:Lbbk;

.field private d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 21
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    iput-object v0, p0, Lbas;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    .line 22
    iput-object p1, p0, Lbas;->a:Ljava/lang/String;

    .line 23
    invoke-static {}, Lbbk;->a()Lbbk;

    move-result-object v0

    iput-object v0, p0, Lbas;->c:Lbbk;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lbas;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbas;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbas;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Lbbc;

    move-result-object v0

    sget-object v1, Lbbc;->c:Lbbc;

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lbas;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbn;->a(Z)Z

    .line 39
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lbbn;

    iget-object v1, p0, Lbas;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    iget-object v2, p0, Lbas;->a:Ljava/lang/String;

    iget-object v3, p0, Lbas;->c:Lbbk;

    invoke-direct {v0, v1, p1, v2, v3}, Lbbn;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lbbk;)V

    .line 29
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lbas;->d:Ljava/lang/ref/WeakReference;

    .line 30
    const-string v1, "AsyncBitmapDrawable"

    const-string v2, "async exec"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lbbn;->c([Ljava/lang/Object;)Lbat;

    .line 32
    return-void
.end method
