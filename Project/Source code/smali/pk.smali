.class Lpk;
.super Ljava/lang/Object;
.source "BaseClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lpj;


# direct methods
.method constructor <init>(Lpj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lpk;->b:Lpj;

    iput p2, p0, Lpk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lpk;->b:Lpj;

    invoke-static {v0}, Lpj;->a(Lpj;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lpk;->b:Lpj;

    invoke-static {v0}, Lpj;->b(Lpj;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lpk;->b:Lpj;

    iget-object v1, p0, Lpk;->b:Lpj;

    invoke-static {v1}, Lpj;->a(Lpj;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lpk;->a:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lpj;->a(Lpj;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 80
    :cond_1
    iget-object v0, p0, Lpk;->b:Lpj;

    invoke-static {v0}, Lpj;->b(Lpj;)Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lpk;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 81
    iget-object v0, p0, Lpk;->b:Lpj;

    invoke-static {v0}, Lpj;->b(Lpj;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
