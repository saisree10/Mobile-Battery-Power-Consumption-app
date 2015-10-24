.class Lnp;
.super Ljava/lang/Object;
.source "BaiduDataPuller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lod;

.field final synthetic b:Lno;


# direct methods
.method constructor <init>(Lno;Lod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lnp;->b:Lno;

    iput-object p2, p0, Lnp;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lnp;->b:Lno;

    iget-object v1, p0, Lnp;->a:Lod;

    invoke-static {v0, v1}, Lno;->a(Lno;Lod;)V

    .line 57
    return-void
.end method
