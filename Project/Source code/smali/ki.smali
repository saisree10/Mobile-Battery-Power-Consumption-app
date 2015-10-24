.class Lki;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "UpdateManager.java"


# instance fields
.field final synthetic a:Lka;


# direct methods
.method constructor <init>(Lka;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lki;->a:Lka;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 790
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInstalled, returnCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    return-void
.end method
