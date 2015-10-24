.class final Lbam;
.super Ljava/lang/Object;
.source "StatsReportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lbam;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    const-string v1, "status"

    const-string v2, "b"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 270
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->j(Landroid/content/Context;)V

    .line 271
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->k(Landroid/content/Context;)V

    .line 272
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->l(Landroid/content/Context;)V

    .line 273
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->m(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->n(Landroid/content/Context;)V

    .line 275
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->i(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->o(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lbal;->g(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lbam;->a:Landroid/content/Context;

    invoke-static {v0}, Lzc;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
