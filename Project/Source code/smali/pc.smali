.class final Lpc;
.super Ljava/lang/Object;
.source "ToolboxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lpc;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lpc;->a:Landroid/content/Context;

    invoke-static {v0}, Lnl;->a(Landroid/content/Context;)Lnl;

    move-result-object v0

    invoke-virtual {v0}, Lnl;->c()V

    .line 356
    iget-object v0, p0, Lpc;->a:Landroid/content/Context;

    invoke-static {v0}, Lpa;->a(Landroid/content/Context;)Lpa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpa;->a(Lpa;Z)V

    .line 357
    return-void
.end method
