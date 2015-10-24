.class Lqd;
.super Ljava/lang/Object;
.source "ToolboxClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqb;


# direct methods
.method constructor <init>(Lqb;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lqd;->a:Lqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lqd;->a:Lqb;

    invoke-static {v0}, Lqb;->a(Lqb;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lqd;->a:Lqb;

    invoke-static {v0}, Lqb;->b(Lqb;)Lpo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lqd;->a:Lqb;

    invoke-static {v0}, Lqb;->b(Lqb;)Lpo;

    move-result-object v0

    invoke-virtual {v0}, Lpo;->dismiss()V

    goto :goto_0
.end method
