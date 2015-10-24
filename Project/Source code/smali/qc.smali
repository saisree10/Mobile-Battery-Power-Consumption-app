.class Lqc;
.super Ljava/lang/Object;
.source "ToolboxClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lqb;


# direct methods
.method constructor <init>(Lqb;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lqc;->b:Lqb;

    iput p2, p0, Lqc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lqc;->b:Lqb;

    invoke-static {v0}, Lqb;->a(Lqb;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lqc;->b:Lqb;

    invoke-static {v0}, Lqb;->b(Lqb;)Lpo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lqc;->b:Lqb;

    iget-object v1, p0, Lqc;->b:Lqb;

    invoke-static {v1}, Lqb;->c(Lqb;)Lpo;

    move-result-object v1

    invoke-static {v0, v1}, Lqb;->a(Lqb;Lpo;)Lpo;

    .line 280
    :cond_1
    iget-object v0, p0, Lqc;->b:Lqb;

    invoke-static {v0}, Lqb;->b(Lqb;)Lpo;

    move-result-object v0

    iget v1, p0, Lqc;->a:I

    invoke-virtual {v0, v1}, Lpo;->a(I)V

    .line 281
    iget-object v0, p0, Lqc;->b:Lqb;

    invoke-static {v0}, Lqb;->b(Lqb;)Lpo;

    move-result-object v0

    invoke-virtual {v0}, Lpo;->show()V

    goto :goto_0
.end method
